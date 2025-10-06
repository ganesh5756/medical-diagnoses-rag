# Medical Diagnoses RAG System

A Retrieval-Augmented Generation (RAG) system for medical diagnoses using the Merck Manual as a knowledge base to assist healthcare professionals with diagnostic and treatment information.

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Problem Statement](#problem-statement)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Architecture](#architecture)
- [Data Source](#data-source)
- [Key Components](#key-components)
- [Sample Queries](#sample-queries)
- [Evaluation](#evaluation)
- [Contributing](#contributing)
- [License](#license)

## 🔍 Project Overview

This project addresses critical challenges in healthcare by developing a RAG-based AI solution that leverages renowned medical manuals to support healthcare professionals in making informed decisions. The system helps streamline access to medical knowledge, provides quick diagnostic assistance, and enhances efficiency in clinical decision-making.

## 🎯 Problem Statement

### Business Context

The healthcare industry faces significant challenges:

- **Information Overload**: Healthcare professionals struggle with vast volumes of medical data
- **Time Constraints**: Need for quick access to reliable medical information, especially in emergency situations
- **Decision Support**: Requirement for accurate, up-to-date medical knowledge for informed decision-making
- **Efficiency**: Streamlining diagnostic processes while maintaining high standards of care

### Common Questions Addressed

1. **Diagnostic Assistance**: "What are the common symptoms and treatments for pulmonary embolism?"
2. **Drug Information**: "Can you provide the trade names of medications used for treating hypertension?"
3. **Treatment Plans**: "What are the first-line options and alternatives for managing rheumatoid arthritis?"
4. **Specialty Knowledge**: "What are the diagnostic steps for suspected endocrine disorders?"
5. **Critical Care Protocols**: "What is the protocol for managing sepsis in a critical care unit?"

## ✨ Features

- **RAG-based Question Answering**: Advanced retrieval and generation system for medical queries
- **Merck Manual Integration**: Comprehensive medical knowledge base with 4,000+ pages across 23 sections
- **Multi-approach Testing**: Comparison between basic LLM responses, prompt-engineered responses, and RAG-enhanced responses
- **Evaluation Framework**: Built-in groundedness and relevance evaluation for response quality
- **Local LLM Support**: Uses llama-cpp-python for local model deployment
- **Vector Database**: ChromaDB for efficient document retrieval
- **Semantic Search**: Sentence transformer embeddings for accurate document matching

## 🚀 Installation

### Prerequisites

- Python 3.8+
- Sufficient RAM for local LLM (recommended 8GB+)
- Optional: GPU support for faster inference

### Dependencies

```bash
# Core dependencies
pip install huggingface_hub pandas tiktoken pymupdf langchain langchain-community chromadb sentence-transformers numpy

# For GPU support (CUDA)
CMAKE_ARGS="-DLLAMA_CUBLAS=on" FORCE_CMAKE=1 pip install llama-cpp-python --force-reinstall --no-cache-dir

# For CPU only
CMAKE_ARGS="-DLLAMA_CUBLAS=off" FORCE_CMAKE=1 pip install llama-cpp-python --force-reinstall --no-cache-dir

# For Apple Silicon (Metal)
CMAKE_ARGS="-DLLAMA_METAL=on" pip install --force-reinstall --no-cache-dir llama-cpp-python
```

## 📖 Usage

### Basic Setup

1. **Load the notebook**: Open `Full_Code_NLP_RAG_Local.ipynb` in your Jupyter environment
2. **Install dependencies**: Run the installation cells
3. **Download model**: The notebook will guide you through downloading the required LLM
4. **Load data**: Load the Merck Manual PDF for processing

### Running Queries

The system supports three approaches:

1. **Basic LLM Response**:
   ```python
   response = response(query, max_tokens=128, temperature=0)
   ```

2. **Prompt-Engineered Response**:
   Enhanced with structured prompts for better medical context

3. **RAG-Enhanced Response**:
   ```python
   response = generate_rag_response(user_input, k=3, max_tokens=128)
   ```

## 🏗️ Architecture

### System Components

1. **Document Loading**: PyMuPDF for PDF processing
2. **Text Chunking**: Recursive character text splitter for optimal chunk sizes
3. **Embeddings**: SentenceTransformer embeddings for semantic similarity
4. **Vector Store**: ChromaDB for efficient retrieval
5. **LLM**: Local llama-cpp-python model for generation
6. **Evaluation**: Groundedness and relevance scoring

### Data Flow

```
PDF Document → Text Chunks → Embeddings → Vector Database → Retrieval → LLM → Response
```

## 📚 Data Source

**The Merck Manuals**: Comprehensive medical references covering:
- Medical disorders and conditions
- Diagnostic procedures and tests
- Treatment protocols and medications
- Drug information and interactions
- Clinical guidelines and best practices

The manual contains over 4,000 pages divided into 23 specialized medical sections, published continuously since 1899.

## 🔧 Key Components

### Document Processing
- **Text Splitter**: Configurable chunk sizes for optimal retrieval
- **Metadata Preservation**: Maintains source information for traceability

### Retrieval System
- **Semantic Search**: Advanced embedding-based similarity matching
- **Configurable K**: Adjustable number of retrieved documents
- **Context Aggregation**: Intelligent combining of multiple document chunks

### Generation Pipeline
- **Template System**: Structured prompts for consistent responses
- **Parameter Control**: Adjustable temperature, top-p, and top-k parameters
- **Error Handling**: Robust error management and fallback responses

## 🔍 Sample Queries

The system is designed to handle various medical queries:

1. **Emergency Protocols**: Sepsis management in critical care
2. **Diagnostic Procedures**: Appendicitis symptoms and treatment
3. **Dermatological Issues**: Hair loss causes and treatments
4. **Neurological Conditions**: Brain injury treatment protocols
5. **Orthopedic Care**: Fracture management and recovery

## 📊 Evaluation

The system includes comprehensive evaluation metrics:

- **Groundedness**: Measures how well responses are supported by source documents
- **Relevance**: Evaluates response relevance to the original query
- **Comparison Framework**: Benchmarks RAG performance against baseline approaches

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Merck & Co.** for providing comprehensive medical references
- **Hugging Face** for model hosting and tooling
- **LangChain** for RAG framework components
- **ChromaDB** for vector database capabilities

## 📞 Support

For questions, issues, or contributions, please open an issue in the GitHub repository or contact the development team.

---

*This project is designed for educational and research purposes. Always consult qualified healthcare professionals for medical advice and treatment decisions.*