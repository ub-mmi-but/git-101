## Installation et Fonctionnement de Docker

## **Qu'est-ce que Docker ?**
Docker est une plateforme open source qui permet de développer, déployer et exécuter des applications dans des conteneurs. 

Docker facilite la création, la distribution et la gestion de ces conteneurs, ce qui en fait un outil très populaire pour la virtualisation d'applications. 

Docker est une technologie qui facilite la mise en place, le déploiement et la gestion d'applications dans des environnements conteneurisés, offrant ainsi une grande flexibilité et une meilleure efficacité dans le développement et l'exploitation des logiciels.

## **Installation**

### Installer sous Windows

Il y a deux manière d'installer Docker :

* De manière graphique

* A partir de ligne de commande

**De manière graphique :**

1. Double-cliquez sur Docker Desktop Installer.exe pour exécuter le programme d’installation.

2. Assurez-vous que l' option Utiliser WSL 2 au lieu d'Hyper-V sur la page de configuration est sélectionnée ou non en fonction de votre choix de backend.

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




