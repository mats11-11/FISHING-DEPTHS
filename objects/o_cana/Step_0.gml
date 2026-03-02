// Movimiento lateral
if (keyboard_check(vk_left)) {
	x -= velocidad_lateral;
}
if (keyboard_check(vk_right)) {
	x += velocidad_lateral;
}

x = clamp(x, 20, room_width - 20);

//Baja Automaticamente
if (!subiendo) {
	y += velocidad_bajada;
}
else {
	y -= velocidad_bajada;
}

//Si llega arriba mientras sube con pez > reinicia el juego
if (y <= 50 && subiendo) {
	
	var a = instance_find(o_anzuelo, 0);
	
	if (instance_exists(a) && instance_exists(a.pez_atrapado)) {
		
		instance_destroy(a.pez_atrapado);
		//a.pez_atrapado = none;
		
		room_goto(rm_inicio);
	}
	
}