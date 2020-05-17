
% Medios de comunicacion
elPais.
cadenaSer.
abc.
cope.
elMundo.
laRazon.
ondaCero.
antena3.
laSexta.
tele5.
cuatro.

% Lideres politicos
pedroSanchez.
pabloCasado.
santiagoAbascal.
pabloIglesias.
inesArrimadas.

% IDs medios
idMedio(1, elPais).
idMedio(2, cadenaSer).
idMedio(3, abc).
idMedio(4, cope).
idMedio(5, elMundo).
idMedio(6, laRazon).
idMedio(7, ondaCero).
idMedio(8, antena3).
idMedio(9, laSexta).
idMedio(10, tele5).
idMedio(11, cuatro).

% Texto Medio
textoMedio(elPais, 'El Pais').
textoMedio(cadenaSer, 'Cadena Ser').
textoMedio(abc, 'ABC').
textoMedio(cope, 'COPE').
textoMedio(elMundo, 'El Mundo').
textoMedio(laRazon, 'La Razon').
textoMedio(ondaCero, 'Onda Cero').
textoMedio(antena3, 'Antena 3').
textoMedio(laSexta, 'La Sexta').
textoMedio(tele5, 'Telecinco').
textoMedio(cuatro, 'Cuatro').

% IDs Politicos
idPolitico(1, pedroSanchez).
idPolitico(2, pabloCasado).
idPolitico(3, santiagoAbascal).
idPolitico(4, pabloIglesias).
idPolitico(5, inesArrimadas).

% Texto Politicos
textoPolitico(pedroSanchez, 'Pedro Sanchez').
textoPolitico(pabloCasado, 'Pablo Casado').
textoPolitico(santiagoAbascal, 'Santiago Abascal').
textoPolitico(pabloIglesias, 'Pablo Iglesias').
textoPolitico(inesArrimadas, 'Ines Arrimadas').

%predicado que limpia la pantalla
clearScreen :- write('\33[2J').

%predicado
texto_medio_entrevista :- 
		write('Introduzca el medio que realizara la entrevista:'),nl,
		write('\n'),
		write('1.El Pais\n'),
        write('2.Cadena Ser\n'),
        write('3.ABC\n'),
        write('4.Cope\n'),
        write('5.El Mundo\n'),
        write('6.La Razon\n'),
        write('7.Onda Cero\n'),
        write('8.Antena 3\n'),
        write('9.La Sexta\n'),
        write('10.Tele5\n'),
        write('11.Cuatro\n').
	
%predicado	
texto_politico_entrevista :- 
		write('\nIntroduzca el politico que realizara la entrevista:'),nl,
		write('\n'),
		write('1.Pedro Sanchez\n'),
        write('2.Pablo Casado\n'),
        write('3.Santiago Abascal\n'),
        write('4.Pablo Iglesias\n'),
        write('5.Ines Arrimadas\n').

entrevista:- clearScreen, 
		texto_medio_entrevista,
		read(ID_MEDIO),
		texto_politico_entrevista,
		read(ID_POLITICO),
		clearScreen,
		inicioEntrevista(ID_MEDIO, ID_POLITICO).

inicioEntrevista(ID_MEDIO, ID_POLITICO) :- 
		idMedio(ID_MEDIO, MEDIO),
		textoMedio(MEDIO, TEXTO_MEDIO), !,
		format("\n Bienvenidos a ~w.", [TEXTO_MEDIO]), 
		idPolitico(ID_POLITICO, POLITICO),
		textoPolitico(POLITICO, TEXTO_POLITICO), !,
		format(" Hoy vamos a realizar la entrevista a ~w.", [TEXTO_POLITICO]).