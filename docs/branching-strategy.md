# Branching strategy

Le branching strategy est une méthode d'organisation, comment les branches sont organisé et la façon dont on les fusionnent. 

L'idée principale du branching strategy est de diviser le travail entre plusieurs branches, cela permet un développement plus facile sans conflict entre le travail de chacun, une bonne branching strategy permet une meilleur productivité au sein d'une équipe.

## La stratégie *Git flow*

![Git flow](./assets/gitFlow.png)


La stratégie *git flow* sépare le travail en 5 branches :
- **Main** pour les versions stables.
- **Develop** pour le développement continue.
- Feature, chaque fonctionnalité a implémenter a sa propre branche
- Release pour verifier une nouvelle fonctionnalité avant sa publication
- Hotfix pour les correctifs de bug

Cette méthode permet un développement plus intuitif et simple d'oganisation.

## La stratégie *Gitlab flow*

La méthode *GitLab flow* est très similaire a *git flow* avec l'exeption que :
- Il n'y a pas de branche développement
- Il n'y a pas de branche release
- Il est courant de fusionner directement les branches de fonctionnalités dans la branche principale.

*GitLab Flow* est plus flexible que le *git Flow*, ce qui le rend adapté à une variété de projets, tel que les projets plus petits et ceux qui nécessitent une approche plus légère de la gestion des branches.