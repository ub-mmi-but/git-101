# Working Directory, Stage, Repo, HEAD

Pour comprendre pleinement la dynamique de Git, il est essentiel de saisir comment working directory, le stage, le repo et HEAD sont intrinsèquement liés. Imaginez-les comme les pièces interconnectées d'une machine puissante de gestion de versions.

![Schema liant le working directory avec le stage et le repo](/assets/image.png)

## Qu'est ce que la Working Directory ?

C'est la première zone qu'on utilise, dossier de travail. Dès qu’on a initialisé Git sur un projet, tout travail versionné (ajouts, suppressions, modifications) a lieu dans cette zone. Simplement c'est ca zone de travail sur son ordinateur. 



### En résumé ?

En résumé, le working directory est la copie des fichiers sur la branche active de votre projet  GitHub où vous effectuez vos modifications avant de les enregistrer sous forme de commits et de les pousser vers le référentiel GitHub distant pour partager vos modifications avec d'autres collaborateurs.


## Qu'est ce que le Stage ?

 Le stage est une zone dédiée à la préparation des commits : le stage. On peut la voir comme une zone tampon dans laquelle on va lister les modifications qu’on souhaite mettre dans notre prochain commit (ajouts, suppressions, tout ou partie des modifications).

Qui dit préparation au commit dit qu’on peut ajouter ou retirer des éléments au stage avant de commiter. 



### Comment ca marche ?

On retrouve donc des commandes à cet effet :

Permet enregistrer les manipulations qu’on souhaite commiter :

```shell
git add ...
git add ...
git stage
```
Pour enregistrer une suppression :

```shell
git rm ... 
git rm ...  
```

Pour retirer des éléments ajoutés au stage :

```shell
git restore --staged 
```

Pour voir la différence entre le working directory et le stage :
```shell
git diff
```


## Qu'est ce que le Repo ?

Le repo est la copie du projet github, un repo (ou dépôt) Git est un emplacement où Git stocke l'historique des versions et les fichiers source d'un projet.
On retrouve tout ces éléments dans le dossier `.git`.
Le terme "Repo" est une abréviation courante de "repository" en anglais, ce qui signifie en français "dépôt" ou "dépôt de code".  C'est un élément central de Git, car il permet de suivre l'évolution du code source, de collaborer avec d'autres développeurs, de gérer les branches de développement, et bien plus encore. 

### Comment ca marche ?

Comment ajouter des éléments de votre zone de transit (stage) à votre référentiel local (repo) ? La commande git `git commit` prend toutes les modifications dans la zone de transit (stage), les regroupe et les place dans votre referentiel local (repo). Un commit est simplement un point de contrôle indiquant à git de suivre tous les changements survenus jusqu'à présent en utilisant notre dernier commit comme comparaison. Après la validation, votre zone de transit sera vide.

Comment pouvez-vous voir ce qui se trouve dans votre référentiel local (repo) ? Il existe quelques commandes que vous pouvez exécuter pour afficher différentes choses.

`git ls-tree --full-tree -r HEAD`

Cette commande affiche tous les fichiers de votre dépôt git qu'elle suit.

`git log`

Cette commande affiche un journal de tous les points de contrôle précédents dans mon référentiel. Si je souhaite voir plus d'informations sur un commit spécifique, j'exécute la commande `git show #commit#`pour voir ce qui a été modifié à ce point de contrôle spécifique.


## Qu'est ce que le HEAD ?

On considère le plus souvent HEAD comme un pointeur sur le dernier commit de la branche courante. C'est généralement le cas, mais pas tout le temps.

HEAD est bien un pointeur, une référence vers un emplacement donné de notre historique (un commit si tu préfères). Il a deux fonctions 
principales :

- nous repérer dans notre historique;
- définir l'endroit depuis lequel nous produisons un commit.

Elle permet de nous indiquer quelle est la branche active, définissant ainsi l'état de notre espace de travail, le commit qui servira de parent à notre prochain commit et la branche qui devra bouger.



### Comment ca marche ?

HEAD est représenté par le fichier .git/HEAD. Si on regarde son contenu, on trouvera toujours une seule ligne dont le format sera le plus souvent celui-ci :

```shell
ref: refs/heads/nom-de-branche
```

En d’autre termes, il contient généralement une référence à la branche courante. En fait, c’est justement parce qu’il contient la référence d’une branche, que celle-ci est considérée comme la branche courante / active.

Tu peux observer son comportement si tu demandes à Git de basculer sur une autre branche :

```shell
git switch autre-branche
```

Tu verras alors le fichier .git/HEAD pointer vers cette autre branche :

```shell
ref: refs/heads/autre-branche
```

Si on pousse un peu et qu’on crée un commit depuis cet emplacement, on verra que cette référence n’aura pas changé, HEAD pointera toujours sur autre-branche. C’est la valeur de cette étiquette de branche qui aura bougé (seulement parce qu’elle était désignée active par HEAD).

 Cette commande est utilisée pour réinitialiser le Git Head au commit juste avant le précédent :
```shell
git reset HEAD~1
```