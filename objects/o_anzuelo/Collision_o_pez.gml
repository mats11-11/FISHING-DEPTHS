if (pez_atrapado == noone) {
	
	pez_atrapado = other;
	other.atrapado = true;
	
	if (instance_exists(cana)) {
		cana.subiendo = true;
	}
}