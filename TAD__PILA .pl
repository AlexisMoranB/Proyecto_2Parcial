@pila;
my $creada = 0;
print "Bienvenido!
1.- Crear la pila.
2.- Ingresar elemento (PUSH)
3.- Sacar elemento (POP)
4.- Metodo miron (PEEK)
5.- Imprimir toda la pila.
6.- Eliminar Pila.
7.- Vaciar Pila.
8.- Salir.\n";
do{
print "\nEscoga una opcion: ";
chop ($opcion = <STDIN>);
if ($opcion == 1){   #Crear pila
	undef @pila;
	$creada = 1;
	print "----------------------------
La pila a sido creada!
----------------------------\n";
} elsif ($opcion ==2){     #Ingresar elemento.
	if ($creada eq 1){
		print "Ingresa un elemento a la pila: ";
		$elemento = <>;
		push @pila, $elemento;
		chomp ($elemento);
		print "Elemento [$elemento] Ingresado!\n";
	}else{
		print "No has creado la pila todavia!\n";
	}
} elsif ($opcion == 3){      #Sacar elemento.
	if ($creada eq 1){
		chomp(@pila);
		print "Elemento Fuera: ", "[" , @pila[-1], "]\n";
		pop @pila;
		print "Con exito! \n";
		if (@pila == 0){
			print "\nYa no hay elementos en la pila!\n";
		}
	}else {
		print "No has creado la pila todavia!\n";
	}
} elsif ($opcion == 4){ #Peek
	if ($creada eq 1){
		print "Elemento en la cima: ", @pila[-1], "\n";
	} else{
		print "No has creado la pila todavia!\n";
	}
} elsif ($opcion == 5){ #Imprimir.
	if ($creada eq 1){
		chomp(@pila);
		print "Elementos en la pila: ", "[" , join(",", @pila), "]\n";
	} else {
		print "No has creado la pila todavia!\n";
	}
} elsif ($opcion >= 9){ 
	print "\nIncorrecto, Vuelva a intentarlo!\n\n"; 
	print "1.- Crear la pila.
2.- Ingresar elemento (PUSH)
3.- Sacar elemento (POP)
4.- Metodo miron (PEEK)
5.- Imprimir toda la pila.
6.- Eliminar Pila.
7.- Vaciar Pila.
8.- Salir.\n";
} elsif ($opcion == 0){
	print "\nIncorrecto, Vuelva a intentarlo!\n\n"; 
	print "1.- Crear la pila.
2.- Ingresar elemento (PUSH)
3.- Sacar elemento (POP)
4.- Metodo miron (PEEK)
5.- Imprimir toda la pila.
6.- Eliminar Pila.
7.- Vaciar Pila.
8.- Salir.\n";
} elsif ($opcion == 6){ #Eliminar pila
	if ($creada eq 1){
		undef @pila;
		$creada = 0;
		print "La pila a sido Eliminada!\n";
	}else{
		print "No has creado la pila todavia!\n";
	}
} elsif ($opcion == 7){ #Vaciar pila.
	if ($creada eq 1){
		undef @pila;
		print "La pila ha sido vaciada!\n";
	}else{
		print "No has creado la pila todavia!\n";
	}
}elsif($opcion == 8){
	print "Desea salir?
1.- SI    2.- No\n";
chop ($salir = <STDIN>);
}
} while $salir ne '1';
