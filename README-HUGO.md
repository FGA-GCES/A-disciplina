# Hugo Site Setup for GCES Course

This repository now includes a Hugo-based website for the "Gerência de Configuração e Evolução de Software" course, automatically deployed to GitHub Pages.

## 🚀 Live Site

The site is automatically deployed to: `https://fga-gces.github.io/A-disciplina/`

## 📁 Site Structure

```
├── content/
│   ├── _index.md           # Homepage
│   ├── cronograma/         # Schedule section
│   ├── slides/             # Slides section
│   └── projetos/           # Projects section
├── themes/PaperMod/        # Hugo theme (submodule)
├── .github/workflows/
│   └── hugo.yml            # GitHub Actions workflow
└── hugo.toml               # Hugo configuration
```

## 🛠 Local Development

### Option 1: Docker (Recommended)

#### Prerequisites
- Docker
- Docker Compose (optional but recommended)

#### Quick Start with Docker Compose
1. Clone the repository:
   ```bash
   git clone --recursive https://github.com/fga-gces/A-disciplina.git
   cd A-disciplina
   ```

2. Start the development server:
   ```bash
   docker-compose up hugo
   ```

3. Open your browser to `http://localhost:1313/A-disciplina/`

#### Docker Commands
```bash
# Build the Docker image
docker build -t gces-hugo .

# Run development server
docker run -p 1313:1313 -v $(pwd):/src gces-hugo

# Build production site
docker-compose --profile build up hugo-build
```

### Option 2: Native Hugo

#### Prerequisites
- Hugo Extended v0.146.0 or higher
- Git

#### Setup
1. Clone the repository with submodules:
   ```bash
   git clone --recursive https://github.com/fga-gces/A-disciplina.git
   ```

2. If you already cloned without submodules:
   ```bash
   git submodule update --init --recursive
   ```

3. Run the development server:
   ```bash
   hugo server --buildDrafts
   ```

4. Open your browser to `http://localhost:1313/A-disciplina/`

### Adding Content

#### New Page
```bash
hugo new content/section-name/page-name.md
```

#### New Section
1. Create directory: `content/new-section/`
2. Add `_index.md` file with frontmatter
3. Update navigation in `hugo.toml` if needed

## 🔧 Configuration

### Site Settings
Edit `hugo.toml` to modify:
- Site title and description
- Navigation menu
- Theme parameters
- Social links

### Theme Customization
The site uses the PaperMod theme. Customize by:
- Modifying `hugo.toml` parameters
- Adding custom CSS in `assets/css/`
- Overriding layouts in `layouts/`

## 🚀 Deployment

### Automatic Deployment
The site automatically deploys to GitHub Pages when you:
1. Push changes to the `main` or `master` branch
2. The GitHub Actions workflow builds and deploys the site

### Manual Deployment
To deploy manually:
```bash
hugo --gc --minify
```

## 📋 GitHub Pages Setup

1. Go to repository Settings → Pages
2. Set Source to "GitHub Actions"
3. The workflow will handle the rest automatically

## 🎨 Theme Features

The PaperMod theme includes:
- Responsive design
- Dark/light mode toggle
- Search functionality
- Social media links
- Reading time estimates
- Table of contents
- Code syntax highlighting

## 📝 Content Guidelines

### Frontmatter
All content files should include:
```yaml
---
title: "Page Title"
date: 2025-08-14
draft: false
---
```

### File Organization
- Use descriptive filenames
- Organize content in logical sections
- Keep related files together

## 🔗 Navigation

The main navigation is configured in `hugo.toml`:
- **Início** - Homepage
- **Cronograma** - Class schedule
- **Slides** - Lecture slides
- **Projetos** - Course projects

## 📚 Course Content Integration

The site integrates existing course materials:
- Course schedule from README.md
- Slides from the `/slides` directory
- Project information from various markdown files
- Teaching plans and evaluation criteria

## 🐳 Docker Benefits

Using Docker for development provides several advantages:

- **Consistent Environment**: Same Hugo version across all development machines
- **No Local Dependencies**: No need to install Hugo locally
- **Easy Setup**: One command to start development
- **Isolation**: Doesn't interfere with other projects
- **Cross-Platform**: Works on Windows, macOS, and Linux

### Docker Development Workflow

1. **Start Development**:
   ```bash
   docker-compose up hugo
   ```

2. **Make Changes**: Edit content files - changes are automatically reflected

3. **Build for Production**:
   ```bash
   docker-compose --profile build up hugo-build
   ```

4. **Stop Development Server**:
   ```bash
   docker-compose down
   ```

## 🛡 Maintenance

### Regular Tasks
- Update Hugo version as needed (update Dockerfile)
- Keep theme submodule updated
- Review and update content regularly
- Monitor GitHub Actions for deployment issues
- Rebuild Docker image when Hugo version changes

### Troubleshooting

#### Docker Issues
- **Port already in use**: 
  - Stop existing Hugo server: `pkill -f "hugo server"`
  - Or use different port: Change `1313:1313` to `1314:1313` in docker-compose.yml
  - Access at: `http://localhost:1314/A-disciplina/`
- **Container won't start**: Check if port 1313 is already in use
- **Theme not loading**: Ensure git submodules are initialized
- **Permission issues**: 
  - Restart Docker Desktop
  - Check file permissions in mounted volumes
  - On Linux, try with `sudo`
- **Build fails**: Check Docker logs with `docker-compose logs hugo`

#### General Issues
- Check Hugo version compatibility
- Verify submodule initialization
- Review GitHub Actions logs for deployment issues
- Ensure proper frontmatter in content files

## 📞 Support

For technical issues with the site:
1. Check GitHub Actions workflow logs
2. Verify Hugo configuration
3. Test locally before pushing changes
4. Review Hugo documentation: https://gohugo.io/

---

**Note**: This Hugo site complements the existing course repository and provides a user-friendly web interface for accessing course materials.
