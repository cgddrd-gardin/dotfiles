# Connor's Personal Dotfiles

Personal development environment configuration for VS Code devcontainers.

## What This Does

This repository contains personal customizations that are automatically applied to devcontainers:

- **VS Code Extensions**: Additional extensions for productivity and development
- **Development Tools**: Useful scripts and productivity shortcuts

## Structure

```
dotfiles/
├── install.sh                 # Main installation script (auto-run by VS Code)
├── vscode/
│   └── extensions.txt         # Additional VS Code extensions to install
└── scripts/
    └── setup-personal.sh     # Additional setup scripts
```

## Setup Instructions

1. Push this repository to GitHub (e.g., `connorgoddard/dotfiles`)

2. Add the following to your VS Code user settings (`settings.json`):
   ```json
   {
     "dotfiles.repository": "connorgoddard/dotfiles",
     "dotfiles.targetPath": "~/dotfiles", 
     "dotfiles.installCommand": "~/dotfiles/install.sh"
   }
   ```

3. Next time you create a devcontainer, your personal setup will be automatically applied!

## Features

### VS Code Extensions
- Additional productivity extensions
- Development tools and utilities
- Enhanced editing experience

### Development Tools
- Custom setup scripts
- Personal development environment configuration
- Automated installation and setup process

## Customization

Edit any of the configuration files to match your preferences:

- Add more VS Code extensions to `vscode/extensions.txt`
- Add custom setup steps to `scripts/setup-personal.sh`
- Modify the main installation script in `install.sh`

## How It Works

VS Code's dotfiles feature automatically:
1. Clones this repository to `~/dotfiles` in the container
2. Runs the `install.sh` script after container creation
3. Applies all your personal configurations
4. Keeps the shared team devcontainer configuration intact

This gives you the best of both worlds - a shared base configuration plus your personal customizations!
