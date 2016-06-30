%% 8. Determinanter
%
function LinAlgDet
Mat_qty = input('Hur m�nga determinanter vill du r�kna? ');

	if isempty(Mat_qty) % Om man bara trycker p� 'enter'
		Mat_qty = 2;
	end
MatAnsCtr = zeros(Mat_qty); % Skapar vektorn f�r svarsr�knaren
	for iteration_1 = 1: Mat_qty
		rMatStrlk = randi([2, 4], 1, 1); % Slumpar storleken f�r determinanten
		MatA = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn determinanten inom -10 <-> 10
		disp(' ');
        disp(MatA);
        MatAnsUsr = input('Ber�kna determinanten av ovanst�ende matris: '); % Anv�ndarens svar
		MatAns = det(MatA); % R�tt svar
        if MatAns <= 1e-2 % S�ttet MATLAB r�knar ut determinanter
            MatAns = 0; ... G�r att den blir aldrig 0, utan tex e-16
        end
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
disp(['Du fick ' num2str( sum(MatAnsCtr) ) ' r�tt, eller ' num2str( (sum(MatAnsCtr)/Mat_qty )*100 ) ' % r�tt'])
end
%% Kommentarer
% �. M�ste vara kvadratisk, n x n
% �. 