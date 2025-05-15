import subprocess
import sys

def query_llm(prompt: str):
    result = subprocess.run(
        ["ollama", "run", "qwen:3b"],
        input=prompt.encode(),
        stdout=subprocess.PIPE
    )
    return result.stdout.decode()

if __name__ == "__main__":
    if len(sys.argv) != 3 or sys.argv[1] not in ["--analyze", "--generate-tests"]:
        print("Uso: python mcp_assist.py --analyze archivo.py")
        sys.exit(1)

    with open(sys.argv[2], "r", encoding="utf-8") as f:
        code = f.read()

    if sys.argv[1] == "--analyze":
        prompt = f"Analiza el siguiente código y sugiere mejoras:
{code}"
    else:
        prompt = f"Genera pruebas unitarias para el siguiente código Python:
{code}"

    print(query_llm(prompt))
