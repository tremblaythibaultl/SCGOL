// Adaptaion de Conway's game of Life (https://fr.wikipedia.org/wiki/Jeu_de_la_vie).
// Auteur : Louis Tremblay Thibault
(
f = {
	arg gridSize=32, nbIter=3, clockTime=1000, amp=0.05;
	var grid, tempGrid, iter=0, neighbors, vowels, tempVowels, registers, tempRegisters;

	// initialisation des variables
	grid = Array.newClear(gridSize);
	gridSize.do({
		arg i;
		grid[i] = Array.newClear(gridSize);
		gridSize.do({
			arg j;
			grid[i][j] = Cell.new;
		});
	});
	vowels = [\a, \e, \i, \o, \u];
	registers = [\soprano, \alto, \counterTenor, \tenor, \bass];

	/*
	COLLER LA CONFIGURATION INITIALE ICI
	*/

	r = Routine.new({
		wait(0.01); // délai pour les synths du initial setting ; sans ça, on obtient un race condition entre la création des synths et le premier free.
		nbIter.do({
			// on calcule la somme des 8 voisins en supposant les frontieres toroïdales
			postln("Iteration : " ++ iter);

			//Initialisation de la grille temporaire
			tempGrid = Array.newClear(gridSize);
			gridSize.do({
				arg i;
				tempGrid[i] = Array.newClear(gridSize);
				gridSize.do({
					arg j;
					tempGrid[i][j] = Cell.new;
				});
			});

			gridSize.do({
				arg i;
				gridSize.do({
					arg j;

					if((grid[i][j].on), { // pretty print
						post("1 | ");
					}, {
						post("0 | ");
					});

					neighbors = Array.newClear;

					if ((grid[i-1%gridSize][j-1%gridSize].on), {
						neighbors = neighbors.add(grid[i-1%gridSize][j-1%gridSize]); // on garde en mémoire un pointeur vers les parents pour pouvoir utiliser leur attributs pour la création de l'enfant
					});
					if ((grid[i-1%gridSize][j].on), {
						neighbors = neighbors.add(grid[i-1%gridSize][j]);
					});
					if ((grid[i-1%gridSize][j+1%gridSize].on), {
						neighbors = neighbors.add(grid[i-1%gridSize][j+1%gridSize]);
					});
					if ((grid[i][j-1%gridSize].on), {
						neighbors = neighbors.add(grid[i][j-1%gridSize]);
					});
					if ((grid[i][j+1%gridSize].on), {
						neighbors = neighbors.add(grid[i][j+1%gridSize]);
					});
					if ((grid[i+1%gridSize][j-1%gridSize].on), {
						neighbors = neighbors.add(grid[i+1%gridSize][j-1%gridSize]);
					});
					if ((grid[i+1%gridSize][j].on), {
						neighbors = neighbors.add(grid[i+1%gridSize][j]);
					});
					if ((grid[i+1%gridSize][j+1%gridSize].on), {
						neighbors = neighbors.add(grid[i+1%gridSize][j+1%gridSize]);
					});

					if ((grid[i][j].on), { // si la cellule est active
						if (((neighbors.size < 2) || (neighbors.size > 3)), { // conditions de mort
							grid[i][j].stop;
						}, { // sinon neighbors.sz == 2 ou 3
							tempGrid[i][j] = grid[i][j];
						});
					}, { // sinon si cellule n'est pas présentement active
						if ((neighbors.size == 3), { // trois voisins, la cellule nait
							//On clone la liste des voyelles pour enlever de notre pige celles utilisées par les parents.
							tempVowels = vowels.copy;
							tempRegisters = registers.copy; // idem pour les registres
							neighbors.size.do({
								arg k;
								tempVowels.remove(neighbors[k].vow);
								tempRegisters.remove(neighbors[k].reg);
							});

							tempGrid[i][j].start( // naissance de la nouvelle cellule
								tempVowels.choose,
								tempRegisters.choose,
								exprand(30, 300), // choisi manuellement pour pas avoir du bruit qui écorche mes oreilles
								amp,
								//1,
								LinLin.kr(j, 0, gridSize-1, -1, 1),
								LinLin.kr(i, 0, gridSize-1, -1, 1)*(-1)
							);
						});
					});
				});
				postln(""); // breakline pour le pretty print
			});
			grid = tempGrid;
			iter = iter+1;
			wait(clockTime/1000);
		});
		postln("Stopping all synths");
		gridSize.do({
			arg i;
			gridSize.do({
				arg j;
				if((grid[i][j].on), {
					grid[i][j].stop;
				});
			});
		});
	}).play;
};
)
f.value(12, 49, 500);
s.meter(2, 8);