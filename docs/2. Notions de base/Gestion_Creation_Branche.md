# Créer et gérer les branches  

Git permet la création de branches afin de mieux répartir le travail et éviter les erreurs sur la version de production
## Créer des branches  
Il existe plusieurs façons de créer une branche avec Git, la plus commune étant d'utiliser la commande suivante :  
````
git checkout -b nom_de_notre_nouvelle_branche
````

> *La commande `-b` sert à préciser la création d'une nouvelle branche.*
 
!!! example "Exemple"

    ````
    git checkout -b feature main
    ````

Cette commande va créer et diriger directement sur la nouvelle branche.
Si l'on ne souhaite pas aller directement sur la branche, alors la commande suivante convient :  

````
git branch **nom_de_la_branche** 
````

!!! example "Exemple"

    ````
    git branch feature
    ````

Si l'on veut se diriger vers cette branche il faut de nouveau utiliser la commande checkout : 

````
git checkout **nom_de_la_branche** 
````

!!! info "Vous êtes perdu ?"
  
    Pour visualiser toutes les branches, utilisez la commande `git branch -a`.

## Gestion des branches
  
Pour **supprimer** une branche obselète il suffit de mettre -d. (pensez à merge la branche avant de la supprimer, sinon une erreur apparaitra !).

````
$ git branch -d branche_a_suppr
````

!!! warning "Attention !"

    Avant de supprimer une branche, pensez à la *[merge](listingcommand.md/#git-merge)*.

    Si vous voulez supprimer une branche __sans merge__, utilisez la commande `$ git branch -D branche_a_suppr`.


## Situer sa branche

Pour savoir dans quelle branche vous vous trouvez : 

```
git branch
```

> *La branche avec l'étoile est votre branche actuelle.*

!!! info "Info"

    - Vous pouvez ajouter -v pour voir les derniers commit sur chaque branches : 
    ```
    git branch -v
    ```

    - Pour voir les branches "merged"/"no-merged" : 
    ```
    git branch --merged
    ```
    **OU**
    ```
    git branch --no-merged
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

-------------------------------

Vous avez dorénavant toutes les clés en main pour créer supprimer et gérer les branches !