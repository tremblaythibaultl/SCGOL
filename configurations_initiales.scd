// Configurations initiales
// Auteur : Louis Tremblay Thibault
// --------------------------------
// BEACON (période 2)
// --------------------------------
grid[1][1].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);
grid[1][2].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(2, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);
grid[2][1].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(2, 0, gridSize, -1, 1)*(-1)
);
grid[4][4].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(4, 0, gridSize, -1, 1),
	LinLin.kr(4, 0, gridSize, -1, 1)*(-1)
);
grid[3][4].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(4, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[4][3].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(3, 0, gridSize, -1, 1),
	LinLin.kr(4, 0, gridSize, -1, 1)*(-1)
);
// --------------------------------
// LIGHT-WEIGHT SPACESHIP (période 4, se déplace dans l'espace horizontalement)
// --------------------------------
grid[1][0].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(0, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);
grid[2][0].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(0, 0, gridSize, -1, 1),
	LinLin.kr(2, 0, gridSize, -1, 1)*(-1)
);
grid[3][0].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(0, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[0][1].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(0, 0, gridSize, -1, 1)*(-1)
);
grid[3][1].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[3][2].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(2, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[3][3].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(3, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[0][4].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(4, 0, gridSize, -1, 1),
	LinLin.kr(0, 0, gridSize, -1, 1)*(-1)
);
grid[2][4].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(4, 0, gridSize, -1, 1),
	LinLin.kr(2, 0, gridSize, -1, 1)*(-1)
);
// --------------------------------
// GLIDER (période 4, se déplace dans l'espace en diagonale)
// --------------------------------
grid[0][0].start(
	\a,
	\soprano,
	100,
	amp,
	LinLin.kr(0, 0, gridSize, -1, 1),
	LinLin.kr(0, 0, gridSize, -1, 1)*(-1)
);
grid[0][2].start(
	\e,
	\alto,
	100,
	amp,
	LinLin.kr(2, 0, gridSize, -1, 1),
	LinLin.kr(0, 0, 31, -1, 1)*(-1)
);
	grid[1][1].start(
	\i,
	\counterTenor,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, 31, -1, 1)*(-1)
);
	grid[1][2].start(
	\o,
	\tenor,
	100,
	amp,
	LinLin.kr(2, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, 31, -1, 1)*(-1)
);
	grid[2][1].start(
	\u,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(2, 0, 31, -1, 1)*(-1)
);
// --------------------------------
// GLIDER GUN (créé un nouveau glider à chaque 15 itérations)
// Les différences ne s'entendent que sur un très grande grille après plusieurs itérations
// --------------------------------
grid[5][1].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(5, 0, gridSize, -1, 1)*(-1)
);
grid[5][2].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(2, 0, gridSize, -1, 1),
	LinLin.kr(5, 0, gridSize, -1, 1)*(-1)
);
grid[6][1].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[6][2].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(2, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[3][13].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(13, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[4][12].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(12, 0, gridSize, -1, 1),
	LinLin.kr(4, 0, gridSize, -1, 1)*(-1)
);
grid[3][14].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(14, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[5][11].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(11, 0, gridSize, -1, 1),
	LinLin.kr(5, 0, gridSize, -1, 1)*(-1)
);
grid[6][11].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(11, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[7][11].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(11, 0, gridSize, -1, 1),
	LinLin.kr(7, 0, gridSize, -1, 1)*(-1)
);
grid[8][12].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(12, 0, gridSize, -1, 1),
	LinLin.kr(8, 0, gridSize, -1, 1)*(-1)
);
grid[9][13].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(13, 0, gridSize, -1, 1),
	LinLin.kr(9, 0, gridSize, -1, 1)*(-1)
);
grid[9][14].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(14, 0, gridSize, -1, 1),
	LinLin.kr(9, 0, gridSize, -1, 1)*(-1)
);
grid[6][15].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(15, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[4][16].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(16, 0, gridSize, -1, 1),
	LinLin.kr(4, 0, gridSize, -1, 1)*(-1)
);
grid[8][16].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(16, 0, gridSize, -1, 1),
	LinLin.kr(8, 0, gridSize, -1, 1)*(-1)
);
grid[5][17].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(17, 0, gridSize, -1, 1),
	LinLin.kr(5, 0, gridSize, -1, 1)*(-1)
);
grid[6][17].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(17, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[7][17].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(17, 0, gridSize, -1, 1),
	LinLin.kr(7, 0, gridSize, -1, 1)*(-1)
);
grid[6][18].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(18, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[3][21].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(21, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[4][21].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(21, 0, gridSize, -1, 1),
	LinLin.kr(4, 0, gridSize, -1, 1)*(-1)
);
grid[5][21].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(21, 0, gridSize, -1, 1),
	LinLin.kr(5, 0, gridSize, -1, 1)*(-1)
);
grid[3][22].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(22, 0, gridSize, -1, 1),
	LinLin.kr(3, 0, gridSize, -1, 1)*(-1)
);
grid[4][22].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(22, 0, gridSize, -1, 1),
	LinLin.kr(4, 0, gridSize, -1, 1)*(-1)
);
grid[5][22].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(22, 0, gridSize, -1, 1),
	LinLin.kr(5, 0, gridSize, -1, 1)*(-1)
);
grid[2][23].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(23, 0, gridSize, -1, 1),
	LinLin.kr(2, 0, gridSize, -1, 1)*(-1)
);
grid[6][23].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(23, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[1][25].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(25, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);
grid[2][25].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(25, 0, gridSize, -1, 1),
	LinLin.kr(2, 0, gridSize, -1, 1)*(-1)
);
grid[6][25].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(25, 0, gridSize, -1, 1),
	LinLin.kr(6, 0, gridSize, -1, 1)*(-1)
);
grid[7][25].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(25, 0, gridSize, -1, 1),
	LinLin.kr(7, 0, gridSize, -1, 1)*(-1)
);
grid[3][35].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);
grid[3][36].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);
grid[4][35].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);
grid[4][36].start(
	\o,
	\bass,
	100,
	amp,
	LinLin.kr(1, 0, gridSize, -1, 1),
	LinLin.kr(1, 0, gridSize, -1, 1)*(-1)
);


