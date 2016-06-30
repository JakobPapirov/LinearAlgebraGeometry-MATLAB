%% 1. Addition av matriser
%
function LinAlgAdd
Mat_qty = input('Hur m�nga matriser vill du r�kna? ');

	if isempty(Mat_qty) % Om man bara trycker p� 'enter'
		Mat_qty = 2;
	end
MatAnsCtr = zeros(Mat_qty, 1);
	for iteration_1 = 1: Mat_qty
		rMatStrlk = randi([2, 3], 1, 1);
		MatA = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn matris med random -10 - 10
		MatB = randi([-10 10], rMatStrlk, rMatStrlk); % Skapar en nxn matris med random -10 - 10
		disp(' ');
        disp(MatA);
        disp(MatB);
        MatAnsUsr = input('Ber�kna summan av ovanst�ende matriser: '); % Anv�ndarens svar
		MatAns = MatA + MatB; % R�tt svar
		if MatAns == MatAnsUsr 
			disp(' ');
			disp('R�tt svar! :D');
			MatAnsCtr(iteration_1, 1) = 1;
		else
			disp(' ');
			disp('Fel svar :(');
			disp('R�tt svar �r:');
            disp(MatAns);
	end
disp(['Du fick ' num2str( sum(MatAnsCtr) ) ' r�tt, eller ' num2str( (sum(MatAnsCtr)/Mat_qty )*100 ) ' % r�tt'])
end
%% Kommentarer
% §. Man borde själv kunna bestämma storlek på matrisen
% §. Hur ska jag kontrollera om dessa matriser går att addera? kör på endast kvadratiska för tillfället
% §. eftersom jag inte kollar om matriserna är ok så bestämmer jag lite sj
% §. Hur lägger jag till en 'antal rätt svar counter'?
% §. 