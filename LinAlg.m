%% Linjär algebra och geometri, 5 hp
% Program för övning och rättning av uppgifter inför tentan
% 
%% Housekeeping
run rent
%% Programet körs
MenuState = true;
while MenuState
	disp(' ');
	disp('Välkommen till mitt "Linjär algebra och geometri" - program!');
	disp(' ')
	disp('        Meny');
	disp('========================================');
	disp('0. Introduktion till programmet');
	disp('1. Addition av matriser');
	disp('2. Subtraktion av matris');
	disp('3. Multiplikation av matriser');
	disp('4. Invertering av matriser (division)');
	disp('5. Transponering av matriser');
	disp('6. Matriser och rank');
	disp('7. Matriser och trace');
	disp('8. Determinanter');
	disp('9. Avståndet mellan en punkt och en linje');
	disp('10. Avståndet mellan en punkt och ett plan');
	disp('11. Beräkna normalen av en vektor');
	disp('12. Kryss produkt');
	disp('13. dot produkt');
	disp('999. Avsluta programmet');
	disp('========================================');
    disp(' ');
		val = input('Val: ');
    switch val
%% Fall 0 - 5
    case 0
		% Användarintroduktion till programmet
	case 1
		LinAlgAdd;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 2
		disp(' ');
		LinAlgSub;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 3
		disp(' ');
		LinAlgMul;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 4
		disp(' ');
		LinAlgInv;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
%% Fall 6 - 10
	case 5
		disp(' ');
		LinAlgTran;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 6
		disp(' ');
		LinAlgRan;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 7
		disp(' ');
		LinAlgTrac;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 8
		disp(' ');
		LinAlgDet;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 9
		disp(' ');
		LinAlgApl;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
%% Fall 11 - 15
	case 10
		disp(' ');
		LinAlgApp;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 11
		disp(' ');
		LinAlgNov
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 12
		disp(' ');
		LinAlgCro;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
	case 13
		disp(' ');
		LinAlgDot;
		disp('Du har gått tillbaka till huvudmenyn. Tryck på valfri tangent för att fortsätta.');
		pause;
		home;
%% Fall 15 - 20
	case 999
		disp('Du har valt att avsluta programmet. Tack för att du använt det!');
        close all;
		MenuState = false;
    otherwise
		disp('Du har matat in fel värde. Du kan endast mata in värdena 1 - 14.');
    end
end
%% Kommentarer
% §. 