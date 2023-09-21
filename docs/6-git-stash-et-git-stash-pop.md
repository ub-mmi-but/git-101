# La commande `git stash`

`git stash` met temporairement de côté les modifications que vous avez apportées à votre copie de travail afin que vous puissiez travailler sur autre chose, puis revenir et les réappliquer plus tard.

Le stockage est pratique si vous avez besoin de changer rapidement de contexte et de travailler sur autre chose, mais que vous êtes à mi-chemin d'un changement de code et que vous n'êtes pas tout à fait prêt à vous engager.

## Un cas d'usage serait par exemple

1) Vous travaillez sur la branche "feature-branch" et avez apporté plusieurs modifications à vos fichiers.

2) Soudainement, un bug critique est signalé sur la branche principale ("master") et vous devez immédiatement corriger ce bug.

3) Vous ne pouvez pas pousser vos modifications inachevées de la branche "feature-branch" vers la branche principale car elles ne sont pas encore prêtes.

4) Utilisez `git stash` pour enregistrer temporairement vos modifications non validées sans les commettre. Cela vous permet de basculer rapidement vers la branche principale sans perdre votre travail en cours.

```bash
git stash "Travail en cours sur la fonctionnalité"
```

5) Passez à la branche principale pour corriger le bug et effectuer une validation.

```bash
git checkout master
git commit -m "Correction du bug critique"
```

6) Une fois le bug corrigé sur la branche principale, vous pouvez retourner à votre branche "feature-branch" en utilisant git checkout.

```bash
git checkout feature-branch
```

7) Ensuite, vous pouvez récupérer vos modifications précédemment mises en veille en utilisant git stash pop.

```bash
git stash pop
```

Cela appliquera vos modifications précédemment enregistrées et les supprimera de la pile des mises en veille.

8) Continuez à travailler sur votre fonctionnalité en cours.

L'utilisation de git stash dans ce scénario vous permet de passer rapidement d'une tâche à une autre sans compromettre l'intégrité de votre code, en vous assurant que vos modifications en cours sont enregistrées et récupérables lorsque vous en avez besoin.

## Exemple de conflit

Un conflit Git Stash survient lorsque vous appliquez une mise en veille précédemment enregistrée (stash) et que les modifications que vous avez enregistrées entrent en conflit avec les modifications actuelles dans votre répertoire de travail. Voici un exemple simplifié pour illustrer un conflit Git Stash

1) Vous êtes sur la branche "feature-branch" et avez apporté des modifications au fichier "mon_fichier.txt".

2) Vous décidez d'enregistrer temporairement ces modifications dans un stash.

3) Ensuite, vous continuez à travailler sur le fichier "mon_fichier.txt" et apportez davantage de modifications.

4) À un moment donné, vous décidez de restaurer les modifications précédemment mises en veille.

À ce stade, un conflit peut survenir si les modifications que vous avez enregistrées dans le stash entrent en conflit avec les modifications actuelles sur le fichier "mon_fichier.txt".

5) Git vous informera du conflit en affichant un message similaire à celui-ci :

```bash
Auto-merging mon_fichier.txt
CONFLICT (content): Merge conflict in mon_fichier.txt
```

6) Vous devrez ouvrir le fichier "mon_fichier.txt" dans un éditeur de texte et résoudre manuellement le conflit. Le fichier aura des marqueurs spéciaux pour indiquer où se trouvent les conflits, par exemple :

```txt
<<<<<<< HEAD
Modifications actuelles
=======
Modifications du stash
>>>>>>> Stashed changes
```

Vous devrez décider quelles modifications garder, supprimer les marqueurs de conflit et enregistrer le fichier.

## Mettre de côté votre travail

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

Ici `git stash` vient de sauvegarder les modifications dans dans le "stash" de votre référentiel Git, le "stash" ne sont pas transféré sur le dépot distant.

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

Faire un `git stash` va poser un fichier de modification sur une pile de modifications, la commande `git stash pop` renvera la dernière modification enregistrée par `git stash`.
