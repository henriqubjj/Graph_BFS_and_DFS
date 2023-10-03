# Makefile for Python project

# Comandos
PYTHON = python3

# Arquivos fonte e de teste
SRC_FILES = graph.py main.py
TEST_FILES = pcv4.txt pcv10.txt pcv50.txt pcv177.txt

# Alvo padrão
all: run

# Executa o programa principal
run: $(SRC_FILES) $(TEST_FILES)
	$(PYTHON) main.py

# Limpa arquivos temporários e resultados
clean:
	rm -rf __pycache__ *.pyc

# Limpa tudo, incluindo arquivos gerados
distclean: clean
	rm -rf *.txt

# Alvos phony
.PHONY: all run clean distclean
