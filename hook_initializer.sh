#!/bin/bash

hook_path="hook/*"

# Vérifier si le dossier "hook" existe à la racine
if [ -d "hook" ]; then
    # Vérifier si le dossier "hook" contient des fichiers
    if [ "$(ls -A hook)" ]; then
        # Copiez le hook vers le dossier .git/hooks/
        cp $hook_path .git/hooks/

        # Rendez le hook exécutable
        chmod +x .git/hooks/$(basename $hook_path)
    else
        echo "Le dossier 'hook' est vide."
    fi
else
    echo "Le dossier 'hook' n'existe pas à la racine."
fi
