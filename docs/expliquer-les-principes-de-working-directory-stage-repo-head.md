# Qu'est ce que la Working Directory ?

C’est la première zone qu’on utilise, notre copie de travail. Dès qu’on a initialisé Git sur un projet, tout travail versionné (ajouts, suppressions, modifications) a lieu dans cette zone.



### Comment ca marche ?








## Qu'est ce que le Stage ?

 Le stage est une zone dédiée à la préparation des commits : le stage (parfois appelé index). On peut la voir comme une zone tampon dans laquelle on va lister les modifications qu’on souhaite mettre dans notre prochain commit (ajouts, suppressions, tout ou partie des modifications).

Qui dit préparation au commit dit qu’on peut ajouter ou retirer des éléments au stage avant de commiter. 



### Comment ca marche ?

On retrouve donc des commandes à cet effet :

Permet enregistrer les manipulations qu’on souhaite commiter

```shell
git add … 
git stage
```
Pour enregistrer une suppression 

```shell
git rm ... … 
```

Pour retirer des éléments ajoutés au stage

```shell
git restore --staged 
```








## Qu'est ce que le Repo ?







### Comment ca marche ?










## Qu'est ce que le HEAD ?






### Comment ca marche ?