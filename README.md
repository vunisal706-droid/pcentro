# Plan de Centro - CEIP Capitulaciones

Visualizador interactivo del Plan de Centro del CEIP Capitulaciones (Santa Fe).

## 🌐 Demo en Vivo

**URL:** https://vunisal706-droid.github.io/pcentro/

## 📋 Contenido

La aplicación permite visualizar y navegar por los siguientes documentos:

- 📘 **Proyecto Educativo** (pe.pdf) - 15 secciones
- ⚖️ **Reglamento de Organización** (rof.pdf) - 10 secciones  
- 💼 **Proyecto de Gestión** (prgestion.pdf) - 6 secciones

## 🚀 Despliegue en GitHub Pages

### Archivos necesarios en el repositorio:

```
/pcentro/
├── index.html          # Aplicación web
├── pe.pdf              # Proyecto Educativo
├── rof.pdf             # Reglamento de Organización
├── prgestion.pdf       # Proyecto de Gestión
└── README.md           # Este archivo
```

### Pasos para desplegar:

1. **Crear el repositorio** (si no existe):
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Plan de Centro app"
   ```

2. **Conectar con GitHub**:
   ```bash
   git remote add origin https://github.com/vunisal706-droid/pcentro.git
   git branch -M main
   git push -u origin main
   ```

3. **Activar GitHub Pages**:
   - Ve a Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main` / `root`
   - Guardar

4. **Verificar el despliegue**:
   - La página estará disponible en: https://vunisal706-droid.github.io/pcentro/
   - Puede tardar 1-2 minutos

## 💻 Características

### ✨ Responsive Design
- **Móviles**: Menú lateral colapsable
- **Tablets**: Vista optimizada
- **Desktop**: Sidebar fijo con vista completa
- **Pizarras Digitales** (1600px+): Interfaz ampliada con textos más grandes
- **4K** (2000px+): Elementos extra grandes para máxima legibilidad

### 🎯 Funcionalidades
- Navegación rápida por secciones
- Indexación corregida (cada enlace va a la página exacta)
- Visualización de PDFs integrada
- Búsqueda visual por documentos
- Interfaz moderna y profesional

## 🛠️ Tecnologías

- HTML5
- CSS3 (Flexbox, Grid, Media Queries)
- JavaScript Vanilla
- PDF.js (integrado en navegadores)

## 📱 Compatibilidad

- ✅ Chrome / Edge (Recomendado)
- ✅ Firefox
- ✅ Safari
- ✅ Dispositivos móviles
- ✅ Pizarras digitales interactivas

## 🔧 Configuración para Pizarras Digitales

La aplicación detecta automáticamente pantallas grandes:

- **1600px - 1999px**: Interfaz ampliada (sidebar 380px)
- **2000px+**: Interfaz extra grande (sidebar 450px)

Los tamaños de fuente y espaciados se ajustan automáticamente para garantizar legibilidad en pizarras digitales.

## 📄 Licencia

Documento público del CEIP Capitulaciones - Santa Fe

## 👨‍💻 Mantenimiento

Para actualizar los PDFs:

1. Reemplaza los archivos PDF en el repositorio
2. Commit y push:
   ```bash
   git add *.pdf
   git commit -m "Actualizar PDFs del Plan de Centro"
   git push
   ```
3. GitHub Pages se actualizará automáticamente

---

**CEIP Capitulaciones** | Santa Fe | Granada
