# Qu'est-ce que `git rebase` ?

## Explication générale

La commande `git rebase` est utilisée pour réorganiser l'historique des commits dans Git. Elle permet de déplacer, combiner ou modifier les commits d'une branche pour les appliquer sur une autre branche.

Le rebasage _(`git rebase`)_ fonctionne en prenant une branche (_feature_) et en la basant sur une autre branche (généralement _main_). Cela signifie que les commits de la branche de _feature_ sont replacés sur le dessus de la branche _main_, un par un.

![Alt text](assets/image-1.png)

## Intégrer votre fonctionnalitée dans la branche principale

L'utilisation de `git merge`  génère un merge à trois branches et un commit de merge superflu et inutile dans l'historique.
C'est ici, qu'utiliser `git rebase` est avantageux puisqu'il permet de garder un historique propre et linéaire.



## Quand utiliser `git rebase`