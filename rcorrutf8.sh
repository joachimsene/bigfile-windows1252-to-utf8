#!/bin/bash

# Vérifie s'il y a des arguments
if [ $# -eq 0 ]; then
	echo Usage :
	echo $0 fichier.txt
	echo
	echo Remplace dans fichier.txt des caractères multiples réencodés par erreur.
	echo
	echo Ã¡ par à
	echo Ã‰ par É
	echo â€¢ par •
	echo etc.
	echo
	echo Attention : le fichier source est un fichier UTF-8 aussi
	echo 

else
    # Si un argument est fourni
	echo Remplacement des caractères Windows-1252 encodés en caractères corrompus multiples dans un fichier texte, par des caractères UTF-8 simples
	echo ---- C\'est parti -----
	echo Les A minuscules
	sed -i  s/Ã /à/g $1
	sed -i  s/Ã¡/á/g $1
	sed -i  s/Ã¢/â/g $1
	sed -i  s/Ã£/ã/g $1
	sed -i  s/Ã¤/ä/g $1
	sed -i  s/Ã¥/å/g $1

	echo Les A majuscules
	sed -i  s/Ã€/À/g $1
	sed -i  s/Ã/Á/g $1
	sed -i  s/Ã„/Ä/g $1
	sed -i  s/Ã‚/Â/g $1
	sed -i  s/Ãƒ/Ã/g $1

	echo Les E minuscules
	sed -i  s/Ãª/ê/g $1
	sed -i  s/Ã©/é/g $1 
	sed -i  s/Ã¨/è/g $1
	sed -i  s/Ã«/ë/g $1

	echo Les E majuscules
	sed -i  s/Ã‰/É/g $1
	sed -i  s/Ãˆ/È/g $1
	sed -i  s/ÃŠ/Ê/g $1
	sed -i  s/Ã‹/Ë/g $1

	echo Les I minuscules
	sed -i  s/Ã¯/ï/g $1
	sed -i  s/Ã®/î/g $1
	sed -i  s/Ã\\*/í/g $1
	sed -i  s/Ã¬/ì/g $1
	sed -i  s/Ã­/í/g $1

	echo Les I majuscules
	sed -i  s/ÃŽ/Î/g $1
	sed -i  s/Ã/Ï/g $1

	echo Les O minuscules
	sed -i  s/Ã²/ò/g $1
	sed -i  s/Ã³/ó/g $1
	sed -i  s/Ã´/ô/g $1
	sed -i  s/Ãµ/õ/g $1
	sed -i  s/Ã¶/ö/g $1

	echo Les O majuscules
	sed -i  s/Ã”/Ô/g $1
	sed -i  s/Ã˜/Ø/g $1
	sed -i  s/Ã–/Ö/g $1
	sed -i  s/Ã“/Ó/g $1

	echo Les U minuscules
	sed -i  s/Ã¹/ù/g $1
	sed -i  s/Ãº/ú/g $1
	sed -i  s/Ã»/û/g $1
	sed -i  s/Ã¼/ü/g $1

	echo Les U majuscules
	sed -i  s/Ãœ/Ü/g $1
	sed -i  s/Ã™/Ù/g $1
	sed -i  s/Ã›/Û/g $1

	echo Les Y minuscules
	sed -i  s/Ã½/ý/g $1
	sed -i  s/Ã¿/ÿ/g $1

	echo Les Y majuscules

	echo Les e et a dans O maj et min
	sed -i  s/Ã¦/æ/g $1
	sed -i  s/Å“/œ/g $1
	sed -i  s/Ã†/Æ/g $1
	sed -i s/Å’/Œ/g $1


	echo Les Consonnes minuscules
	sed -i  s/Ã§/ç/g $1
	sed -i  s/Ã±/ñ/g $1
	sed -i  s/Ã±/ñ/g $1
	sed -i  s/Ã¸/ø/g $1
	sed -i  s/Å¾/ž/g $1


	echo Les Consonnes majuscules
	sed -i  s/Ã‡/Ç/g $1
	sed -i  s/Ã‘/Ñ/g $1

	echo La ponctuation 
	sed -i  s/â€”/—/g $1
	sed -i  s/â€/…/g $1
	sed -i  s/â€“/–/g $1
	sed -i  s/â€¢/•/g $1
	sed -i  s/Ëœ/˜/g $1
	sed -i  s/Â¡/¡/g $1
	sed -i  s/Â¨/¨/g $1
	sed -i  s/Â¶/¶/g $1
	sed -i  s/Â·/·/g $1
	sed -i s/Â¿/¿/g $1
	sed -i s/…¦/…/g $1

	echo La ponctuation quotes etc.
	sed -i  s/Â«/«/g $1
	sed -i  s/Â»/»/g $1
	sed -i  s/â€‰/ /g $1 #thin space
	sed -i  s/â€˜/‘/g $1
	sed -i  s/â€™/’/g $1
	sed -i  s/…™/’/g $1 
	sed -i  s/…œ/“/g $1
	sed -i  s/…/”/g $1
	sed -i  s/Â\‘/ \‘/g $1
	sed -i  s/ Â\‘/ \‘/g $1
	sed -i  s/Â‘/‘/g $1

	echo Les sigles, signes 
	echo ... monnaies
	sed -i  s/Â¢/¢/g $1
	sed -i  s/Â£/£/g $1
	sed -i  s/Â¥/¥/g $1

	echo ... commercial
	sed -i  s/Â®/®/g $1
	sed -i  s/Â©/©/g $1
	sed -i  s/â„¢/™/g $1

	echo ... clavier
	sed -i  s/Â¤/¤/g $1
	sed -i  s/Â¦/¦/g $1
	sed -i  s/Â§/§/g $1
	sed -i  s/Â°/°/g $1
	sed -i  s/Ã¾/þ/g $1

	echo ... maths
	sed -i  s/Ã·/÷/g $1
	sed -i  s/Ã—/×/g $1
	sed -i  s/Â±/±/g $1
	sed -i  s/Âº/º/g $1
	sed -i  s/Â¹/¹/g $1
	sed -i  s/Â²/²/g $1
	sed -i  s/Â³/³/g $1
	sed -i  s/Â¼/¼/g $1
	sed -i  s/Â½/½/g $1
	sed -i  s/Â¾/¾/g $1
	sed -i  s/Âµ/µ/g $1
	sed -i  s/ÃŸ/ß/g $1

	echo Insécables
	sed -i  s/Â / /g $1

	echo accents Vietnamiens
	sed -i s/Ä/Đ/g $1
	sed -i s/á»•/ổ/g $1
	sed -i s/á»›/ớ/g $1
	sed -i s/áº£/ả/g $1
	sed -i s/Æ°/ư/g $1
	sed -i s/Æ¡/ơ/g $1
	sed -i s/á»…/ễ/g $1
	sed -i s/á»‡/ệ/g $1
	sed -i s/áº¡/ạ/g $1
	sed -i s/á»‹/ị/g $1
	sed -i s/Ä©/ĩ/g $1
	sed -i s/Ä‘/đ/g $1
	sed -i s/áº¥/ấ/g $1
	sed -i s/á»¥/ụ/g $1
	sed -i s/á»Ÿ/ở/g $1
	sed -i s/á»‘/ố/g $1
	sed -i s/á»£/ợ/g $1

	echo ---- C\'est fini ----

	fi

# Sortie du script
exit 0


# JS Pour Remue.Net 29.4.2024
# ------------------------------------------------------
# Pour tester sur des morceaux de fichier
# 
# Ne conserver que les 60 premières lignes du fichier : 
# sed '61,$d' filesrc.sql > filedest.sql
#
# Ne conserver que les lignes 1000 à 1130 du fichier : 
# sed '1,999d' filesec.sql > filetmp.sql
# sed '131,$d' filetmp.sql > filedest.sql
# rm filetmp.sql
# 
# Ou faire une recherche sur un n°article avec 
# less fichier.sql
# Puis taper / pour chercher un terme.
# Pour chercher un id article 4231 chercher la chaîne : 
# \(4231
# cela va trouver l'endroit où il y a : VALUES (4231, 
#
# Pour aller au terme trouvé suivant, taper n
#