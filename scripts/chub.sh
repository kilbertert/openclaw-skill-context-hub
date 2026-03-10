#!/bin/bash
# Context Hub CLI Wrapper

COMMAND="$1"
shift

case "$COMMAND" in
    search)
        npx @aisuite/chub search "$@"
        ;;
    read)
        npx @aisuite/chub read "$@"
        ;;
    annotate)
        npx @aisuite/chub annotate "$@"
        ;;
    list)
        npx @aisuite/chub list
        ;;
    *)
        echo "用法: chub search|read|annotate <args>"
        ;;
esac
