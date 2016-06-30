%% 2 | Subtraktion av matris
%
function LinAlgSub
Mat_qty = input('Hur m�nga matriser vill du r�kna? ');

	if isempty(Mat_qty) % Om man bara trycker p� 'enter'
		Mat_qty = 2;
	end
MatAnsCtr = zeros(Mat_qty, 1); % Skapar vektorn f�r svarsr�knaren
    for iteration_1 = 1: Mat_qty
		rMatStrlk = randi([2, 5], 1, 1); % Slumpar storleken f�r matriserna
		MatA = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn matris inom -10 <-> 10
		MatB = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn matris inom -10 <-> 10
		disp(' ');
        disp(MatA);
        disp(MatB);
        MatAnsUsr = input('Ber�kna differensen av ovanst�ende matriser: '); % Anv�ndarens svar
		MatAns = MatA - MatB; % R�tt svar
        if MatAns == MatAnsUsr 
			disp(' ');
			disp('R�tt svar! :D');
			MatAnsCtr(iteration_1, 1) = 1; % Sparar det r�tta svaret i r�knaren
        else
			disp(' ');
			disp('Fel svar :(');
			disp('Du svarade:');
            disp(MatAnsUsr);
			disp('R�tt svar �r:');
            disp(MatAns);
            disp('Du r�knade fel med s� h�r mycket:');
            disp( MatAns - MatAnsUsr );
        end
    end
disp(['Du fick ' num2str( sum(MatAnsCtr) ) ' r�tt, eller ' num2str( (sum(MatAnsCtr)/Mat_qty )*100 ) ' % r�tt'])
end
%% Kommentarer
% �. Skapar endast kvadratiska matriser. Beh�ver inte vara s�, om tv�
... matriser har samma storlek (n x m) s� �r addition och subtraktion ok, 
... men det spelar ingen roll vid �vning s� l�nge man kommer ih�g regeln.
% �. 