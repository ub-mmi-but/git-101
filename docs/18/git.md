# Commande de base de GIT

Cette documentation couvre les commandes Git les plus couramment utilisées pour travailler avec des dépôts GitHub.

## Création et Clonage de Dépôts

1) Initialiser un nouveau dépôt local :

```bash
git init
```

2) Cloner un dépôt distant :

```bash
git clone <URL_du_dépôt>
```

## Travailler avec des Modifications

### Ajout d'une modification de la branche au dêpot distant

1) Ajouter des fichiers

    - Ajouter des fichiers à l'index :

        ```bash
        git add <nom_fichier>
        ```

    - Ajouter tous les fichiers modifiés à l'index :

        ```bash
        git add .
        ```

2) Valider les modifications :

    ```bash
    git commit -m "Message de commit"
    ```

3) Pousser sur la branche distante

    ```bash
    git push
    ```

### Visionner les modifications

- Afficher l'état des modifications :

    ```bash
    git status
    ```

- Afficher les différences entre les fichiers :

    ```bash
    git diff
    ```

## Branches

- Créer une nouvelle branche :

    ```bash
    git branch <nom_branche>
    ```

- Changer de branche (création automatique si elle n'existe pas) :

    ```bash
    git checkout <nom_branche>
    ```

- Fusionner une branche dans la branche actuelle :

    ```bash
    git merge <nom_branche>
    ```

## Collaboration

- Récupérer les modifications depuis le dépôt distant :

    ```bash
    git pull
    ```

- Attribuer à l'origine l'url du dépôt :

    ```bash
    git remote add origin <URL_du_dépôt>
    ```

- Pousser les modifications vers le dépôt distant :

    ```bash
    git push origin <nom_branche>
    ```

 - Afficher les commits récents :

    ```bash
    git log
    ```