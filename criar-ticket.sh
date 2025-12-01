#!/usr/bin/env bash

# Uso:
#   ./criar-ticket.sh 5678 correcao-erro-x
#
# Vai criar:
#   sustentacao/MANTIS-5678-correcao-erro-x/
# e copiar todos os arquivos docs/MANTIS-1234-*,
# renomeando o prefixo MANTIS-1234 -> MANTIS-5678.

set -e

TEMPLATE_PREFIX="MANTIS-1234"

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Uso: $0 XXXX descricao-kebab-case"
  exit 1
fi

TICKET="MANTIS-$1"        # ex: MANTIS-5678
SLUG="$2"          # ex: correcao-erro-x

TARGET_DIR="sustentacao/${TICKET}-${SLUG}"

echo ">> Criando pasta: ${TARGET_DIR}"
mkdir -p "$TARGET_DIR"

echo ">> Copiando arquivos de docs/${TEMPLATE_PREFIX}-* para ${TARGET_DIR}"
for f in docs/${TEMPLATE_PREFIX}-*; do
  [ -e "$f" ] || continue
  base="$(basename "$f")"
  newname="${base/$TEMPLATE_PREFIX/$TICKET}"
  echo "   - $base  ->  $newname"
  cp "$f" "${TARGET_DIR}/${newname}"
done

echo ">> Concluído."
echo "Pasta criada: ${TARGET_DIR}"
