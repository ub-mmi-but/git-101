
# Les remote repositories

**Git remote** est une référence à un **dépôt distant**, plus précisément un emplacement où votre projet git est **enregistré a distance**. Cela permet une **collaboration** et une **synchronisation** entre **plusieurs développeurs** sur un même projet.

Ils peuvent **cloner** le code pour le **modifier en local**, **récupérer les modifications** faites dans le dépôt distant fait après le clonage local. Et pour finir se **synchroniser** avec les autres en poussant les modifications faites en local dans le dépôt distant.

## Commandes de bases

Si vous avez **assigné votre clé SSH a votre compte git**, vous pouvez importer et exporter des branches ainsi que vos modifications comme bon vous semble.

Pour ajouter une remote repository vous devez executer cette commande :
```git
git remote add origin <url ssh>
```

## Push
Pour pousser (**push**) votre branche vers votre remote repository vous devrez exécuter :
```git
git push origin <nom-branche>
```


***Attention :*** **dans le cas ou vous devez mettre une branche qui n'existe pas encore dans le projet vous devrez utiliser cette commande :**
```git
git push -u origin <nom-branche>
```

## Pull
Si des modifications on été faites sur le projet hors de votre appareil il vous faudra faire un **pull** :
```git
git pull origin <nom-branche>
```

