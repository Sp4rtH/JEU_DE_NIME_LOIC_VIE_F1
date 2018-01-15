




{
VAR
	restant,retrait,col,t:INTEGER
	L1,L2,L3:BOOLEAN
	J1:STRING


DEBUT
	t<-2
	restant:=16
	col<-7
	L1<- restant<1
	L2<- restant<5
	L3<- restant<10
	REPETER// Saisie du nom joueur 
	ECRIRE('Quel est votre nom Joueur?')
	LIRE(J1)
	JUSQU''A (LONGUEUR(J1)>=2)
	ECRIRE (J1,' vous commencez.')
	REPETER//corps du jeu
		REPETER//Boucle de retrait
			SI (t MOD 2 = 0) ALORS			
				ECRIRE ('Combien d''alumettes souhaitez vous retirer')
				LIRE (retrait)
				SI ((retrait<4) ET (retrait>0) ET (col-retrait>=0)) ALORS					
					restant<-restant-retrait
					col<-col-retrait
					t<-t+1
					SI (restant<1) ALORS							
						ECRIRE('Vous avez gagne')
					FINSI																					
				SINON					
					ECRIRE('Votre saisie est incorrect ')	
				FINSI			
			FINSI	
				SI ((col>0) ET (t MOD 2 <> 0)) ALORS				
					ECRIRE('C''est au tour du robot')
					REPETER
						retrait<-RETOM(3)+1 
					JUSQU''A ((retrait<4) ET (retrait>0) ET (col-retrait>=0))
						restant<- restant-retrait
						col<- col-retrait
						t<-t+1
						SI (restant<1) ALORS								
							ECRIRE('Vous avez perdu')							
						SINON								
							ECRIRE('Le robot retire ',retrait,' alumettes')
							ECRIRE('Il reste ',col,' alumettes sur la ligne')																															
						FINSI
				FINSI																	
		JUSQU''A (col<1)
		SI ((restant<10) ET (restant>5)) ALORS				
			ECRIRE('Vous passez a la 3 eme colonne , il y a 5 allumettes')
			col<- 5			
		SINON			
			SI ((restant<5) ET (restant > 1)) ALORS					
				ECRIRE('Vous etes sur la 2 eme colonne, il y a 3 allumettes')
				col<- 3
			FINSI
		FINSI						
	JUSQU''A (restant<=1)	
FIN}




USES crt;
VAR
	restant,retrait,col,t:INTEGER;
	L1,L2,L3:BOOLEAN;
	J1:STRING;


BEGIN
	clrscr;
	randomize;
	t:=2;
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
			IF (t MOD 2 = 0) THEN
			BEGIN
				Writeln ('Combien d''alumettes souhaitez vous retirer');
				Readln (retrait);
				IF ((retrait<4) AND (retrait>0) AND (col-retrait>=0)) THEN
					BEGIN
						restant:=restant-retrait;
						col:=col-retrait;
						t:=t+1;
						IF (restant<1) THEN
							BEGIN
								Writeln('Vous avez gagne');
							end;
					end						
				ELSE
					BEGIN
						Writeln('Votre saisie est incorrect ');
				END;
			END;	
					IF ((col>0) AND (t MOD 2 <> 0)) THEN
						BEGIN
							Writeln('C''est au tour du robot');
							Repeat
								retrait:=RANDOM(3)+1; 
							until ((retrait<4) AND (retrait>0) AND (col-retrait>=0));
							restant:= restant-retrait;
							col:= col-retrait;
							t:=t+1;
							IF (restant<1) THEN
								BEGIN
									Writeln('Vous avez perdu');
								end
							ELSE
								BEGIN
									Writeln('Le robot retire ',retrait,' alumettes');
									Writeln('Il reste ',col,' alumettes sur la ligne');										
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
