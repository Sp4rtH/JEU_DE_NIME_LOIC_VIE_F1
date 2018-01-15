{
	VAR 
restant,retrait,FIN:ENTIER;
J1,J2:CHAINE;

DEBUT
	restant <- 21;
	J1 <- '';
	J2 <- '';
	FIN <- 0 ;
	ECRIRE("Bienvenue dans le jeu de nime, aussi appele jeu des allumettes le principe est simple");
	ECRIRE("" Il y a donc 21 allumettes , le but du jeu est de retirer "");
	ECRIRE("1,2 ou 3 allumettes chaque tours mais attention , si vous retirez la derniere allumette aie , C''est perdu.");
	ECRIRE("J''espere que vous etes bien accroche.");
	
		REPETER// boucle de saisie des noms des joueurs afin de les nommés pour éviter toute confusion. 
			ECRIRE(' Quel est votre nom ?');
			LIRE (J1);

		JUSQU'A (LONGUEUR (J1)>=1);
	While FIN <> 1 DO
		
			SI FIN = 0 ALORS
				
					REPETER// boucle de retrait du joueur 1 
						ECRIRE (J1,' c''est a vous de jouer , vous souhaitez retirer 1,2 ou 3 allumettes.');
						LIRE (retrait);
					JUSUQ'A ((retrait<=3) AND (retrait>=1));
					restant := restant - retrait ;
					SI (restant<1) ALORS //test de la condition de victoire du joueur 1 
						
							ECRIRE('Desole ',J1,' mais cet fois-ci vous perdez ');
							FIN:=1;
						
					SINON
						
							ECRIRE('Il reste: ',restant,' allumettes.');
					FinSI
				FinSI
			SI FIN =0 ALORS
					
					ECRIRE('C''est au tour du robot');
					retrait:= random(3)+1;
					ECRIRE('Il retire ',retrait);
					restant := restant - retrait ;

					SI (restant<1) ALORS//test de la condition de victoire du joueur 2
						
							ECRIRE('Vous avez vaincu le robot , vous avez gagne.');
							FIN:= 1;
						
					SINON
						
							ECRIRE('Il reste: ',restant,' allumettes.');
					FinSI
				FinSI
		FinSI





	LIRE();
.
}
USES crt;

VAR 
restant,retrait,FIN:INTEGER;
J1,J2:STRING;

BEGIN
	randomize;
	clrscr;	
	restant := 21;
	J1 := '';
	J2 := '';
	FIN := 0 ;
	Writeln('Bienvenue dans le jeu de nime, aussi appele jeu des allumettes le principe est simple');
	Writeln(' Il y a donc 21 allumettes , le but du jeu est de retirer ');
	Writeln('1,2 ou 3 allumettes chaque tours mais attention , si vous retirez la derniere allumette aie , C''est perdu.');
	Writeln('J''espere que vous etes bien accroche.');
	readln();
	
		REPEAT// boucle de saisie des noms des joueurs afin de les nommés pour éviter toute confusion. 
			Writeln(' Quel est votre nom ?');
			readln (J1);

		UNTIL (LENGTH (J1)>=1);
	While FIN <> 1 DO
		BEGIN
			IF FIN = 0 THEN
				BEGIN
					REPEAT// boucle de retrait du joueur 1 
						Writeln(J1,' c''est a vous de jouer , vous souhaitez retirer 1,2 ou 3 allumettes.');
						readln (retrait);
					UNTIL ((retrait<=3) AND (retrait>=1));
					restant := restant - retrait ;
					IF (restant<1) THEN//test de la condition de victoire du joueur 1 
						BEGIN
							Writeln('Desole ',J1,' mais cet fois-ci vous perdez ');
							FIN:=1;
						END
					ELSE
						BEGIN
							Writeln('Il reste: ',restant,' allumettes.');
					END;
				END;
			IF FIN =0 THEN
				BEGIN	
					Writeln('C''est au tour du robot');
					retrait:= random(3)+1;
					Writeln('Il retire ',retrait);
					restant := restant - retrait ;

					IF (restant<1) THEN//test de la condition de victoire du joueur 2
						BEGIN
							Writeln('Vous avez vaincu le robot , vous avez gagne.');
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