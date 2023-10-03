# Commandes GIT - Base


## `git config`

C'est la commande qu'on utilise juste après l'installation de GIT, comme son nom l'indique elle permet de **configurer** votre nom et votre adresse mail. C'est ces informations qui serton utilisées à chaque commit :

```shell
 git config --global user.name " Votre nom "
 git config --global user.email "Votre adresse email"
```


## `git init`

Comme son nom l'indique, cette commande permet **d'initialiser** un nouveau dépot Git et donc de permettre par la suite d'utiliser les commandes git dans votre répertoire. En effet avant git init, la plupart des commandes git ne sont pas accessibles.

```shell
 git init
```

> En créant une app React ou en faisant un par exemple, le git init est fait automatiquement

## `git clone`

La commande `git clone` permet de créer une **copie d'un projet Github dans votre éditeur de code**. Par exemple, vous arrivez dans une équipe dont le projet est déjà commencé, vous ferez le choix d'un `git clone`. Le `git clone` execute en meme temps un `git init`.

```shell
git clone https://github.com/ub-mmi-but/git-101.git
```

## `git status` 

La commande `git status` affiche l'état du **répertoire de travail** et de la **zone de staging**. Elle vous permet de **voir les changements** qui ont été stagés, ceux qui ne l'ont pas été, ainsi que les fichiers qui sont trackés par Git.

```shell
git status
```

## `git add` 

La commande `git add` permet de **stager les fichiers** qui ont changés pour qu'ils soient pris en compte dans le futur `git commit`

```shell
git add /chemin/vers/le/fichier
```
_Ajouter tout les fichiers qui ont changés :_
```shell
git add -A
```

## `git commit`

La commande git commit permet **d'enregistrer les modifications**. Un commit est une étape dans l'historique de votre projet. Chaque commit doit être accompagné d'un message _(Ajouter `-m "message du commit"`)_ pour connaitre de quel enregistrement il s'agit .

```shell
git commit -m "message du commit"
```


## `git push`

La commande `git push` **ajoute les contenus d'un dépôt local vers un dépôt central**. _Ajouter l'origine avec `origin <nom_de_la_branche>`_
> Bien faire cette commande sur sa branche car elle écrase les autres modifications

```shell
git push origin <nom_branche>"
```

## `git branch`

La commande `git branch` permet **lister le nom des branches** dans un répertoire. *Ajouter un nom de branche* à la fin de la commande permet d'ajouter une nouvelle branche.

```shell
git branch
git branch <nom_branche>
```

## `git checkout`

La commande `git checkout` permet la plupart du temps de **changer de branche**. *Ajouter -b* devant le nom de la branche permet de la **créer en basculant** sur elle en même temps. Après la commande, on peut aussi spécifier le *hash d'un commit* pour **l'examiner sans créer** une nouvelle branche.

```shell
git checkout <nom_branche>
git chechout -b <nom_branche>
git checkout <hash_commit>
```

## `git remote`

La commande `git remote` permet de **gérer les dépôts distants associés à votre projet Git**. Elle affiche les noms des dépôts distants configurés pour votre projet.

```shell
git remote
```

## `git fetch`

La commande `git fetch` permet de **récupérer les dernières modifications depuis un dépôt distant _sans les fusionner_ avec votre branche locale**. Elle met à jour les références distantes et les branches distantes correspondantes sans modifier votre travail local.

```shell
git fetch <dépôt distant>
```

## `git pull`

La commande `git pull` **récupère les modifications depuis un dépôt distant et _fusionne les modifications_ avec votre branche locale**. Elle équivaut à exécuter `git fetch` suivi de `git merge` pour fusionner les modifications.

```shell
git pull <dépôt distant> <branche distante>
```

## `git stash`

La commande `git stash` permet de **mettre de côté les modifications non validées dans une pile temporaire**. Cela vous permet de basculer entre les branches ou de récupérer des modifications ultérieurement.

```shell
git statsh
```

## `git log`

La commande `git log` **affiche l'historique des commits** effectués dans votre projet. Elle affiche les informations telles que l'auteur du commit, la date, l'heure et le message du commit.

```shell
git log
```

## `git shortlog`

La commande `git shortlog` **affiche un résumé des commits** effectués par chaque auteur du projet. Elle regroupe les commits par auteur et affiche le nombre de commits effectués par chaque auteur.

```shell
git shortlog
```

## `git show`

La commande `git show` **affiche les modifications apportées lors d'un commit spécifique**. Elle affiche les informations sur le commit ainsi que les différences de code entre le commit et son parent.

```shell
git show <hash_commit>
```

## `git rm`

La commande `git rm` permet de **supprimer un fichier** de votre projet Git. Elle supprime le fichier de la zone de staging et du répertoire de travail.

```shell
git rm <nom_fichier>
```

## `git merge`

La commande `git merge` permet de **fusionner une branche avec la branche actuelle**. Elle combine les modifications des deux branches en créant un nouveau commit de fusion.

```shell
git merge <branche>
```

## `git diff`

La commande `git diff` **affiche les différences** entre _deux commits_, entre _une branche et un commit_, ou _entre deux branches_. Elle affiche les lignes de code ajoutées, modifiées ou supprimées.

```shell
git diff <commit1> <commit2>
git diff <branche> <commit>
git diff <branche1> <branche2>
```

## `git rebase`

La commande `git rebase` permet de **rejouer les commits d'une branche sur une autre branche**. Elle réapplique les commits de la branche sur le dessus de la branche cible.

```shell
git rebase <branche_cible> 
```
