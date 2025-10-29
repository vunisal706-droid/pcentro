#!/bin/bash

# Script de despliegue para GitHub Pages
# Plan de Centro - CEIP Capitulaciones

echo "🚀 Desplegando Plan de Centro en GitHub Pages..."
echo ""

# Verificar archivos necesarios
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html no encontrado"
    exit 1
fi

if [ ! -f "pe.pdf" ]; then
    echo "❌ Error: pe.pdf no encontrado"
    exit 1
fi

if [ ! -f "rof.pdf" ]; then
    echo "❌ Error: rof.pdf no encontrado"
    exit 1
fi

if [ ! -f "prgestion.pdf" ]; then
    echo "❌ Error: prgestion.pdf no encontrado"
    exit 1
fi

echo "✅ Todos los archivos necesarios están presentes"
echo ""

# Inicializar repositorio si no existe
if [ ! -d ".git" ]; then
    echo "📦 Inicializando repositorio Git..."
    git init
    git branch -M main
fi

# Añadir archivos
echo "📝 Añadiendo archivos al commit..."
git add index.html pe.pdf rof.pdf prgestion.pdf README.md .gitignore

# Commit
echo "💾 Creando commit..."
read -p "Mensaje del commit (Enter para usar mensaje por defecto): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Actualizar Plan de Centro - $(date '+%Y-%m-%d %H:%M')"
fi
git commit -m "$commit_msg"

# Push
echo "🌐 Subiendo a GitHub..."
echo "URL del repositorio: https://github.com/vunisal706-droid/pcentro.git"

# Verificar si ya existe el remote
if git remote | grep -q origin; then
    git push origin main
else
    git remote add origin https://github.com/vunisal706-droid/pcentro.git
    git push -u origin main
fi

echo ""
echo "✨ ¡Despliegue completado!"
echo "🌍 Tu sitio estará disponible en: https://vunisal706-droid.github.io/pcentro/"
echo "⏱️  Puede tardar 1-2 minutos en actualizarse"
echo ""
