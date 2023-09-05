## Les Hooks

Les hooks permettent l'injection de scripts, n'importe quel langage est supporté tant qu'il est exécutable. Ils permettent d'automatiser certaines taches.

Leur exécution est désactivée par défaut avec l'extension .sample. Il suffit de supprimer l'extension pour l'activer.

Emplacement de base : .git/hooks

Le nom des hooks est conventionnel, chaque fichier de script doit être exécutable. Pour rappel pour rendre un fichier exécutable veuillez utiliser cette commande : chmod +x nom_fichier

Les hooks sont en local et ne sont pas copié lors du git clone. Il est donc important de bien les configurer pour toute l'équipe et de trouver un moyen pour qu'ils restent à jour pour les membres de l'équipe.

Les hooks pre- permettent de modifier l'action.
Les hooks post- sont souvent utilisés en tant que notification.

Vous l'aurez compris les hooks pre- s'exécutent avant et les hooks post- après une opération.

Exemple :

    Modifier le message des commits avec le hook prepare-commit-msg.sample
    Editer le fichier et supprimer le .sample 

