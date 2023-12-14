# Git reset

## Concept

La commande `git reset` joue un rôle crucial dans la gestion des branches et de l'historique d'un projet Git. Son utilité réside dans sa capacité **à déplacer la branche courante vers un commit spécifique**, engendrant ainsi des modifications potentielles dans l'historique du projet et dans le répertoire de travail.

!!! note

    Pour spécifier le commit vers lequel la branche doit se déplacer, vous pouvez utiliser le nom d'une branche ou un identifiant de commit.
    ```bash
    git reset <nom_de_la_branche>
    git reset <identifiant_de_commit>
    ```

## Mixed Reset (par défaut)

Le **mixed reset**, qui est la configuration par défaut, déplace la branche actuelle vers un commit spécifique tout en annulant le suivi (unstaging) des fichiers. Ainsi, les modifications effectuées restent dans le répertoire de travail mais ne sont pas en cours de staging.

!!! example

    ```bash
    # Déplace la branche actuelle vers le commit spécifique
    # et annule le suivi (unstaging) des fichiers
    git reset HEAD^
    ```

## Soft Reset

Le **soft reset** effectue un déplacement de la branche actuelle vers un commit spécifique, tout en préservant l'état actuel des fichiers dans le répertoire de travail. Cela signifie que les modifications ne sont pas perdues, et les fichiers restent inchangés après le reset.

!!! example

    ```bash
    # Déplace la branche actuelle vers le commit spécifique
    # en préservant les modifications dans le répertoire de travail
    git reset --soft HEAD~2
    ```

## Hard Reset

Le **hard reset** constitue la forme la plus radicale de reset. Il déplace la branche actuelle vers un commit spécifique et supprime toutes les modifications non commitées dans le répertoire de travail. Cette action ramène l'état du projet à celui du commit spécifique, en annulant toutes les modifications non enregistrées.

!!! example

    ```bash
    # Déplace la branche actuelle vers le commit spécifique
    # et supprime toutes les modifications non commitées dans
    # le répertoire de travail
    git reset --hard abc123
    ```

!!! warning

    `git reset` est une option potentiellement **risquée**. Utiliser cette commande présente un risque réel de _perte de travail_, car bien qu'il ne supprime jamais un commit, il peut rendre des commits "orphelins", c'est-a-dire sans accès direct depuis une référence. Des **précautions** doivent être prises lors de l'utilisation de cet outil, car c'est l'une des seules commandes Git susceptibles de perdre votre travail.
