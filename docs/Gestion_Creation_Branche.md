# Introduction  
Git permet la création de branche afin de mieux répartir le travail et éviter les erreurs sur la version de production
## Créer des branches  
Il existe plusieurs façons de créer une branche avec Git.  
La plus commune étant d'utiliser la commande suivante :  
 **git checkout -b** (-b signifiant la creation d'une nouvelle branche) **nom_de_notre_nouvelle_branche** (cela peut être suivie du nom de la branche parente). Voici un exemple :  
````
$ git checkout -b feature main
````
Cette méthode va créer et diriger directement sur la nouvelle branche.
Si l'on ne souhaite pas tout de suite être redirigé, alors la commande suivante convient :  
git branch **nom_de_la_branche** 

````
$ git branch feature
````
Si l'on veut se diriger vers cette branche il faut de nouveau utiliser la commande checkout : 

````
$ git checkout feature
````

Il peut arriver qu'on ne sache plus où on en est. Alors il est possible de visualiser toutes les branches avec la commande **git branch -a**

````
$ git branch -a
````

Pour supprimer une branche obselète il suffit de mettre -d.

````
$ git branch -d branche_a_suppr
````
## Gestion des branches  

