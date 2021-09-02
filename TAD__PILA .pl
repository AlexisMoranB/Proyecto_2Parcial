@pila;
my $creada = 0;
print "Bienvenido!
1.- Crear la pila.
2.- Ingresar elemento (PUSH)
3.- Sacar elemento (POP)
4.- Metodo miron (PEEK)
5.- Imprimir toda la pila.
6.- Salir.\n";
do{
print "\nEscoga una opcion: ";
chop ($opcion = <STDIN>);
if ($opcion == 1){
	undef @pila;
	$creada = 1;
	print "Pila creada! \n";
} elsif ($opcion ==2){
	if ($creada eq 1){
		print "Ingresa un elemento a la pila: ";
		$elemento = <>;
		push @pila, $elemento;
		chomp ($elemento);
		print "Ingresado! [$elemento]\n";
	}else{
		print "Pila no creada!\n";
	}
} elsif ($opcion == 3){
	if ($creada eq 1){
		chomp(@pila);
		print "Elemento Fuera: ", "[" , @pila[-1], "]\n";
		pop @pila;
		print "Con exito! \n";
		if (@pila == 0){
			print "\nYa no hay elementos en la pila!\n";
		}
	}else {
		print "Pila no creada!\n";
	}
} elsif ($opcion == 4){
	if ($creada eq 1){
		print "Elemento en la cima: ", @pila[-1], "\n";
	} else{
		print "Pila no creada!\n";
	}
} elsif ($opcion == 5){
	if ($creada eq 1){
		chomp(@pila);
		print "Elementos en la pila: ", "[" , join(",", @pila), "]\n";
	} else {
		print "Pila no creada!\n";
	}
} elsif ($opcion >= 7){
	print "Incorrecto, Vuelva a intentarlo!\n"; 
	print "1.- Crear la pila.
2.- Ingresar elemento (PUSH)
3.- Sacar elemento (POP)
4.- Metodo miron (PEEK)
5.- Imprimir toda la pila.
6.- Salir.\n";
} elsif ($opcion == 0){
	print "Incorrecto, Vuelva a intentarlo!\n"; 
	print "1.- Crear la pila.
2.- Ingresar elemento (PUSH)
3.- Sacar elemento (POP)
4.- Metodo miron (PEEK)
5.- Imprimir toda la pila.
6.- Salir.\n";
}elsif($opcion == 6){
	print "Desea salir?
1.- SI    2.- No\n";
chop ($salir = <STDIN>);
}
} while $salir ne '1';