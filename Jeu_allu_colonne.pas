

{//Algorithme:Jeu_de_nim_colonne
VAR
	restant,retrait,col:ENTIER
	L1,L2,L3:BOOLEEN
	J1:CHAINE
DEBUT
	L1<-restant<2
	L2<-restant<5
	L3<-restant<10
	J1<-""
	col<-7
	restant<-16
	retrait<-0
	REPETER //Boucle de saisie
		ECRIRE"Saisissez votre nom"
		LIRE nom
	JUSQU'A LONGUEUR(nom)>= 2
	REPETER(corps du jeu)
		Repeter // boucle de retrait
			ECRIRE"Combien d'alumettes souhaitez vosu retirer"
			LIRE retrait
			SI retrait <4 ET retrait > 0 ET col-retrait >= 0 ALORS
				restant<- restant-retrait
				col<- col -retrait
				SI L1 ALORS
					ECRIRE"Vous avez gagné"
				SINON
					SI col>0 ALORS
						ECRIRE"C'ets au tour du robot "
						REPETER
							retrait <- ALEA(3)+1
						JUSQU'A retrait <4 ET retrait > 0 ET col-retrait >= 0
						restant<- restant-retrait
						col<- col -retrait
						SI L1 ALORS
							ECRIRE"Vous avez perdu"
						SINON
							ECRIRE"Le robot retire ",retrait,"alumettes"
							ECRIRE"Il reste",col,"alumettes sur la colonne "
						FINSI
					FINSI
				FINSI
			SINON
				ECRIRE"La saisie est invalide"
			FINSI
		JUSQU'A col<1
		SI L3 ALORS
			ECRIRE"Vous passez à la 3 ème colonne , il y a 5 allumettes"
			col<- 5
		SINON
			SI L2 ALORS
				ECRIRE"Vous êtes sur la 2 ème colonne, il y a 3 allumettes"
				col<- 3
			FINSI
		FINSI
	JUSQU'A (L1)



}
USES crt;
VAR
	restant,retrait,col,t:INTEGER;
	L1,L2,L3:BOOLEAN;
	J1:STRING;


BEGIN
	clrscr;
	randomize;
	t:=0;
	restant:=16;
	col:=7;
	L1:= restant<1;
	L2:= restant<5;
	L3:= restant<10;
	Repeat// Saisie du nom joueur 
	Writeln('Quel est votre nom Joueur?');
	Readln(J1);
	until (length(J1)>=2);
	Writeln (J1,' vous commencez.');
	Repeat//corps du jeu
		Repeat//Boucle de retrait
			IF ((t=0) OR (t MOD 2 = 0)) THEN
			BEGIN
				Writeln ('Combien d''alumettes souhaitez vous retirer');
				Readln (retrait);
				IF ((retrait<4) AND (retrait>0) AND (col-retrait>=0)) THEN
					BEGIN
						restant:=restant-retrait;
						col:=col-retrait;
						IF (restant<1) THEN
							BEGIN
								Writeln('Vous avez gagne');
							end
						ELSE
							BEGIN
								IF col>0 THEN
									BEGIN
										Writeln('C''est au tour du robot');
										Repeat
											retrait:=RANDOM(3)+1; 
										until ((retrait<4) AND (retrait>0) AND (col-retrait>=0));
										restant:= restant-retrait;
										col:= col-retrait;
										IF (restant<1) THEN
											BEGIN
												Writeln('Vous avez perdu');
											end
										ELSE
											BEGIN
												Writeln('Le robot retire ',retrait,' alumettes');
												Writeln('Il reste ',col,' alumettes sur la ligne');
											end;
									END;
							END;
					END
				ELSE
					BEGIN
					Writeln('Votre saisie est incorrect ');
				END;
			END;
		until (col<1);
		IF ((restant<10) AND (restant>5)) THEN	
			BEGIN
				Writeln('Vous passez a la 3 eme colonne , il y a 5 allumettes');
				col:= 5;
			End
		ELSE
			BEGIN
				IF ((restant<5) AND (restant > 1)) THEN
					BEGIN
						Writeln('Vous etes sur la 2 eme colonne, il y a 3 allumettes');
						col:= 3;
					end;
			end;
	until (restant<=1);
	readln();
END.