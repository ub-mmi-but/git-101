# Introduction

Ce projet collaboratif est un cours sur GIT rédigé par les étudiants de 3ème année du BUT MMI de Dijon.

Il permettra aux étudiants d'utiliser Docker, GIT, Markdown, Github...

## Démarrage

Le projet utilise [Mkdocs](https://www.mkdocs.org/) comme générateur de site web.

Plus précisément, nous utilisons [squidfunk/mkdocs-material](https://squidfunk.github.io/mkdocs-material/) pour profiter d'un thème agréable.

Pour démarrer le serveur de développement, Docker doit tourner sur votre poste.

Vous devez ensuite lancer cette commande :

```bash
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```
