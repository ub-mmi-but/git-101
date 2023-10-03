# Les Hooks

Les hooks permettent l'injection de scripts, n'importe quel langage est supporté tant qu'il est exécutable. Ils permettent d'automatiser certaines taches.

Leur exécution est désactivée par défaut avec l'extension `.sample`. Il suffit de supprimer l'extension pour l'activer.

Emplacement de base : `.git/hooks`

Le nom des hooks est conventionnel, chaque fichier de script doit être exécutable. Pour rappel pour rendre un fichier exécutable veuillez utiliser cette commande : ````chmod +x nom_fichier````


Les hooks sont en local et ne sont pas copiés lors du git clone. Il est donc important de bien les configurer pour toute l'équipe et de trouver un moyen pour qu'ils restent à jour pour les membres de l'équipe.

Les hooks `pre-` permettent de modifier l'action.
Les hooks `post-` sont souvent utilisés en tant que notification.

**Vous l'aurez compris les hooks `pre-` s'exécutent avant et les hooks `post-` après une opération.**

### Exemple :

Modifier le message des commits :
    - Utiliser le hook `prepare-commit-msg.sample`
    - Editer le fichier et supprimer le `.sample`

Empecher les erreurs de syntaxe lors d'un commit : 
    - Utiliser le hook `pre-commit.sample`
    - Editer le fichier et supprimer le `.sample`
    - Suivre les étapes de ce guide, en prenant en compte le langage que vous voulez utiliser : [Voir le lien](https://www.codeheroes.fr/2021/10/11/git-lutilisation-des-hooks-avec-husky/)

### Un lien utile :

Voici une liste des hooks existant avec leur utilité sur git : [Voir le lien](https://git-scm.com/docs/githooks)
