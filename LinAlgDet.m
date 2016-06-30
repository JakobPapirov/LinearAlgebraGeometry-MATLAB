%% 8. Determinanter
%
function LinAlgDet
Mat_qty = input('Hur många determinanter vill du räkna? ');

	if isempty(Mat_qty) % Om man bara trycker på 'enter'
		Mat_qty = 2;
	end
MatAnsCtr = zeros(Mat_qty); % Skapar vektorn för svarsräknaren
	for iteration_1 = 1: Mat_qty
		rMatStrlk = randi([2, 4], 1, 1); % Slumpar storleken för determinanten
		MatA = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn determinanten inom -10 <-> 10
		disp(' ');
        disp(MatA);
        MatAnsUsr = input('Beräkna determinanten av ovanstående matris: '); % Användarens svar
		MatAns = det(MatA); % Rätt svar
        if MatAns <= 1e-2 % Sättet MATLAB räknar ut determinanter
            MatAns = 0; ... Gör att den blir aldrig 0, utan tex e-16
        end
		if MatAns == MatAnsUsr 
			disp(' ');
			disp('Rätt svar! :D');
			MatAnsCtr(iteration_1, 1) = 1; % Sparar det rätta svaret i räknaren
		else
			disp(' ');
			disp('Fel svar :(');
            disp('Du svarade:');
            disp(MatAnsUsr);
			disp('Rätt svar är:');
            disp(MatAns);
            disp('Du räknade fel med så här mycket:');
            disp( MatAns - MatAnsUsr );
	end
disp(['Du fick ' num2str( sum(MatAnsCtr) ) ' rätt, eller ' num2str( (sum(MatAnsCtr)/Mat_qty )*100 ) ' % rätt'])
end
%% Kommentarer
% §. Måste vara kvadratisk, n x n
% §. 