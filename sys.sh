#! /usr/bin

echo '#############################################################'
echo '#####	   TRAVAIL PERSONNEL DE LETUDIANT             #####'
echo '#####		Administration Reseau                 #####'
echo '#####   Fait par HAMZA Moustapha Ben Hamoa 15B701FS     #####'
echo '#############################################################'


echo '		BIENVENUE SUR MON PROJET SYS		'
echo '    Veuillez faire votre choix parmi les options \n'

echo '1-    Informations des utilisateurs enregistrés il ya 3jours'
echo '2-    Acquisiton, installation et lancement de XAMPP'
echo '3-    Archivage des éléments du répertoire personnel ayant été modifié'
echo '     par lutilisateur sudoer il ya 2jours dans un périphérique externe'
echo '4-    Information sur lutilisation du disque, de la mémoire'
echo '     du processeur et de la swap'
echo '5-    Quitter'

echo 'acquisition de xampp...'
sudo apt-get install XAMPP
echo 'lancement de xampp...'
sudo /opt/lampp/lampp start
