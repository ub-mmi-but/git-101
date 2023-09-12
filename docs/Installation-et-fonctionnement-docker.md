## Installation et Fonctionnement de Docker

## **Qu'est-ce que Docker ?**
Docker est une plateforme open source qui permet de développer, déployer et exécuter des applications dans des conteneurs. 

Docker facilite la création, la distribution et la gestion de ces conteneurs, ce qui en fait un outil très populaire pour la virtualisation d'applications. 

Docker est une technologie qui facilite la mise en place, le déploiement et la gestion d'applications dans des environnements conteneurisés, offrant ainsi une grande flexibilité et une meilleure efficacité dans le développement et l'exploitation des logiciels.

## **Installation**

### Installer sous Windows

Il y a deux manières d'installer Docker :

* De manière graphique

* A partir de ligne de commande

**De manière graphique :**

1. Double-cliquez sur Docker Desktop Installer.exe pour exécuter le programme d’installation.

2. Assurez-vous que l'option Utiliser WSL 2 au lieu d'Hyper-V sur la page de configuration est sélectionnée ou non en fonction de votre choix de backend.

3. Suivez les instructions de l'assistant d'installation pour autoriser le programme d'installation et poursuivre l'installation.

4. Une fois l'installation réussie, sélectionnez Fermer pour terminer le processus d'installation.

5. Si votre compte administrateur est différent de votre compte utilisateur, vous devez ajouter l'utilisateur au groupe docker-users . Exécutez Computer Management en tant qu'administrateur et accédez à Local Users and Groups > Groups > docker-users . Cliquez avec le bouton droit pour ajouter l'utilisateur au groupe. Déconnectez-vous et reconnectez-vous pour que les modifications prennent effet.

**A partir de ligne de commande :**

Après avoir téléchargé Docker Desktop Installer.exe , exécutez la commande suivante dans un terminal pour installer Docker Desktop :

```shell
$ "Docker Desktop Installer.exe" install
```

Si vous utilisez PowerShell, vous devez l'exécuter comme :

```shell
Start-Process 'Docker Desktop Installer.exe' -Wait install
```

Si vous utilisez l'invite de commande Windows :

```shell
start /w "" "Docker Desktop Installer.exe" install
```

Si votre compte administrateur est différent de votre compte utilisateur, vous devez ajouter l'utilisateur au groupe docker-users :

```shell
$ net localgroup docker-users <user> /add
```

## **Fonctionnement**

### Images Docker

Les images Docker sont des modèles d'applications contenant tous les éléments nécessaires à leur exécution, tels que le code source, les dépendances, les bibliothèques, etc. Ces images sont stockées dans un registre Docker (comme Docker Hub).

### Conteneurs Docker

Les conteneurs Docker sont des instances en cours d'exécution des images Docker. Ils sont légers, isolés les uns des autres et partagent le noyau du système d'exploitation sous-jacent.

### Volumes Docker

La vue Volumes dans Docker Dashboard vous permet de créer et de supprimer facilement des volumes et de voir lesquels sont utilisés. Vous pouvez également voir quel conteneur utilise un volume spécifique et explorer les fichiers et dossiers de vos volumes.

**Gérez vos volumes**

Utilisez le champ Rechercher pour rechercher un volume spécifique.

Vous pouvez trier les volumes par :

 - Nom
 - Date créée
 - Taille

Dans le menu Plus d'options à droite de la barre de recherche, vous pouvez choisir les informations de volume à afficher.

**Inspecter un volume**

Pour explorer les détails d'un volume spécifique, sélectionnez un volume dans la liste. Cela ouvre la vue détaillée.

- L' onglet En cours d'utilisation affiche le nom du conteneur à l'aide du volume, le nom de l'image, le numéro de port utilisé par le conteneur et la cible. Une cible est un chemin à l'intérieur d'un conteneur qui donne accès aux fichiers du volume.

- L' onglet Données affiche les fichiers et dossiers dans le volume et la taille du fichier. Pour enregistrer un fichier ou un dossier, survolez le fichier ou le dossier et sélectionnez dans le menu Plus d'options.

**Supprimer un volume**

La suppression d'un volume supprime le volume et toutes ses données.

Pour supprimer un volume, passez la souris sur le volume, puis sélectionnez l' icône **Supprimer**. Vous pouvez également sélectionner le volume dans la liste, puis sélectionner le bouton **Supprimer**.