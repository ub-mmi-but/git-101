# La commande `git stash`

`git stash` met temporairement de coté les modifications que vous avez apportées à votre copie de travail afin que vous puissiez travailler sur autre chose, puis revenir et les réappliquer plus tard.

Le stockage est pratique si vous avez besoin de changer rapidement de contexte et de travailler sur autre chose, mais que vous êtes à mi-chemin d'un changement de code et que vous n'êtes pas tout à fait prêt à vous engager.

## Mettre de coté votre travail

La commande `git stash` prend vos modifications non validées (qui ne sont pas commit), les enregistre pour une utilisation ultérieure, puis les annule à partir de votre copie de travail.

Par exemple:

```bash
$ git status
On branch main
Changes to be committed:

    new file:   style.css

Changes not staged for commit:

    modified:   index.html

$ git stash
Saved working directory and index state WIP on main: 5002d47 our new homepage
HEAD is now at 5002d47 our new homepage

$ git status
On branch main
nothing to commit, working tree clean
```

Ici `git stash` vient de sauvegarder les modification dans dans le "stash" de votre référentiel Git, les "stash" ne sont pas transférées sur le dépot distant.

À ce stade, vous êtes libre d'apporter des modifications, de créer de nouveaux commits, de changer de branche et d'effectuer toute autre opération Git ; puis revenez et réappliquez votre code en cache lorsque vous êtes prêt.

## Réappliquer vos modifications

Vous pouvez réappliquer les modifications stocker dans le "stash" avec `git stash pop` :

```bash
$ git status
On branch main
nothing to commit, working tree clean
$ git stash pop
On branch main
Changes to be committed:

    new file:   style.css

Changes not staged for commit:

    modified:   index.html

Dropped refs/stash@{0} (32b3aa1d185dfe6d57b3c3cc3b32cbf3e380cc6a)
```

Cela réaffecte les modifications à l'espace de travail, et vide le "stash" du référentiel Git.
