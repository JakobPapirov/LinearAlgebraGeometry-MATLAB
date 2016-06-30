%% 1. Addition av matriser
%
function LinAlgAdd
Mat_qty = input('Hur många matriser vill du räkna? ');

	if isempty(Mat_qty) % Om man bara trycker på 'enter'
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
        MatAnsUsr = input('Beräkna summan av ovanstående matriser: '); % Användarens svar
		MatAns = MatA + MatB; % Rätt svar
		if MatAns == MatAnsUsr 
			disp(' ');
			disp('Rätt svar! :D');
			MatAnsCtr(iteration_1, 1) = 1;
		else
			disp(' ');
			disp('Fel svar :(');
			disp('Rätt svar är:');
            disp(MatAns);
	end
disp(['Du fick ' num2str( sum(MatAnsCtr) ) ' rätt, eller ' num2str( (sum(MatAnsCtr)/Mat_qty )*100 ) ' % rätt'])
end
%% Kommentarer
% Â§. Man borde sjÃ¤lv kunna bestÃ¤mma storlek pÃ¥ matrisen
% Â§. Hur ska jag kontrollera om dessa matriser gÃ¥r att addera? kÃ¶r pÃ¥ endast kvadratiska fÃ¶r tillfÃ¤llet
% Â§. eftersom jag inte kollar om matriserna Ã¤r ok sÃ¥ bestÃ¤mmer jag lite sj
% Â§. Hur lÃ¤gger jag till en 'antal rÃ¤tt svar counter'?
% Â§. 