# Introduction

Pour comprendre pleinement la dynamique de Git, il est essentiel de saisir comment working directory, le stage, le repo et HEAD sont intrinsèquement liés. Imaginez-les comme les pièces interconnectées d'une machine puissante de gestion de versions.

![Schema liant le working directory avec le stage et le repo](image.png)

## Qu'est ce que la Working Directory ?

C’est la première zone qu’on utilise, notre copie de travail. Dès qu’on a initialisé Git sur un projet, tout travail versionné (ajouts, suppressions, modifications) a lieu dans cette zone. Simplement c'est ca zone de travail sur son ordinateur. 



### En résumé ?

En résumé, le working directory est la copie locale de votre projet GitHub où vous effectuez vos modifications avant de les enregistrer sous forme de commits et de les pousser vers le référentiel GitHub distant pour partager vos modifications avec d'autres collaborateurs.






## Qu'est ce que le Stage ?

 Le stage est une zone dédiée à la préparation des commits : le stage. On peut la voir comme une zone tampon dans laquelle on va lister les modifications qu’on souhaite mettre dans notre prochain commit (ajouts, suppressions, tout ou partie des modifications).

Qui dit préparation au commit dit qu’on peut ajouter ou retirer des éléments au stage avant de commiter. 



### Comment ca marche ?

On retrouve donc des commandes à cet effet :

Permet enregistrer les manipulations qu’on souhaite commiter :

```shell
git add ...
git add ...
git stage
```
Pour enregistrer une suppression :

```shell
git rm ... 
git rm ...  
```

Pour retirer des éléments ajoutés au stage :

```shell
git restore --staged 
```


## Qu'est ce que le Repo ?







### Comment ca marche ?










## Qu'est ce que le HEAD ?

On considère le plus souvent HEAD comme un pointeur sur le dernier commit de la branche courante. C'est généralement le cas, mais pas tout le temps.

HEAD est bien un pointeur, une référence vers un emplacement donné de notre historique (un commit si tu préfères). Il a deux fonctions 
principales :

- nous repérer dans notre historique;
- définir l'endroit depuis lequel nous produisons un commit.

Elle permet de nous indiquer quelle est la branche active, définissant ainsi l'état de notre espace de travail, le commit qui servira de parent à notre prochain commit et la branche qui devra bouger.





### Comment ca marche ?

HEAD est représenté par le fichier .git/HEAD. Si on regarde son contenu, on trouvera toujours une seule ligne dont le format sera le plus souvent celui-ci :

```shell
ref: refs/heads/nom-de-branche
```

En d’autre termes, il contient généralement une référence à la branche courante. En fait, c’est justement parce qu’il contient la référence d’une branche, que celle-ci est considérée comme la branche courante / active.

Tu peux observer son comportement si tu demandes à Git de basculer sur une autre branche :

```shell
git switch autre-branche
```

Tu verras alors le fichier .git/HEAD pointer vers cette autre branche :

```shell
ref: refs/heads/autre-branche
```

Si on pousse un peu et qu’on crée un commit depuis cet emplacement, on verra que cette référence n’aura pas changé, HEAD pointera toujours sur autre-branche. C’est la valeur de cette étiquette de branche qui aura bougé (seulement parce qu’elle était désignée active par HEAD).