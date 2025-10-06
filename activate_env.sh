#!/bin/bash

# Medical Diagnoses RAG - Environment Setup Script

echo "🏥 Medical Diagnoses RAG Environment Setup"
echo "=========================================="

# Check if virtual environment exists
if [ ! -d ".venv" ]; then
    echo "❌ Virtual environment not found. Please run: python3 -m venv .venv"
    exit 1
fi

# Activate virtual environment
echo "🔄 Activating virtual environment..."
source .venv/bin/activate

# Verify activation
if [ "$VIRTUAL_ENV" != "" ]; then
    echo "✅ Virtual environment activated: $VIRTUAL_ENV"
    echo "🐍 Python version: $(python --version)"
    echo "📦 Pip version: $(pip --version)"
    
    # Check if requirements are installed
    if pip list | grep -q "langchain"; then
        echo "✅ Dependencies appear to be installed"
    else
        echo "⚠️  Dependencies may not be installed. Run: pip install -r requirements.txt"
    fi
    
    echo ""
    echo "🚀 Environment ready! You can now:"
    echo "   • Run Jupyter: jupyter lab"
    echo "   • Install llama-cpp-python: see README.md for platform-specific instructions"
    echo "   • Open the notebook: Full_Code_NLP_RAG_Local.ipynb"
    echo ""
    echo "💡 To deactivate later, run: deactivate"
else
    echo "❌ Failed to activate virtual environment"
    exit 1
fi