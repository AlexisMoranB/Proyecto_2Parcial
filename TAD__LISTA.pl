@lista;
my $creada = 0;
#Mostrar Menu del programa
print "Menu:
1.- Crear Lista.
2.- Agregar en cabecera.
3.- Agregar en cima.
4.- Agregar antes de.
5.- Esta vacia?
6.- Imprimir.
7.- Modificar.
8.- Eliminar.
9.- Eliminar lista.
10.- Vaciar lista.
11.- Salir.\n";

do{
print "\nEscoga una opcion: ";
chop ($opcion = <STDIN>);
if ($opcion == 1){   #Crear lista
	undef @lista; 
	$creada = 1;
	print "La lista ha sido creada con exito! \n";
} elsif ($opcion == 2){ #Agregar en cabecera.
	if ($creada eq 1){
		print "Agrege un valor: ";
		$valor = <>;
		unshift @lista, $valor;
		print "Con exito! \n";
	} else {
		print "Lista no creada, vuelva a intentarlo! ";
}
} elsif ($opcion == 3){ #Agregar en cima.
	if ($creada eq 1){
		print "Agrege un valor: ";
		$valor = <>;
		push @lista, $valor;
		print "Con exito!\n";
	} else {
		print "Lista no creada, vuelva a intentarlo! ";
	}
} elsif ($opcion == 4){ #Agregar antes de.
	if ($creada eq 1){
		print "Agrege valor: ";
		$nuevo_valor = <>;
		print "Antes de: ";
		$valor2 = <>;
		my $encontrado = -1;
		while (my ($posicion, $valor) = each @lista){
			if ($valor == $valor2){
				$encontrado = $posicion;
				last;
			}
		}
		if ($encontrado != -1){
			splice (@lista, $encontrado, 0, $nuevo_valor);
		}
		print "Con exito! \n";
	} else {
		print "Lista no creada, vuelva a intentarlo! ";
	}
} elsif ($opcion == 5){    #Esta vacia?
	if ($creada eq 1){
	if (@lista){
		print "\nNo esta vacio\n";
		chomp (@lista);
		print "Hay elementos en la lista:" ,"[",join(",",@lista),"]" , "\n";
	} else {
		print "\nEsta Vacio\n";
	}
} else {
	print "Lista no creada, vuelva a intentarlo! ";
}
} elsif ($opcion == 6){ #Imprimir.
	if ($creada eq 1){
		chomp(@lista);
		print "Los numeros agregados en la lista:" ,"[",join(",",@lista),"]\n";
	} else {
		 print "Lista no creada, vuelva a intentarlo! ";
		 }
} elsif ($opcion == 7){ #Modificar
	if ($creada eq 1){
	       print "Ingrese valor: ";
               my $nuevo_valor = <>;
               print "Ingrese valor que quiere reemplazar: ";
               my $reemplazar = <>;

               my $encontrado = -1;
 
while (my($posicion,$valor) = each @lista) {
    if ($valor == $reemplazar) {
        $encontrado = $posicion;
        last;
    }
}
 
if ($encontrado != -1) {                   
     $lista [$encontrado] = $nuevo_valor
}

print "Con exito! \n";
} else {
	print "Lista no creada, vuelva a intentarlo! ";
}
} elsif ($opcion == 8){ #Eliminar
	if ($creada eq 1){
		print "Ingrese valor a eliminar: ";
		my $eliminar = <>;
		my $encontrado = -1;
		while (my($posicion, $dato) = each @lista){
			if ($dato == $eliminar){
				$encontrado = $posicion;
				last;
			}
		} if ($encontrado != 1){
			splice (@lista, $encontrado, 1);
		} else {
			print "Error: No se encontro [$eliminar]";
		}
		print "Valor eliminado!\n";
	} else {
		print "Lista no creada, vuelva a intentarlo! ";
	}
} elsif ($opcion >=12 ){
	print "Error! Vuelva a intentarlo \n";
	print "Menu:
1.- Crear Lista.
2.- Agregar en cabecera.
3.- Agregar en cima.
4.- Agregar antes de.
5.- Esta vacia?
6.- Imprimir.
7.- Modificar.
8.- Eliminar.
9.- Eliminar lista.
10.- Vaciar lista.
11.- Salir.\n";
}elsif ($opcion ==0 ){
	print "Error! Vuelva a intentarlo \n";
	print "Menu:
1.- Crear Lista.
2.- Agregar en cabecera.
3.- Agregar en cima.
4.- Agregar antes de.
5.- Esta vacia?
6.- Imprimir.
7.- Modificar.
8.- Eliminar.
9.- Eliminar lista.
10.- Vaciar lista.
11.- Salir.\n";
} elsif ($opcion == 9){   #Eliminar Lista.
	 if ($creada eq 1){
	 	undef @lista;
	 	$creada = 0;
	 	print "La lista ha sido eliminada! \n";
	 } else{
	 	print "Lista no creada, vuelva a intentarlo! ";
	 }
} elsif ($opcion == 10){ #Vaciar Lista.
	if ($creada eq 1){
		undef @lista;
		print "La lista ha sido vaciada!\n";
	} else {
		print "Lista no creada, vuelva a intentarlo! ";
	}
} elsif ($opcion == 11){
		print "Desea salir?:
1.- SI  2.- NO"; 
	print "\n";
	chomp($accion = <STDIN>);
}
}while $accion ne '1';
print "Salio del programa. \n";
