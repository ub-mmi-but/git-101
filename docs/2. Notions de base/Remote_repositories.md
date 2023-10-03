
# Les remote repositories

:material-information-outline:{ title="Important information" }
**Git remote** est une référence à un **dépôt distant**, plus précisément un emplacement où votre projet git est **enregistré à distance**. Cela permet une **collaboration** et une **synchronisation** entre **plusieurs développeurs** sur un même projet.

Ils peuvent **cloner** le code pour le **modifier en local**, **récupérer les modifications** faites dans le dépôt distant fait après le clonage local. Et pour finir se **synchroniser** avec les autres en poussant les modifications faites en local dans le dépôt distant.

## Commandes de bases
Lors de l'utilisation de git repositories il y a **deux possibilité** :

1. Vous avez **déjà un dépôt local** et voulez **ajouter un dépôt distant** :
	
	Si vous avez **assigné votre clé SSH à votre compte git**, vous pouvez importer et exporter des branches ainsi que vos modifications comme bon vous semble.
	
	Pour ajouter une remote repository vous devez éxecuter cette commande :
	
	```git
	git remote add origin <url ssh>
	```
	
2. Vous voulez **copier le contenu** d'un dépôt distant (et n'avez **pas de code fait en local pour l'instant**) :
	``git clone`` **créer une copie locale** d'un **dépôt distant (repository)** sur votre propre appareil. Elle télécharge tous les fichiers et l'historique de version du dépôt distant, permettant un travail avec les fichiers localement. 
	
	Quand vous faite un `git clone` le dépôt local aura comme dépôt distant celui qu'il a cloné.

## Push
Pour pousser (**push**) votre branche vers votre remote repository vous devrez exécuter :
```git
git push origin <nom-branche>
```

!!! Warning "Attention"

    Dans le cas ou vous devez mettre une branche qui n'existe pas encore dans le projet vous devrez utiliser cette commande :

    ```git
    git push -u origin <nom-branche>
    ```

## Pull
Si des modifications on été faites sur le projet hors de votre appareil il vous faudra faire un **pull** :
```git
git pull origin <nom-branche>
```

