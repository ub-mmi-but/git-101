# SSH

**SSH** (***Secure Socket Shell***) est un **protocole** de sécurité pour les **communications réseau**, principalement utilisé pour l'accès sécurisé à distance aux ordinateurs et le **transfert de fichiers**. C'est SSH qui vous permet de transférer vos push et pull en toute **sécurité**.
## Setup

Pour être capable d'intéragir avec vos projets GitHub/GitLab, il faut donc une clé SSH.

Afin de la générer, il faut executer cette commande dans le CMD :

```cmd
ssh-keygen -t ed25519 -C "your_email@example.com"
```

!!!info
    Si vous utilisé un systèm d'exploitation ancien que que l'[algorithme EdDSA](https://cryptobook.nakov.com/digital-signatures/eddsa-and-ed25519) ne fonctionne pas, 

Cela vous génèrera une clé privée et une clé publique, qui seront situé à **"C:/Users/Username/.ssh"**, la clé publique aura le même nom que la privée a l'exeptions qu'elle se termine par **".pub"**.

Ensuite il vous faudra mettre votre ***clé publique*** sur votre compte GitHub/GitLab, afin que vos pull et push soient accepté sur votre appareil.

