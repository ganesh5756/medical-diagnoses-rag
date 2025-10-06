#!/bin/bash

# Medical Diagnoses RAG - Commands Reference
# ==========================================
# This file contains all the essential commands for setting up and running
# the Medical Diagnoses RAG system.

echo "🏥 Medical Diagnoses RAG - Commands Reference"
echo "=============================================="

# ==============================================================================
# INITIAL SETUP COMMANDS
# ==============================================================================

setup_project() {
    echo "📋 INITIAL PROJECT SETUP"
    echo "------------------------"
    
    echo "1. Clone repository (if not already done):"
    echo "   git clone <repository-url>"
    echo "   cd medical-diagnoses-rag"
    echo ""
    
    echo "2. Create Python virtual environment:"
    echo "   python3 -m venv .venv"
    echo ""
    
    echo "3. Activate virtual environment:"
    echo "   source .venv/bin/activate"
    echo "   # On Windows: .venv\\Scripts\\activate"
    echo ""
    
    echo "4. Install basic dependencies:"
    echo "   pip install -r requirements.txt"
    echo ""
}

# ==============================================================================
# LLAMA-CPP-PYTHON INSTALLATION (Platform Specific)
# ==============================================================================

install_llama_cpp() {
    echo "🦙 LLAMA-CPP-PYTHON INSTALLATION"
    echo "--------------------------------"
    
    echo "Choose based on your system:"
    echo ""
    
    echo "For GPU support (CUDA):"
    echo "   CMAKE_ARGS=\"-DLLAMA_CUBLAS=on\" FORCE_CMAKE=1 pip install llama-cpp-python --force-reinstall --no-cache-dir"
    echo ""
    
    echo "For CPU only:"
    echo "   CMAKE_ARGS=\"-DLLAMA_CUBLAS=off\" FORCE_CMAKE=1 pip install llama-cpp-python --force-reinstall --no-cache-dir"
    echo ""
    
    echo "For Apple Silicon (Metal):"
    echo "   CMAKE_ARGS=\"-DLLAMA_METAL=on\" pip install --force-reinstall --no-cache-dir llama-cpp-python"
    echo ""
}

# ==============================================================================
# ENVIRONMENT MANAGEMENT
# ==============================================================================

env_commands() {
    echo "🌍 ENVIRONMENT MANAGEMENT"
    echo "------------------------"
    
    echo "Activate virtual environment:"
    echo "   source .venv/bin/activate"
    echo "   # Or use: ./activate_env.sh"
    echo ""
    
    echo "Deactivate virtual environment:"
    echo "   deactivate"
    echo ""
    
    echo "Check Python version:"
    echo "   python --version"
    echo ""
    
    echo "Check installed packages:"
    echo "   pip list"
    echo ""
    
    echo "Check environment details:"
    echo "   which python"
    echo "   echo \$VIRTUAL_ENV"
    echo ""
    
    echo "Update pip:"
    echo "   pip install --upgrade pip"
    echo ""
}

# ==============================================================================
# JUPYTER NOTEBOOK COMMANDS
# ==============================================================================

jupyter_commands() {
    echo "📓 JUPYTER NOTEBOOK COMMANDS"
    echo "----------------------------"
    
    echo "Start Jupyter Lab:"
    echo "   jupyter lab"
    echo ""
    
    echo "Start Jupyter Notebook:"
    echo "   jupyter notebook"
    echo ""
    
    echo "List running servers:"
    echo "   jupyter server list"
    echo ""
    
    echo "Stop all servers:"
    echo "   jupyter server stop"
    echo ""
    
    echo "Install Jupyter kernel:"
    echo "   python -m ipykernel install --user --name=medical-rag --display-name=\"Medical RAG\""
    echo ""
}

# ==============================================================================
# DEVELOPMENT COMMANDS
# ==============================================================================

dev_commands() {
    echo "⚙️ DEVELOPMENT COMMANDS"
    echo "----------------------"
    
    echo "Run Python script:"
    echo "   python script_name.py"
    echo ""
    
    echo "Check Python syntax:"
    echo "   python -m py_compile script_name.py"
    echo ""
    
    echo "Format code with black (if installed):"
    echo "   black *.py"
    echo ""
    
    echo "Run tests (if pytest installed):"
    echo "   pytest"
    echo ""
    
    echo "Generate requirements file:"
    echo "   pip freeze > requirements.txt"
    echo ""
}

# ==============================================================================
# GIT COMMANDS
# ==============================================================================

git_commands() {
    echo "📚 GIT COMMANDS"
    echo "--------------"
    
    echo "Check git status:"
    echo "   git status"
    echo ""
    
    echo "Add files to staging:"
    echo "   git add ."
    echo "   git add filename.py"
    echo ""
    
    echo "Commit changes:"
    echo "   git commit -m \"Your commit message\""
    echo ""
    
    echo "Push to remote:"
    echo "   git push origin main"
    echo ""
    
    echo "Pull latest changes:"
    echo "   git pull origin main"
    echo ""
    
    echo "Create new branch:"
    echo "   git checkout -b feature-name"
    echo ""
    
    echo "Switch branches:"
    echo "   git checkout branch-name"
    echo ""
}

# ==============================================================================
# PROJECT SPECIFIC COMMANDS
# ==============================================================================

project_commands() {
    echo "🎯 PROJECT SPECIFIC COMMANDS"
    echo "----------------------------"
    
    echo "Download Hugging Face models (example):"
    echo "   huggingface-cli download microsoft/DialoGPT-medium"
    echo ""
    
    echo "Check ChromaDB version:"
    echo "   python -c \"import chromadb; print(chromadb.__version__)\""
    echo ""
    
    echo "Test LangChain installation:"
    echo "   python -c \"import langchain; print('LangChain installed successfully')\""
    echo ""
    
    echo "Test sentence transformers:"
    echo "   python -c \"from sentence_transformers import SentenceTransformer; print('Sentence Transformers working')\""
    echo ""
    
    echo "Check tiktoken:"
    echo "   python -c \"import tiktoken; print('Tiktoken installed')\""
    echo ""
}

# ==============================================================================
# TROUBLESHOOTING COMMANDS
# ==============================================================================

troubleshooting() {
    echo "🔧 TROUBLESHOOTING COMMANDS"
    echo "--------------------------"
    
    echo "Clear pip cache:"
    echo "   pip cache purge"
    echo ""
    
    echo "Reinstall package:"
    echo "   pip uninstall package-name"
    echo "   pip install package-name"
    echo ""
    
    echo "Check for conflicts:"
    echo "   pip check"
    echo ""
    
    echo "Show package info:"
    echo "   pip show package-name"
    echo ""
    
    echo "Create new clean environment:"
    echo "   rm -rf .venv"
    echo "   python3 -m venv .venv"
    echo "   source .venv/bin/activate"
    echo "   pip install -r requirements.txt"
    echo ""
    
    echo "Check disk space:"
    echo "   df -h"
    echo ""
    
    echo "Check memory usage:"
    echo "   free -h  # Linux"
    echo "   vm_stat  # macOS"
    echo ""
}

# ==============================================================================
# QUICK REFERENCE
# ==============================================================================

quick_reference() {
    echo "⚡ QUICK REFERENCE"
    echo "----------------"
    
    echo "Daily workflow:"
    echo "1. cd /path/to/medical-diagnoses-rag"
    echo "2. ./activate_env.sh  # or source .venv/bin/activate"
    echo "3. jupyter lab"
    echo "4. Open Full_Code_NLP_RAG_Local.ipynb"
    echo "5. Work on your project"
    echo "6. deactivate  # when done"
    echo ""
    
    echo "Emergency reset:"
    echo "   rm -rf .venv && python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt"
    echo ""
}

# ==============================================================================
# MAIN MENU
# ==============================================================================

show_menu() {
    echo ""
    echo "Select a category to view commands:"
    echo "1. Initial Setup"
    echo "2. Llama-cpp-python Installation"
    echo "3. Environment Management"
    echo "4. Jupyter Notebook Commands"
    echo "5. Development Commands"
    echo "6. Git Commands"
    echo "7. Project Specific Commands"
    echo "8. Troubleshooting"
    echo "9. Quick Reference"
    echo "0. Show all commands"
    echo ""
    echo "Usage: ./commands.sh [number]"
    echo "Example: ./commands.sh 1"
    echo ""
}

# ==============================================================================
# MAIN EXECUTION
# ==============================================================================

case "${1:-menu}" in
    "1"|"setup")
        setup_project
        ;;
    "2"|"llama")
        install_llama_cpp
        ;;
    "3"|"env")
        env_commands
        ;;
    "4"|"jupyter")
        jupyter_commands
        ;;
    "5"|"dev")
        dev_commands
        ;;
    "6"|"git")
        git_commands
        ;;
    "7"|"project")
        project_commands
        ;;
    "8"|"troubleshoot")
        troubleshooting
        ;;
    "9"|"quick")
        quick_reference
        ;;
    "0"|"all")
        setup_project
        echo ""
        install_llama_cpp
        echo ""
        env_commands
        echo ""
        jupyter_commands
        echo ""
        dev_commands
        echo ""
        git_commands
        echo ""
        project_commands
        echo ""
        troubleshooting
        echo ""
        quick_reference
        ;;
    "menu"|*)
        show_menu
        ;;
esac