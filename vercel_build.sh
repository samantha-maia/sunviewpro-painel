#!/bin/bash

# Baixa o Flutter se não existir
if [ -d "flutter" ]; then
    echo "Flutter directory exists, fetching latest..."
    cd flutter && git pull && cd ..
else
    echo "Cloning Flutter..."
    git clone https://github.com/flutter/flutter.git -b stable --depth 1
fi

# Adiciona o Flutter ao PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Verifica a instalação
echo "Running Flutter Doctor..."
flutter doctor

# Instala dependências
echo "Getting dependencies..."
flutter pub get

# Compila para web
echo "Building Web..."
flutter build web --release --no-tree-shake-icons
