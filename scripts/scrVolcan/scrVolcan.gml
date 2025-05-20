function scrVolcan(){
	show_debug_message("Volcan appears")
	
	// Crée le volcan (lui s’occupe du reste)
	instance_create_layer(0, 0, "Instances", oVolcan);

}