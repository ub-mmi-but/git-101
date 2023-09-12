# Commandes GIT - Base


## `git config`

C'est la commande qu'on utilise juste après l'installation de GIT, comme son nom l'indique elle permet de **configurer** votre nom et votre adresse mail. C'est ces informations qui serton utilisées à chaque commit :

```bash
 git config --global user.name " Votre nom "
 git config --global user.email "Votre adresse email"
```


## `git init`

Comme son nom l'indique, cette commande permet **d'initialiser** un nouveau dépot Git et donc de permettre par la suite d'utiliser les commandes git dans votre répertoire. En effet avant git init, la plupart des commandes git ne sont pas accessibles.

```bash
 git init
```

> En créant une app React ou en faisant un par exemple, le git init est fait automatiquement

## `git clone`

La commande `git clone` permet de créer une **copie d'un projet Github dans votre éditeur de code**. Par exemple, vous arrivez dans une équipe dont le projet est déjà commencé, vous ferez le choix d'un `git clone`. Le `git clone` execute en meme temps un `git init`.

```bash
git clone https://github.com/ub-mmi-but/git-101.git
```

## `git status` 

La commande `git status` affiche l'état du **répertoire de travail** et de la **zone de staging**. Elle vous permet de **voir les changements** qui ont été stagés, ceux qui ne l'ont pas été, ainsi que les fichiers qui sont trackés par Git.

```bash
git status
```

## `git add` 

La commande `git add` permet de **stager les fichiers** qui ont changés pour qu'ils soient pris en compte dans le futur `git commit`

```bash
git add /chemin/vers/le/fichier
```
_Ajouter tout les fichiers qui ont changés :_
```bash
git add -A
```

## `git commit`

La commande git commit permet **d'enregistrer les modifications**. Un commit est une étape dans l'historique de votre projet. Chaque commit doit être accompagné d'un message _(Ajouter `-m "message du commit"`)_ pour connaitre de quel enregistrement il s'agit .

```bash
git commit -m "message du commit"
```


## `git push`

La commande `git push` **ajoute les contenus d'un dépôt local vers un dépôt central**. _Ajouter l'origine avec `origin <nom_de_la_branche>`_
> Bien faire cette commande sur sa branche car elle écrase les autres modifications

```bash
git push origin <nom_branche>"
```

## `git branch`

La commande `git branch` permet **lister le nom des branches** dans un répertoire. *Ajouter un nom de branche* à la fin de la commande permet d'ajouter une nouvelle branche.

```bash
git branch
git branch <nom_branche>
```

## `git checkout`

La commande `git checkout` permet la plupart du temps de **changer de branche**. *Ajouter -b* devant le nom de la branche permet de la **créer en basculant** sur elle en même temps. Après la commande, on peut aussi spécifier le *hash d'un commit* pour **l'examiner sans créer** une nouvelle branche.

```bash
git checkout <nom_branche>
git chechout -b <nom_branche>
git checkout <hash_commit>
```

_Suite des commandes :_

## `git remote`


## `git fetch`


## `git pull`


## `git stash`


## `git log`


## `git shortlog`


## `git show`


## `git rm`


## `git merge`





## `git diff`


## `git rebase`


