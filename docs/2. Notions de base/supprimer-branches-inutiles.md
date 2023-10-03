# Comment supprimer les branches qui ne servent plus à rien ?

## Problématique

Quand les PRs sont mergées, on peut supprimer la branche de github. Mais en local on garde les branches supprimées. Comment supprimer facilement les branches qui n'existent plus sur le remote ?

## Suppression de toutes les branches inutiles

:material-information-outline:{ title="Important information" }
Pour supprimer les branche inutiles, nous utilisons la commande `git fetch -p`. Cette commande va supprimer les branches inutiles et vous afficher les nouvelles branches du projet.

![Exemple du rendu git fetch -p](/assets/image-4.png)