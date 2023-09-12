
# Les remote repositories

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

