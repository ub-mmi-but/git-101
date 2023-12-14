# Modèle décentralisé

Il existe deux modèles, le centralisé et le décentralisé.

- Centralisé : Centralisation du code source du projet, les utilisateurs doivent se connecter au serveur pour travailler dessus. Exemple : SVN


```mermaid

flowchart TD;
    A[SVN Repository] -- update --> B[Working copy<br/><b>User 3</b><br/>WorkStation/PC#3]
    A -- update --> C[Working copy<br/><b>User 1</b><br/>WorkStation/PC#1]
    A -- update --> D[Working copy<br/><b>User 2</b><br/>WorkStation/PC#2]
    B -- commit --> A
    C -- commit --> A
    D -- commit --> A
    A --- E{{checkout}}
    E --> B
    classDef title fill:#4472C4,stroke:#4472C4,color:#fff;
    classDef checkout color:#ff0000,fill:none,stroke:#ff0000;
    class A title
    class E checkout
```


- Décentraliser : Le code source est hébergé sur un serveur distant, les utilisateurs sont cette fois invité à télécharger les fichiers pour pouvoir travailler de leurs cotés. Exemple : GitHub


```mermaid
---
title: Distributed Version Control / Main Server Repository
---
flowchart TD;
    outside[(SERVER GIT)]
    subgraph 1
        bottom1([Copied Files<br>Collaborator #1 <br> local repository]) -- commit --> top1[(<b>PC 1</b>)]
        top1 -- update --> bottom1
    end
    subgraph 2
        bottom2([Copied Files<br>Collaborator #2 <br> local repository]) -- commit --> top2[(<b>PC 2</b>)]
        top2 -- update --> bottom2
    end
    subgraph 3
        bottom3([Copied Files<br>Collaborator #3 <br> local repository]) -- commit --> top3[(<b>PC 3</b>)]
        top3 -- update --> bottom3
    end
    outside === pp1{{<i>push to server<br> & pull from server</i>}}
    outside === pp2{{<i>push to server<br> & pull from server</i>}}
    outside === pp3{{<i>push to server<br> & pull from server</i>}}
    pp1 === 1
    pp2 === 2
    pp3 === 3
    3 o-- push & pull --o 2
    classDef server color:#ff0000,fill:none,stroke:#ff0000,stroke-width:5;
    classDef lien color:#000,fill:none,stroke:#000;
    classDef pc color:#0000ff,fill:#fff,stroke:#0000ff;
    class outside server
    class pp1,pp2,pp3 lien
    class top1,top2,top3 pc

```

## Avantages et inconvénients du modèle

| Avantages            | Inconvénients                |
| -------------------- | ---------------------------- |
| - Plus rapide        | - Plus complexe              |
| - Plus de back-up    | - Gestion des droits d'accès |
| - Travail hors ligne | - Besoin de synchronisation  |
| - Flexible           |

## .git

`.git` est un répertoire utiliser par git, il contient toutes les informations nécessaire à git pour suivre les données relatives au projet.
