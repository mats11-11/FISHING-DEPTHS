if (instance_exists(cana)) {
	x = cana.x;
	y = cana.y + 120; //largo del hilo
}

//Si hay pez atrapado, se pega al anzuelo
if (instance_exists(pez_atrapado)) {
	pez_atrapado.x = x;
	pez_atrapado.y = y;
}