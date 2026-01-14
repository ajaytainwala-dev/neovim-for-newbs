#!/bin/bash
# Quick Setup Script for Modernized Neovim

set -e

echo "🚀 Neovim Configuration Setup"
echo "=============================="
echo ""

# Check Neovim version
if ! command -v nvim &> /dev/null; then
    echo "❌ Neovim not found! Install it first:"
    echo "   macOS: brew install neovim"
    echo "   Linux: apt install neovim"
    echo "   Windows: choco install neovim"
    exit 1
fi

NVIM_VERSION=$(nvim --version | head -1 | cut -d' ' -f2)
echo "✅ Neovim version: $NVIM_VERSION"
echo "   (Required: 0.10+)"
echo ""

# Check for language tools
echo "📦 Checking optional dependencies..."
echo ""

if command -v node &> /dev/null; then
    echo "✅ Node.js found: $(node --version)"
else
    echo "⚠️  Node.js not found (needed for JS/TS)"
    echo "   Install: npm install -g typescript ts-node prettier"
fi

if command -v python3 &> /dev/null; then
    echo "✅ Python found: $(python3 --version)"
else
    echo "⚠️  Python not found (needed for Python LSP)"
    echo "   Install: pip install pyright black isort"
fi

if command -v git &> /dev/null; then
    echo "✅ Git found"
else
    echo "⚠️  Git not found (needed for git features)"
fi

echo ""
echo "🎯 Setup Complete!"
echo ""
echo "Next steps:"
echo "  1. Open Neovim: nvim"
echo "  2. Wait for plugins to install (first launch may take 10-30 seconds)"
echo "  3. Run: :Mason to install language servers"
echo "  4. Restart Neovim"
echo ""
echo "Tips:"
echo "  • Press <Space>? for keymap hints"
echo "  • Press <C-p> to find files"
echo "  • Press K on any symbol for docs"
echo "  • Type :checkhealth for diagnostics"
echo ""
echo "Documentation:"
echo "  • README.md - Full configuration guide"
echo "  • KEYMAPS.md - All keybindings"
echo "  • UPDATES.md - What was changed"
echo ""
echo "Happy coding! 🎉"
