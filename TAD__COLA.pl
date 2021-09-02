my $cola;
my $creada = 0;

print "Menu:
1.- Crear la cola.
2.- Ingresar elementos (Encolar)
3.- Sacar elemento (Desencolar)
4.- Imprimir.
5.- Peek de la cola.
6.- Vaciar cola.
7.- Eliminar cola.
8.- Salir.\n";
do{
print "\nEscoga una opcion: ";
chop ($opcion = <STDIN>);
if ($opcion == 1){ #Crear cola
	undef @cola;
	$creada = 1;
	print "-----------------------
La cola a sido creada!
-----------------------\n";
} elsif ($opcion == 2){ #Encolar
	if ($creada eq 1){
		print "Ingrese dato a la cola: ";
		my $dato = <>;
		push @cola , $dato;
		chomp ($dato);
		print "Elemento [$dato] Agregado con Exito! \n";
	}else {
		print "No has creado la cola! \n";
	}
}elsif ($opcion == 3){ #Desencolar
	if ($creada eq 1){
		print "Extraccion de la cola " , "[" , @cola[0], "] \n";
		shift @cola;
		print "Sacaste un elemento. \n";
		if (@cola == 0){
			print "\nYa no hay elemento en la cola\n";
		}
	}else{
		print "No has creado la cola! \n";
	}
}elsif ($opcion == 4){ #imprimir
	if ($creada eq 1){
		print "Imprimiendo la cola.......\n";
		chomp (@cola);
		print "Elementos: ", "[" , join ("," , @cola), "]\n";
	}else{
		print "No has creado la cola! \n";
	}
} elsif ($opcion == 5){ #peek
	if ($creada eq 1){
		print "Peek a la cola: ", @cola[0], "\n";
		if (@cola == 0){
			print "\nYa no hay elementos en la cola! \n";
		}
	}else{
		print "No has creado la cola! \n";
	}
} elsif ($opcion >= 9){
	print "Incorrecto, Vuelva a intentarlo!\n"; 
	print "1.- Crear la cola.
2.- Ingresar elementos (Encolar)
3.- Sacar elemento (Desencolar)
4.- Imprimir.
5.- Peek de la cola.
6.- Salir.\n";
} elsif ($opcion == 0){
	print "Incorrecto, Vuelva a intentarlo!\n"; 
	print "1.- Crear la cola.
2.- Ingresar elementos (Encolar)
3.- Sacar elemento (Desencolar)
4.- Imprimir.
5.- Peek de la cola.
6.- Salir.\n";
} elsif ($opcion == 6){ #Vaciar Cola
	if ($creada eq 1){
		undef @cola;
		print "La cola ha sido vaciada!\n";
	} else {
		print "No has creado la cola! \n";
	}	
} elsif ($opcion == 7){ #Eliminar cola;
	if ($creada eq 1){
		undef @cola;
		$creada = 0;
		print "La cola ha sido eliminada!\n";
	} else {
		print "No has creado la cola! \n";
	}
}elsif ($opcion == 8){
		print "Desea salir?
1.- SI   2.- NO\n";
chop ($salir = <STDIN>);
}
}while $salir ne '1';
