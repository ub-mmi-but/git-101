# Qu'est ce que la Working Directory ?

C’est la première zone qu’on utilise, notre copie de travail. Dès qu’on a initialisé Git sur un projet, tout travail versionné (ajouts, suppressions, modifications) a lieu dans cette zone. Simplement c'est ca zone de travail sur son ordinateur. 



### En résumé?

En résumé, le working directory est la copie locale de votre projet GitHub où vous effectuez vos modifications avant de les enregistrer sous forme de commits et de les pousser vers le référentiel GitHub distant pour partager vos modifications avec d'autres collaborateurs.






## Qu'est ce que le Stage ?

 Le stage est une zone dédiée à la préparation des commits : le stage (parfois appelé index). On peut la voir comme une zone tampon dans laquelle on va lister les modifications qu’on souhaite mettre dans notre prochain commit (ajouts, suppressions, tout ou partie des modifications).

Qui dit préparation au commit dit qu’on peut ajouter ou retirer des éléments au stage avant de commiter. 



### Comment ca marche ?

On retrouve donc des commandes à cet effet :

Permet enregistrer les manipulations qu’on souhaite commiter

```shell
git add ...
git add ...
git stage
```
Pour enregistrer une suppression 

```shell
git rm ... 
git rm ...  
```

Pour retirer des éléments ajoutés au stage

```shell
git restore --staged 
```








## Qu'est ce que le Repo ?







### Comment ca marche ?










## Qu'est ce que le HEAD ?

On considère le plus souvent HEAD comme un pointeur sur le dernier commit de la branche courante. C'est généralement le cas, mais pas tout le temps.

HEAD est bien un pointeur, une référence vers un emplacement donné de notre historique (un commit si tu préfères). Il a deux fonctions 
principales :

nous repérer dans notre historique;
définir l'endroit depuis lequel nous produisons un commit.

Elle permet de nous indiquer quelle est la branche active, définissant ainsi l'état de notre espace de travail, le commit qui servira de parent à notre prochain commit et la branche qui devra bouger.







### Comment ca marche ?