#!/bin/bash

# Additional personal setup script for devcontainers
# This runs after the main dotfiles installation

echo "🔧 Running additional setup..."

echo "Installing Claude..."
curl -fsSL https://claude.ai/install.sh | bash

echo "Installing Claude..."
npm install -g @google/gemini-cli

echo "✅ Additional personal setup complete!"
echo "💡 Your workspace is ready at ~/workspace/"
