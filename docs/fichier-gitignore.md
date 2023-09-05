# A quoi sert le fichier gitignore ?
Gitignore est un fichier texte permetant lors des commit d'ignorer les fichiers et répertoires mentionner dans celui-ci

# Comment creer son fichier gitignore ?
Pour créer un fichier .gitignore local, créez un fichier texte et nommez-le .gitignore . Chaque nouvelle ligne devrait lister un fichier additionnel ou un répertoire que vous voulez que Git ignore.

Les entrées dans ce fichier peuvent aussi suivre un modèle de correspondance (matching pattern).

\* est utilisé comme un caractère de remplacement de correspondance (wildcard match)

/ est utilisé pour ignorer les chemins d'accès relatifs au fichier .gitignore

\# est utilisé pour ajouter des commentaires à un fichier .gitignore

## Voici un exemple de ce à quoi le fichier .gitignore pourrait ressembler :

\# Ignorer les fichiers systèmes Mac

.DS_store

\# Ignorer le répertoire node_modules

node_modules

\# Ignorer tous les fichiers texte

*.txt

\# Ignorer les fichiers liés aux clés d'API

.env

\# Ignorer les fichiers de configuration SASS

.sass-cache