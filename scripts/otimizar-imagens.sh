#!/usr/bin/env bash
# Gera versões WebP (480, 960 e 1600 px, sem ampliar) de cada JPG/PNG em assets/img
# e registra larguras e alturas em _data/imagens.yml, usado por _includes/imagem.html.
#
# Requisitos: cwebp (brew install webp) e sips (macOS).
# Uso: bash scripts/otimizar-imagens.sh
# Rode sempre que adicionar ou trocar uma imagem; versione o que for gerado.
set -euo pipefail

cd "$(dirname "$0")/.."
command -v cwebp >/dev/null || { echo "ERRO: cwebp não encontrado (brew install webp)"; exit 1; }

ORIGEM="assets/img"
DESTINO="assets/img/otimizadas"
DADOS="_data/imagens.yml"
LARGURAS=(480 960 1600)

rm -rf "$DESTINO"
mkdir -p "$DESTINO"

{
  echo "# Gerado por scripts/otimizar-imagens.sh — não editar à mão."
  find "$ORIGEM" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) -not -path "$DESTINO/*" | sort | while read -r arquivo; do
    rel="${arquivo#"$ORIGEM"/}"
    base="${rel%.*}"
    largura=$(sips -g pixelWidth "$arquivo" | awk '/pixelWidth/ {print $2}')
    altura=$(sips -g pixelHeight "$arquivo" | awk '/pixelHeight/ {print $2}')
    case "$arquivo" in
      *.png|*.PNG) qualidade=(-q 90 -alpha_q 100) ;;
      *) qualidade=(-q 76 -m 6) ;;
    esac

    alvos=()
    for w in "${LARGURAS[@]}"; do
      if (( w < largura )); then alvos+=("$w"); fi
    done
    alvos+=("$(( largura < 1600 ? largura : 1600 ))")

    echo "/$arquivo:"
    echo "  width: $largura"
    echo "  height: $altura"
    echo "  webp:"
    for w in $(printf '%s\n' "${alvos[@]}" | sort -nu); do
      saida="$DESTINO/$base-$w.webp"
      mkdir -p "$(dirname "$saida")"
      cwebp -quiet "${qualidade[@]}" -resize "$w" 0 "$arquivo" -o "$saida"
      echo "  - w: $w"
      echo "    src: /$saida"
    done
  done
} > "$DADOS"

echo "OK: $(find "$DESTINO" -name '*.webp' | wc -l | tr -d ' ') arquivos WebP em $DESTINO ($(du -sh "$DESTINO" | cut -f1)); registro em $DADOS"
