# BUT MMI 3ème année, GIT 2023

Ce projet collaboratif est une documentation sur l'utilisation de GIT, rédigée de manière collaborative par les étudiants de 3ème année du BUT MMI de Dijon.

Il permettra aux étudiants d'utiliser Docker, GIT, Markdown, Github...

## Démarrage

Le projet utilise [Mkdocs](https://www.mkdocs.org/) comme générateur de site web.

Plus précisément, nous utilisons [squidfunk/mkdocs-material](https://squidfunk.github.io/mkdocs-material/) pour profiter d'un thème agréable.

Pour démarrer le serveur de développement, Docker doit tourner sur votre poste.

Vous devez ensuite lancer cette commande :

```bash
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```


## Footnotes

Pour faire une footnote il faut deux choses, une mentions de la footnote :
```markdown
Footnote[^1].
Footnote avec plusieurs lignes[^2].
Footnote nommé[^nom]
```
Et notre note :
```markdown
[^1]: texte référencé.
[^2]: On peut mettre deux espaces.
   Pour avoir une autre ligne a notre footnote.
[^nom]: Les footnotes nommés apparaissent toujours comme des nombres mais sont plus faciles a identifier lors de modifications
```


Footnote[^1].
Footnote avec plusieurs lignes[^2].
See note here[^nom]


[^1]: texte référencé.
[^2]: On peut mettre deux espaces.
   Pour avoir une autre ligne a notre footnote.
[^nom]: Les footnotes nommés apparaissent toujours comme des nombres mais sont plus faciles a identifier lors de modifications