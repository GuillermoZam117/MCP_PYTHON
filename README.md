# MCP Python Dev

Este repositorio contiene un entorno Docker completo para desarrollo en Python asistido por un modelo de lenguaje (LLM) local usando Ollama y Qwen 3B.

## Requisitos

- Docker instalado
- Modelo `qwen:3b` descargado (se hace automáticamente en el Dockerfile)

## Uso

### Construcción del contenedor

```bash
make run
```

### Análisis de código

```bash
python mcp_assist.py --analyze app/utils.py
```

### Generación de pruebas

```bash
python mcp_assist.py --generate-tests app/main.py
```
