{Exercice: Jeu des allumettes ou encore appelé jeu de nim se joue à 2 et les deux joueurs se partagent un tas de 21 allulettes à tour de rôle ils doivent retirer une 2 ou trois allumettes du tas le joueur qui retire la dernière allulettes 
à perdu . Ecrire un algorithme qui permet à deux joueurs de jouer sachant que pour gagner vous devez laisser un nombre d'allumette mutiple de 4 ,+1 ainsi le nombre d'allumette diminuant vous laisserai forcément la plus petite postion 
possible c'ets à dire une allumette ,l'autre aura perdu si celui qui prend la dernière gagne à votre tour laissez un nombre d'allumette correspondant à un multiple de 4 , 4/8/12/16.


Algorithme: Jeu_des_allumettes
//But:Simuler le jeu des allumettes pour 2 joueurs
//Principe:
//Entree: 21 allumettes
//Sortie:1 allumettes , un gagnant et un perdant.


VAR:
restant,retrait:ENTIER
J1,J2:CHAINE



DEBUT
	restant <-- 21
	J1 <-- ""
	J2 <-- ""
	ECRIRE"Bienvenue dans le jeu de nime, aussi appelé jeu des allumettes le principe est simple , tout d''abord pour y jouer vous devez être 2 . Il y a donc 21 allumettes , le but du jeu est de retirer 1,2 ou 3 allumettes chaque tours mais
	attention , si vosu retirez la dernière allumette aïe , C''est perdu . J''éspère que vous êtes bien accroché."

	REPETER // boucle de saisie des noms des joueurs afin de les nommés pour éviter toute confusion. 
		ECRIRE"Joueur 1 quel est votre nom ?"
		LIRE J1
		ECRIRE"Joueur 2 quel est votre nom ?"
		LIRE J2
	JUSQU''A (J1>=1 ET J2>= 1 ET J2<>J1)
	TANTQUE restant > 1


		REPETER //boucle de retrait des allumettes du Joueur 1
			ECRIRE J1,"A vous de jouer,vous souhaitez retirer 1, 2 ou 3 allumettes."
			LIRE retrait 
		JUSQU''A (retrait >= 1 OU retrait <= 3  )
		restant <-- restant - retrait 
		SI restant <= 1 ALORS // test de la condition de victoire du J2
			ECRIRE "Désolé ",J1," mais cet fois-ci vous perdez ",J2," c''est une victoire."
		SINON 
			ECRIRE "Il reste ",restant," allumettes. "
		FINSI


		REPETER //boucle de retrait des allumettes du Joueur 2
			ECRIRE J2,"A vous de jouer,vous souhaitez retirer 1, 2 ou 3 allumettes."
			LIRE retrait 
		JUSQU''A (retrait >= 1 OU retrait <= 3  )
		restant <-- restant - retrait
		SI restant <= 1 ALORS // test de la condition de victoire du J1
			ECRIRE "Désolé ",J2," mais cet fois-ci vous perdez ",J1," c''est une victoire."
		SINON 
			ECRIRE "Il reste ",restant," allumettes."
		FINSI

	FIN TANTQUE
FIN.}
USES crt;

VAR 
restant,retrait,FIN:INTEGER;
J1,J2:STRING;

BEGIN
	clrscr;	
	restant := 21;
	J1 := '';
	J2 := '';
	FIN := 0 ;
	Writeln('Bienvenue dans le jeu de nime, aussi appele jeu des allumettes le principe est simple');
	Writeln('Tout d''abord pour y jouer vous devez etre 2 . Il y a donc 21 allumettes , le but du jeu est de retirer ');
	Writeln('1,2 ou 3 allumettes chaque tours mais attention , si vous retirez la derniere allumette aie , C''est perdu.');
	Writeln('J''espere que vous etes bien accroche.');
	readln();
	
		REPEAT// boucle de saisie des noms des joueurs afin de les nommés pour éviter toute confusion. 
			Writeln('Joueur 1 quel est votre nom ?');
			readln (J1);
			Writeln('Joueur 2 quel est votre nom ?');
			readln (J2);	
		UNTIL (((LENGTH (J1))>=1) AND ((LENGTH (J2))>=1) );
	While FIN <> 1 DO
		BEGIN
			IF FIN = 0 THEN
				BEGIN
					REPEAT// boucle de retrait du joueur 1 
						Writeln(J1,' c''est a vous de jouer , vous souhaitez retirer 1,2 ou 3 allumettes.');
						readln (retrait);
					UNTIL ((retrait<=3) AND (retrait>=1));
					restant := restant - retrait ;
					IF (restant<=1) THEN//test de la condition de victoire du joueur 1 
						BEGIN
							Writeln('Desole ',J2,' mais cet fois-ci vous perdez ',J1,' c''est une victoire.');
							FIN:=1;
						END
					ELSE
						BEGIN
							Writeln('Il reste: ',restant,' allumettes.');
					END;
				END;
			IF FIN =0 THEN
				BEGIN	
					REPEAT// boucle de retrait du joueur 2
						Writeln(J2,' c''est a vous de jouer , vous souhaitez retirer 1,2 ou 3 allumettes.');
						readln (retrait);
					UNTIL ((retrait<=3) AND (retrait>=1)) ;
					restant := restant - retrait ;
					IF (restant<=1) THEN//test de la condition de victoire du joueur 2
						BEGIN
							Writeln('Desole ',J1,' mais cet fois-ci vous perdez ',J2,' c''est une victoire.');
							FIN:= 1;
						END
					ELSE
						BEGIN
							Writeln('Il reste: ',restant,' allumettes.');
					END;
				END;
		END;





	readln();
END.

