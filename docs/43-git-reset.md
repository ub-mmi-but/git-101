# Git reset

## Concept 

Le "git reset" est une commande Git importante qui permet de déplacer la branche actuelle vers un commit spécifique, ce qui peut avoir un impact sur l'historique du projet et sur les fichiers dans le répertoire de travail.

## Les commandes :

### Soft Reset :

 Un "soft reset" déplace la branche actuelle vers un commit spécifique, mais il ne modifie pas les fichiers dans le répertoire de travail.

> ```git reset --soft <commit>```

### Mixed Reset (par défaut) :

 Un "mixed reset" déplace la branche actuelle vers un commit spécifique et désindexe les fichiers. Cela signifie que les modifications que vous avez faites sont préservées dans le répertoire de travail, mais elles ne sont pas en cours de staging. 

> ```git reset <commit>```

### Hard  Reset :

 Un "hard reset" déplace la branche actuelle vers un commit spécifique et supprime toutes les modifications dans le répertoire de travail. Cela revient à l'état du projet au moment du commit spécifique.

> ```git reset --hard <commit>```


