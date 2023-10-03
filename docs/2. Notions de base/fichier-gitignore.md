# À quoi sert le fichier `.gitignore` ?
:material-information-outline:{ title="Important information" }
`.gitignore` est un fichier texte permettant lors des commit d'ignorer les fichiers et répertoires mentionner dans celui-ci.

# Comment créer  son fichier `.gitignore` ?
:material-information-outline:{ title="Important information" }
Pour créer un fichier `.gitignore` local, créez un fichier texte et nommez-le `.gitignore` . Chaque nouvelle ligne devrait lister un fichier additionnel ou un répertoire que vous voulez que Git ignore.

Les entrées dans ce fichier peuvent aussi suivre un modèle de correspondance (matching pattern).

`*` est utilisé comme un caractère de remplacement de correspondance (wildcard match)

`/` est utilisé pour ignorer les chemins d'accès relatifs au fichier `.gitignore`

`#` est utilisé pour ajouter des commentaires à un fichier `.gitignore`

## Voici un exemple de ce à quoi le fichier .gitignore pourrait ressembler :

**Ignorer les fichiers systèmes Mac**

```txt
.DS_store
```

**Ignorer le répertoire node_modules**

```txt
node_modules
```

**Ignorer tous les fichiers texte**

```txt
*.txt
```

**Ignorer les fichiers liés aux clés d'API**

```txt
.env
```

**Ignorer les fichiers de configuration SASS**

```txt
.sass-cache
```

## Configuration globale

Pour ignorer les fichiers systèmes, qui sont différents pour tout le monde, préférez utiliser la configuration globale afin de ne pas avoir à les déclarer dans le `.gitignore` de tous vos projets.

```bash
echo .DS_Store >> ~/.gitignore_global
```

Le `.gitignore_global` s'applique sur votre machine à tous les répertoires Git.

## Pour en savoir plus 

[Voir la documentation sur git-scm.com](https://git-scm.com/docs/gitignore)