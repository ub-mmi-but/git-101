Proposition contexte :
Entreprise de tech qui met en place un gros projet d’app web style dashboard ecommerce jsp 

On commence avec création orga du projet 
création des branches
branch strategy 

## Installation d’un projet 

Notre superbe entreprise de développement à pour projet de développer le nouveau site de la licence informatiques (qui était daté). Afin de mener à bien ce projet et de ne pas répéter les erreurs des précédentes équipes nous allons créer un environnement de travail sur github. 

Commençons : 

### I) Création du repository sur Github:

	- création d’un repo distant sur github nommé “Site-des-informatiques”
	- Laisser le repository en public
	- Laisser décocher le Readme (On en créera un plus tard)
	- cliquer sur “Create repository”

Nous avons maintenant un repository sur github, github étant un modèle décentralisé (mettre le lien de la doc)  nous avons besoin de créer un environnement de travail sur notre machine.

### II) Création du repository sur Github:
	- Créer un dossier sur votre pc
	- L’ouvrir via un environnement de développement intégré (IDE) (VsCode)
	- Ouvrir un Terminal
	- Réaliser les commandes suivantes dans ce terminal pour mettre en lien votre dossier local et votre repository Github :
- git init
- git remote add origin https://github.com/User/Site-des-informatiques.git
Maelle a un problème en local, sa branche par défaut s'appelle master tandis que dans le repository distant elle s'appelle main. Pour régler ce problème, Maëlle a la super idée d’utiliser cette commande : 
	- git branch -M main
	(renomme la branche master en main)
Vous pouvez désormais communiquer avec votre repository sur Github !
Pour réaliser le site, nous allons utiliser un framework 





Aurelien l’ami de Maëlle supprime certain fichier de son projet next, dont le fichier qui va nous intéresser “.gitignore”. Maëlle ne le remarque pas et souhaite sauvegarder son projet sur github, elle utilise pour cela les commandes suivantes : 
git add –all (ajoute tous les fichiers dans le futurs commit)
git commit -m “premier commit”
git push origin 



puis ajout de cette base dans le repo distant avec : 
  	- git add 
- git status 
- git commit -m “create environment for the project”
- git status 
- git push origin main

-> vérification sur github	-> création d’une branch feature/layout dans laquelle on créer une base de projet avec un layout puis :
- git add 
- git commit -m “create base layout for the project”
- git push



### CAS DE PROBLÈMES COURANTS

Branche qui change de nom et crée un conflit : 
Merge la branche qui pose problème sur la bonne branche qui respecte la bonne convention de nommage. Supprimer la branche problématique 
Puis commit et push 

Problème pas possible de push car push par dessus notre travail en cours : 
Rebase 
 
Récupérer des fichiers accidentellement supprimés 

Supprimer une branche trop tôt

Commit du code non terminés

Conflits de merge

Erreur Permission Denied (Publickey)

Un fichier de dépendances à été ajouté (git ignore)
