#! /usr/bin

echo '#############################################################'
echo '#####	   TRAVAIL PERSONNEL DE LETUDIANT                 #####'
echo '#####		  Administration Reseau                         #####'
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

read choix
## Les différentes Fonctions du script auxquelles on fera appel
infoUsers()
{
	var1=$(date +'%d');
	dat3j=$((var1 - 3));
	nbrUser=$(cut -d ' ' -f 2 /var/log/auth.log | grep ^dat3j | grep "new user" /var/log/auth.log | cut -d ' ' -f 8|cut -c 6-|cut -d    ,       -f 1|uniq);
	echo $nbrUser\n;
}

XAMPP()
{
	echo 'acquisition de xampp...'
	sudo apt-get install XAMPP
	echo 'lancement de xampp...'
	sudo /opt/lampp/lampp start
}

archivage()
{
	sudo find . -ctime -2> fichier1 | tar cvf fichier1.tar fichier1
}

gestionTache()
{
	vmstat;
}
while (test $choix != 5)
	do
		if(test $choix = 1) then
    	echo "\n";
      echo "Utilisateurs enregistrés il y'a trois jours. "
          infoUsers
      echo ""
    else
    	if(test $choix = 2 ) then
      	echo "\n";
				XAMPP
		
    	if(test $choix = 3 )then
      	echo "Archivage en cours..."
				echo "Veuillez patienter..."
				archivage
	
			if( $choix = 4)then
				echo "\n";
				echo "Informations sur l'utilisation des ressources\n";
				gestionTache
		
			if(test $choix = 5)then
				echo "\n";
				clear; exit;
			fi
		fi
	fi
fi
fi
done

