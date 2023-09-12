# Comment et pourquoi amender un commit ?

## Pourquoi amender un commit ?

Amender un commit est utile pour corriger ses erreurs. Il permet de supprimer le dernier commit et de le remplacer par un nouveau. Trés utile dans le cas où vous avez oublié un fichier ou que le message du commit ne repecte pas la convention de nommage.

## Comment amender un commit ?
 
La commande est simple :

```shell
git commit --amend
```

Voyons les cas de figure classiques :

**Ajout d'un fichier oublié**

Le cas le plus courant est l'oubli d'un fichier, très souvent non suivi et non ajouté à la volée.

La procédure est alors la suivante :

on ajoute le ou les fichiers au stage 
```shell
git add les-chemins 
```
on annule et remplace le commit 
```shell
git commit --amend
```

**Mise a jour du message**

Qui n'a jamais fait de faute de frappe ni oublié une référence importante comme un numéro de ticket dans un message de commit ? 

Dans cette situation on va devoir :

- vérifier que notre stage est vide
- lancer la commande 
```shell
git commit --amend -m 'Nouveau message'
```

⚠️ un amendement réécrit votre commit. Si vous essayez de push, vous aurez un message d'erreur car votre branche est désynchronisée de la branche distante. Utilisez `git push -f` pour forcer.