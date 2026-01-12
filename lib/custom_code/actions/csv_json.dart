// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:file_picker/file_picker.dart';

Future<List<dynamic>> csvJson() async {
  final pick = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['csv'],
    withData: true,
  );

  if (pick == null || pick.files.isEmpty) return [];

  final bytes = pick.files.first.bytes;
  if (bytes == null) return [];

  // Decode (UTF-8 com fallback para Latin1)
  String content;
  try {
    content = utf8.decode(bytes);
  } catch (_) {
    content = latin1.decode(bytes);
  }

  // Normaliza linhas
  final lines = content
      .replaceAll('\r\n', '\n')
      .replaceAll('\r', '\n')
      .split('\n')
      .where((l) => l.trim().isNotEmpty)
      .toList();

  if (lines.isEmpty) return [];

  // Detecta separador (',' ou ';') olhando só o header
  final headerLine = lines.first;
  final commaCount = ','.allMatches(headerLine).length;
  final semiCount = ';'.allMatches(headerLine).length;
  final sep = (semiCount > commaCount) ? ';' : ',';

  // Normaliza textos (lowercase, sem acento, sem espaços duplicados)
  String norm(String s) {
    var t = s.trim().toLowerCase();

    // remove acentos comuns
    t = t
        .replaceAll('á', 'a')
        .replaceAll('à', 'a')
        .replaceAll('ã', 'a')
        .replaceAll('â', 'a')
        .replaceAll('é', 'e')
        .replaceAll('ê', 'e')
        .replaceAll('í', 'i')
        .replaceAll('ó', 'o')
        .replaceAll('ô', 'o')
        .replaceAll('õ', 'o')
        .replaceAll('ú', 'u')
        .replaceAll('ç', 'c');

    // normaliza separadores e espaços
    t = t.replaceAll(RegExp(r'[\s_]+'), ' ');
    return t;
  }

  // Parser de CSV com suporte a aspas e separador variável
  List<String> parseCsvLine(String line, String separator) {
    final out = <String>[];
    final sb = StringBuffer();
    bool inQuotes = false;

    for (int i = 0; i < line.length; i++) {
      final c = line[i];

      if (c == '"') {
        if (inQuotes && i + 1 < line.length && line[i + 1] == '"') {
          sb.write('"');
          i++;
        } else {
          inQuotes = !inQuotes;
        }
        continue;
      }

      if (c == separator && !inQuotes) {
        out.add(sb.toString().trim());
        sb.clear();
        continue;
      }

      sb.write(c);
    }
    out.add(sb.toString().trim());

    return out.map((v) {
      final t = v.trim();
      if (t.length >= 2 && t.startsWith('"') && t.endsWith('"')) {
        return t.substring(1, t.length - 1);
      }
      return t;
    }).toList();
  }

  // Lê cabeçalho
  final rawHeader = parseCsvLine(lines.first, sep);
  final header = rawHeader.map(norm).toList();

  // Aceita variações de nome de coluna
  int findIdx(List<String> candidates) {
    for (final c in candidates.map(norm)) {
      final idx = header.indexOf(c);
      if (idx != -1) return idx;
    }
    return -1;
  }

  // Seu CSV tem: tarefa, inicio, fim, responsavel
  // Mas vamos aceitar também: nome, data inicio, data fim, responsável, etc.
  final idxNome = findIdx([
    'nome',
    'tarefa',
    'atividade',
    'titulo',
    'title',
    'task',
  ]);

  final idxInicio = findIdx([
    'data inicio',
    'inicio',
    'data de inicio',
    'start',
    'start date',
    'data start',
  ]);

  final idxFim = findIdx([
    'data fim',
    'fim',
    'data de fim',
    'end',
    'end date',
    'data end',
  ]);

  final idxResponsavel = findIdx([
    'responsavel',
    'responsavel',
    'responsavel',
    'responsavel',
    'responsavel',
    'responsável',
    'responsavel',
    'owner',
    'responsible',
  ]);

  if (idxNome == -1 ||
      idxInicio == -1 ||
      idxFim == -1 ||
      idxResponsavel == -1) {
    debugPrint('CSV header encontrado: $rawHeader');
    debugPrint('CSV header normalizado: $header');
    debugPrint(
        'idxNome=$idxNome idxInicio=$idxInicio idxFim=$idxFim idxResp=$idxResponsavel');
    return [];
  }

  String getCol(List<String> cols, int idx) =>
      (idx >= 0 && idx < cols.length) ? cols[idx].trim() : '';

  final List<Map<String, dynamic>> items = [];

  for (int i = 1; i < lines.length; i++) {
    final cols = parseCsvLine(lines[i], sep);

    final nome = getCol(cols, idxNome);
    final dataInicio = getCol(cols, idxInicio);
    final dataFim = getCol(cols, idxFim);
    final responsavel = getCol(cols, idxResponsavel);

    // ignora linha totalmente vazia
    if (nome.isEmpty &&
        dataInicio.isEmpty &&
        dataFim.isEmpty &&
        responsavel.isEmpty) {
      continue;
    }

    items.add({
      'nome': nome,
      'dataInicio': dataInicio,
      'dataFim': dataFim,
      'responsavel': responsavel,
    });
  }

  return items;
}
