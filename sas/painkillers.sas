/*
 * University: Universidad de Valladolid
 * Degree: Grado en Estadística
 * Subject: Regresión y ANOVA
 * Year: 2017/18
 * Teacher: Lourdes Barba Escribá
 * Author: Sergio García Prado (garciparedes.me)
 * Name: Práctica Analgésicos Infantiles
 *
 */

data painkillers;
	input duration painkiller$ cefalea;
	datalines;
	30 A 1
	28 B 1
	16 C 1
	34 D 1
	14 A 2
	14 B 2
	10 C 2
	22 D 2
	24 A 3
	20 B 3
	14 C 3
	28 D 3
	38 A 4
	34 B 4
	20 C 4
	44 D 4
	26 A 5
	24 B 5
	14 C 5
	30 D 5
;
run;

proc print data=painkillers;
run;

proc sgplot data = painkillers;
	vbox duration / group= painkiller;
run;

proc sgplot data = painkillers;
	vbox duration /group = cefalea;
run;