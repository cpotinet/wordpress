# 1 - Initialisation projet

## 1 - Récupération du projet

1 - Allé au dossier où l'on veut que le projet soit via
cd / => racine du pc en utilisant cmder (utilitaire qui crée une invite de commande et rend plus lisible)

donc pour arriver dans le dossier htdocs de xampp
>cd /xampp/htdocs

2 - Récupérer le projet avec

> git clone https://github.com/cpotinet/wordpress.git

2 - Allé au dossier du répertoire (ici wordpress) dans le même terminal que les autres commandes

> cd worpress

Le projet est récupéré.

## 2 - Mise en place du projet

Création de la base de donnée :

>Importer le fichier user.sql qui créera la base l'utilisateur

>Importer le fichier fazenda.sql qui permettre de peupler la bdd

## 3 - Accés au site

Créer le serveur apache et mysql => xampp par exemple et appuyer sur le bouton start de apache et pareil pour mysql.
pour acceder à la base de donnée :

>localhost/phpmyadmin

OU

>appuyer sur le bouton admin de l'utilisataire

Accéder au site

>localhost/wordpress

ENJOY!

## 2 - GIT

### 1.1 Afin de permettre un envoie sur les sereur de github

Créer une instance de commit en ajoutant les dossier 

Pour plusieurs dossier
>git add . 

pour un fichier (recommandé)
>git add [nomFichier]

### 1.2 - Créer le commit 

Faire un commit des fichiers ajouter
>git commit -m "message à mettre"

=== Permet de mettre un message au commit indispensable pour avoir des traces de l'activité

### 1.3 Push

Envoyer au serveur
>git push

## 1.4 Recupérer le code 

Permet de rapatrier le code rajouter sur son PC en local
>git pull


