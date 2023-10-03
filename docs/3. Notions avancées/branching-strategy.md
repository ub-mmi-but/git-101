# Branching strategy

Le branching strategy est une méthode d'organisation, comment les branches sont organisé et la façon dont on les fusionnent. 

L'idée principale du branching strategy est de diviser le travail entre plusieurs branches, cela permet un développement plus facile sans conflict entre le travail de chacun, une bonne branching strategy permet une meilleur productivité au sein d'une équipe.

## La stratégie *Git flow*

![Git flow](/assets/gitFlow.png)


La stratégie *git flow* sépare le travail en 5 branches :

- **Main** pour les versions stables.
- **Develop** pour le développement continue.
- Feature, chaque fonctionnalité a implémenter a sa propre branche
- Release pour verifier une nouvelle fonctionnalité avant sa publication
- Hotfix pour les correctifs de bug

Cette méthode permet un développement plus intuitif et simple d'oganisation. On notera que sur le git remote il n'y a que les branches développement et main (les autres sont des branches temporaires)

## La stratégie *Gitlab flow*

![Gitlab flow](/assets/GitLab_flow.png)

*Gitlab flow* est totalement différent, il contient les branches suivantes :

- **Production**

	Représente l'environnement stable où les versions approuvées sont déployées pour les utilisateurs finaux (reçoit des merges de *Pre-production* approuvées).

- **Pre-production**

	Sert à tester les bug et à les résoudre, puis quand tout est résolu et approuvé, la branche est mergé sur *Main* et *Production*.

- **Main**

	Reçoit les features et les fix fait dans la *Pre-production*.

- **Feature**

	Ajout de fonctionnalités, puis merge sur *Main*.

*GitLab Flow* est plus flexible que le *git Flow*, ce qui le rend adapté à une variété de projets, tel que les projets plus petits et ceux qui nécessitent une approche plus légère de la gestion des branches.