# SSH

**SSH** (***Secure Socket Shell***) est un **protocole** de sécurité pour les **communications réseau**, principalement utilisé pour l'accès sécurisé à distance aux ordinateurs et le **transfert de fichiers**. C'est SSH qui vous permet de transférer vos push et pull en toute **sécurité**.
## Setup

Pour être capable d'intéragir avec vos projets GitHub/GitLab, il faut donc une clé SSH.

Afin de la générer, il faut executer cette commande dans le CMD :

```cmd
ssh-keygen -t ed25519 -C "your_email@example.com"
```

!!!warning
    Faites bien attention à correctement choisir et se rappeler les données à rentrer lors de la création de la clé, notamment la 'Passphrase' qui vous sera demandé à l'utilisation de la clé.

    !!!tip Astuce
        Vous pouvez **laissez la passphrase vide**, ce qui est pratique pour éviter de la renseigner à chaque utilisation

!!!info
    Si vous utilisé un systèm d'exploitation ancien que que l'[algorithme EdDSA](https://cryptobook.nakov.com/digital-signatures/eddsa-and-ed25519) ne fonctionne pas, utilisé cette commande :
    `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

Cela vous génèrera une clé privée et une clé publique, qui seront situé à **"C:/Users/Username/.ssh"**, la clé publique aura le même nom que la privée a l'exeptions qu'elle se termine par **".pub"**.

Ensuite il vous faudra mettre votre ***clé publique*** sur votre compte GitHub/GitLab, afin que vos pull et push soient accepté sur votre appareil.

Pour cela, vous aurez à aller dans les paramètres de votre compte : [Mon compte Github](https://github.com/settings/keys), puis dans le menu à gauche, allez dans **SSh and GPS keys**. Ensuite, ajoutez votre clé via le bouton **New SSH key**.