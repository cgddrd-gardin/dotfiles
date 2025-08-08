#!/bin/bash

# Personal dotfiles installation script for devcontainers
# Auto-applied when creating new devcontainers

set -e

echo "🚀 Setting up personal devcontainer customizations.."

code_path="$(ls ~/.vscode-server*/bin/*/bin/code-server* 2>/dev/null | head -n 1)"
if [ -z "$code_path" ]; then
    code_path="$(ls ~/.cursor-server*/bin/*/bin/cursor-server* 2>/dev/null | head -n 1)"
fi
export code="$code_path"
$code --version

# Install additional VS Code extensions
if [ -f ~/dotfiles/vscode/extensions.txt ]; then
    echo "📦 Installing personal VS Code extensions..."
    while IFS= read -r extension || [[ -n "$extension" ]]; do
        if [[ -n "$extension" && "$extension" != \#* ]]; then
            echo "  Installing: $extension"
            $code --install-extension "$extension" || echo "  ⚠️  Failed to install $extension"
        fi
    done < ~/dotfiles/vscode/extensions.txt
fi

# Run additional setup scripts
if [ -f ~/dotfiles/scripts/setup-personal.sh ]; then
    echo "🔧 Running additional personal setup..."
    chmod +x ~/dotfiles/scripts/setup-personal.sh
    ~/dotfiles/scripts/setup-personal.sh
fi

echo "✅ Personal devcontainer setup complete!"
echo "💡 Restart your terminal or run 'source ~/.bashrc' to apply bash changes."
