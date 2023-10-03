# Qu'est-ce que `git rebase` ?

## Explication générale

La commande `git rebase` est utilisée pour réorganiser l'historique des commits dans Git. Elle permet de déplacer, combiner ou modifier les commits d'une branche pour les appliquer sur une autre branche.

Le rebasage _(`git rebase`)_ fonctionne en prenant une branche (_feature_) et en la basant sur une autre branche (généralement _main_). Cela signifie que les commits de la branche de _feature_ sont replacés sur le dessus de la branche _main_, un par un.

![Alt text](/assets/rebase_img.png)

## Cas d'utilisation

1. Imaginons que vous êtes sur une branche _feature_, vous travaillez sur votre branche de votre côté.
2. Vous avez finis et que vous souhaitez intégrer votre fonctionnalité à la branche _main_ sauf que pendant que vous codiez sur votre branche _feature_, d'autres développeurs ont ajouté leurs modifications à la branche _main_.
3. Alors, avant de fusionner votre branche _feature_ et _main_, il faut faire un `git rebase` pour récupérer les modifications qui ont été faites sur _main_.

**_Détails de l'exemple_**

- Assurez-vous d'être sur la branche _feature_ en exécutant la commande suivante : `git checkout feature`
- Mettez à jour votre branche _feature_ avec les dernières modifications de _main_ en utilisant la commande git rebase : `git rebase main`

> Cette commande replacera les commits de la branche _feature_ sur le dessus de la branche _main_, un par un. Si des conflits surviennent, vous devrez les résoudre au fur et à mesure.

- Après avoir résolu tous les conflits, ajoutez les fichiers modifiés à l'index en utilisant la commande git add : `git add .`
- Continuez le processus de rebase en utilisant la commande git rebase --continue : `git rebase --continue`
- Si vous souhaitez abandonner le rebase en cours, vous pouvez utiliser la commande `git rebase --abort`
- Une fois le rebase terminé, vous pouvez fusionner votre branche _feature_ dans la branche _main_ en utilisant la commande `git merge` :

```bash
git checkout main git merge feature
```

> C'est tout! Vous avez maintenant utilisé git rebase pour réorganiser l'historique des commits et intégrer vos modifications de manière propre dans la branche principale.

## Lignes de commande

- Effectuer un rebase :

```bash
    git checkout feature
    git rebase main
```

- Pour continuer le processus de rebasage après avoir résolu les conflits

```bash
git rebase --continue
```

- Annuler le rebase :

```bash
    git rebase --abort
```

## `git rebase -i`

- Effectuer un rebase interactif.

```bash
    git checkout feature
    git rebase -i HEAD~<nombre de commit à rebaser>
```

> _Permet d'organiser les commits via un interface interactif d'une nouvelle branche avant de la fusionner proprement dans la branche principale_

**Voici quelques-unes des actions les plus couramment utilisées dans l'interface interactive de rebase :**

- `pick` : Conserver le commit tel quel.
- `edit` : Arrêter le rébase pour permettre la modification du commit.
- `squash` : Combinez ce commit avec le commit précédent.
- `reword` : Modifier le message du commit.
- `drop` : Supprimer le commit.
- `skip` : Le commit marqué comme "skip" sera exclu de la nouvelle version de l'historique.

> **_Exemple 1_**

> - Supposons que vous ayez une branche avec les commits suivants :

```bash
A --> B --> C --> D --> E --> F --> G
```

> - Executer la commande suivante dans la branche _feature_ :

```bash
git rebase -i HEAD~7
```

> - Git ouvrira un éditeur de texte avec une liste de commits et des actions à côté de chaque commit.

```bash
pick A Commit A
pick B Commit B
pick C Commit C
pick D Commit D
pick E Commit E
pick F Commit F
pick G Commit G
```

> -Modifiez la liste des commits pour atteindre votre objectif. Dans ce cas, vous souhaitez renommer le commit "A", exclure le commit "B" du nouvel hsitorique, supprimer le commit "C" et fusionner "D" avec "E".

```bash
reword A Commit A
skip B Commit B
drop C Commit C (Ou supprimer la ligne)
pick D Commit D
squash E Commit E
edit F Commit F
pick G Commit G
```

> - Git vous demandera maintenant de modifier le message de commit du commit A.
> - Le rebase s'arrêtera au commit F. À ce stade, vous pouvez apporter les modifications nécessaires à ce commit. Une fois les modifications effectuées, vous pouvez les ajouter à l'index et les valider à l'aide des commandes suivantes :

```bash
git add <fichiers_modifiés>
git commit --amend
```

> - Après avoir effectué les modifications, continuez le rébase en utilisant la commande suivante :

```bash
git rebase --continue
```

> - Au final, on obtient :

```bash
A -- D -- DE - F (commit modifié) -- G
```

---

> **_Exemple 2_**

## `git rebase --onto`

- Effectuer un rebase plus puissant qui transmet des réfs (points de rebase)

```bash
    git rebase --onto <newbase> <oldbase>
```

> **_Exemple_**

> - Vous avez une branche feature basée sur master.
> - Vous souhaitez extraire certains commits spécifiques de la branche feature et les réappliquer sur une nouvelle branche appelée feature-amelioree.
> - Vous voulez exclure les deux premiers commits de la branche feature.
> - Créez une nouvelle branche feature-amelioree à partir de master

```bash
git checkout master
git checkout -b feature-amelioree
```

> - Utilisez git rebase --onto pour extraire les commits spécifiques de feature et les réappliquer sur la nouvelle branche feature-amelioree, en excluant les deux premiers commits

```bash
git rebase --onto feature-amelioree HEAD~2 feature
```

> _La branche featureB est basée sur la branche featureA. Toutefois, nous réalisons que featureB ne dépend pas des changements dans featureA et pourrait être dérivée de la branche principale. featureA est le ＜ oldbase ＞. main devient le ＜ newbase ＞, et featureB est référencé pour ce vers quoi l'élément HEAD de ＜ newbase ＞ pointera._

## Les dangers du rebase

- En travaillant avec `git rebase`, il faut prendre en compte que les conflits de fusion peuvent devenir plus fréquent lors d'un workflow de rebase.
  Cela se produit si votre branche _feature_ est éloignée depuis trop longtemps de la branche _main_. En rebasant à ce moment là, le branche _main_ contient de nombreux nouveaux commits qui sont en conflits avec la branche _feature_.

> Rebaser fréquemment votre branche _feature_ par rapport à main et effectuer des validations fréquentes pour ne pas rencontrer ce problème.

- Un autre danger avec `git rebase` est la perte de validations résultant de la réécriture interactive de l'historique `git rebase -i`. L'exécution en mode intéractif et l'exécution de sous-commandes telles que squash `git rebase --autosquash` et drop `git rebase --d` supprimeront les validations du journal immédiat de votre branche. On peut penser que les commits ont été définitivement disparu mais en utilisant `git reflog`, ces commits peuvent être restaurés et le rebase peut être entièrement annulé. Pour plus d'informations sur `git reflog`, consulter cette documentation:

> **Git Rebase n'est pas dangereux en soi. Les problèmes surgissent lorsque vous modifiez l'historique avec des rebases interactifs et que vous forcez ces modifications sur une branche partagée, risquant d'écraser le travail des autres. C'est une pratique à éviter.**

- Pour aller plus loin

[![Text alternatif](https://i.ytimg.com/vi/I2NQHB64ol4/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDyXWgj11rEHVJZXvY2WvjABtiaZA)](https://www.youtube.com/watch?v=I2NQHB64ol4)

_Sources : [git-rebase](https://git-scm.com/docs/git-rebase/2.15.4) & [atlassian](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase)_
