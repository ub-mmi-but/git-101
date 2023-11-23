# Branching strategy

Le branching strategy est une méthode d'organisation, comment les branches sont organisé et la façon dont on les fusionnent.

L'idée principale du branching strategy est de diviser le travail entre plusieurs branches, cela permet un développement plus facile sans conflict entre le travail de chacun, une bonne branching strategy permet une meilleur productivité au sein d'une équipe.

## La stratégie _Git flow_

<!--![Git flow](/assets/gitFlow.png) -->

```mermaid
%%{init: { 'theme': 'base', 'themeVariables': {
              'git0': '#72BE49',
              'git1': '#1167BD',
              'git2': '#B26EDF',
              'git3': '#B26EDF',
              'git4': '#F4D23E',
              'git5': '#C62817',
              'git6': '#ff00ff',
              'git7': '#00ffff',
              'gitBranchLabel0': '#ffffff',
              'gitBranchLabel1': '#ffffff',
              'gitBranchLabel2': '#ffffff',
              'gitBranchLabel3': '#ffffff',
              'gitBranchLabel4': '#ffffff',
              'gitBranchLabel5': '#ffffff',
              'gitBranchLabel6': '#ffffff',
              'gitBranchLabel7': '#ffffff',
              'gitBranchLabel8': '#ffffff',
              'gitBranchLabel9': '#ffffff'
       } } }%%
gitGraph
   commit id:"v0.5"
   branch develop
   checkout develop
   commit id:"dev_1"
   branch feature_1
   checkout feature_1
   commit id:"feature_1.1"
   branch feature_2
   checkout feature_2
   commit id:"feature_2.1"
   commit id:"feature_2.2"
   commit id:"feature_2.3"
   checkout feature_1
   commit id:"feature_1.2"
   checkout develop
   commit id:"dev_2"
   branch release
   checkout release
   commit id:"release_v1"
   commit id:"release_v2"
   checkout develop
   merge release
   merge feature_1
   merge feature_2
   checkout main
   merge release
   branch hotfix
   checkout hotfix
   commit id:"hotfix_v1"
   checkout develop
   merge hotfix
   checkout main
   merge hotfix




```

La stratégie _git flow_ sépare le travail en 5 branches :

- **Main** pour les versions stables.
- **Develop** pour le développement continue.
- Feature, chaque fonctionnalité a implémenter a sa propre branche
- Release pour verifier une nouvelle fonctionnalité avant sa publication
- Hotfix pour les correctifs de bug

Cette méthode permet un développement plus intuitif et simple d'oganisation. On notera que sur le git remote il n'y a que les branches développement et main (les autres sont des branches temporaires)

## La stratégie _Gitlab flow_

```mermaid
%%{init: { 'logLevel': 'debug', 'theme': 'base' } }%%
gitGraph
   commit id:"v0.5" tag:"get features merge"
   branch pre_production
   checkout pre_production
   commit tag:"deployed from main" id:"pp1"
   branch production
   checkout production
   commit tag:"deployed from pre_production" id:"deploy_v1"
   checkout main
   commit id:"v1"
   checkout pre_production
   merge main tag:"deployed from main"
   checkout production
   commit tag:"deployed from pre_production" id:"deploy_v2"
   checkout main
   commit id:"v2"


```

_Gitlab flow_ est totalement différent, il contient les branches suivantes :

- **Production**

  Représente l'environnement stable où les versions approuvées sont déployées pour les utilisateurs finaux (reçoit des merges de _Pre-production_ approuvées).

- **Pre-production**

  Sert à tester les bug et à les résoudre, puis quand tout est résolu et approuvé, la branche est mergé sur _Main_ et _Production_.

- **Main**

  Reçoit les features et les fix fait dans la _Pre-production_.

- **Feature**

  Ajout de fonctionnalités, puis merge sur _Main_.

_GitLab Flow_ est plus flexible que le _git Flow_, ce qui le rend adapté à une variété de projets, tel que les projets plus petits et ceux qui nécessitent une approche plus légère de la gestion des branches.
