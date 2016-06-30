%% 2 | Subtraktion av matris
%
function LinAlgSub
Mat_qty = input('Hur många matriser vill du räkna? ');

	if isempty(Mat_qty) % Om man bara trycker på 'enter'
		Mat_qty = 2;
	end
MatAnsCtr = zeros(Mat_qty, 1); % Skapar vektorn för svarsräknaren
    for iteration_1 = 1: Mat_qty
		rMatStrlk = randi([2, 5], 1, 1); % Slumpar storleken för matriserna
		MatA = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn matris inom -10 <-> 10
		MatB = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn matris inom -10 <-> 10
		disp(' ');
        disp(MatA);
        disp(MatB);
        MatAnsUsr = input('Beräkna differensen av ovanstående matriser: '); % Användarens svar
		MatAns = MatA - MatB; % Rätt svar
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
    end
disp(['Du fick ' num2str( sum(MatAnsCtr) ) ' rätt, eller ' num2str( (sum(MatAnsCtr)/Mat_qty )*100 ) ' % rätt'])
end
%% Kommentarer
% §. Skapar endast kvadratiska matriser. Behöver inte vara så, om två
... matriser har samma storlek (n x m) så är addition och subtraktion ok, 
... men det spelar ingen roll vid övning så länge man kommer ihåg regeln.
% §. 