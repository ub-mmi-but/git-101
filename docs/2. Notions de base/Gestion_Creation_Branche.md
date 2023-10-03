# Introduction  

Git permet la création de branches afin de mieux répartir le travail et éviter les erreurs sur la version de production
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

Il peut arriver qu'on ne sache plus où on en est. Alors il est possible de visualiser toutes les branches avec la commande **git branch -a**.

````
$ git branch -a
````

Pour supprimer une branche obselète il suffit de mettre -d. (pensez à merge la branche avant de la supprimer, sinon une **erreur** apparaitra !).

````
$ git branch -d branche_a_suppr
````

Dans le cas où vous voulez supprimer la branche **sans merge**(si l'experimentation est ratée).

```
$ git branch -D branche_a_suppr
```

**BRAVO !!** Dorénavant vous savez créer et supprimer des branches ! 
Maintenant nous allons apprendre à les **gérer**.

## Gestion des branches
  
Git met à disposition des outils pour gérer vos branches.

Déjà si vous voulez savoir dans quelle branche vous êtes : 
```
git branch
```
*La branche avec l'étoile est votre branche actuelle (peut être accompagné d'un message explicit).*

Vous pouvez rajouter -v pour voir les derniers commit sur chaque branches : 
```
git branch -v
```

Si jamais vous voulez voir quels branches vous pouvez supprimer c'est à dire les branches qui ont été merged alors ajoutez --merged (--no-merged si vous voulez voir celles avec des travaux en cours).

```
git branch --merged
```

## Renommer une branche

Renommer localement : 
```
$ git branch --move mauvais-nom-de-branche nouveau-nom-de-branche
```

Pour apporter la modification au serveur distant : 
```
$ git push --set-upstream origin nom-de-branche-corrigé
```
Vous avez dorénavant toutes les clés en main pour créer supprimer et gérer les branches.