# Convention de commit

Bien nommer un commit sur Git est important pour que les autres développeurs (ou vous-même à l'avenir) puissent rapidement comprendre ce que fait ce commit sans avoir à lire tout le code. 

## Le type

Dans notre convention, nous allons typer nos commits.   
Voici les différents types possibles :

* `feat` : Pour les nouvelles fonctionnalités ou ajouts.
* `fix` : Pour les corrections de bugs
* `refactor` :  Pour les modifications de code qui n'ajoutent ni ne corrigent de fonctionnalités, mais améliorent la structure ou la lisibilité du code.
* `docs` : Pour les mises à jour de la documentation.
* `style` : Pour les modifications de formatage, d'espacement ou de style de code qui n'affectent pas le comportement du code.
* `test` :  Pour les ajouts ou les modifications de tests.
* `chore` : Pour les tâches de maintenance, les mises à jour de dépendances, etc.

## L'issue

Si votre commit répond à la demande d'une issue, alors on précise entre parenthèses le numéro de celle-ci.  

## Le message 

Le message doit être bref et descriptif, expliquant en quelques mots ce que fait le commit.

## Conclusion

Pour conclure nos commits aurons la structure `<type>(<issue>): <message>`.

!!! example "Exemple de commits"

    ```
    feat(36): Ajoute la fonction de connexion
    ```  
    ```
    fix(2): Corrige le bug de validation du mot de passe
    ```
    ```
    refactor(78): Réorganise la structure HTML de la barre de navigation
    ``` 
    ```
    docs(14): Met à jour la documentation d'installation
    ```
    ```
    style(25): Corrige l'indentation et le formatage
    ```
    ```
    test(65): Ajoute des tests pour la fonction de déconnexion
    ```  
    ```
    chore(98): Met à jour les dépendances
    ```