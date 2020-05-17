
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

% Nombre Medio
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

% Nombre Politicos
textoPolitico(pedroSanchez, 'Pedro Sanchez').
textoPolitico(pabloCasado, 'Pablo Casado').
textoPolitico(santiagoAbascal, 'Santiago Abascal').
textoPolitico(pabloIglesias, 'Pablo Iglesias').
textoPolitico(inesArrimadas, 'Ines Arrimadas').

% Pregunta politicas
preguntasPoliticas([
	'Pregunta 1',
	'Pregunta 2', 
	'Pregunta 3', 
	'Pregunta 4']).

%Predicado dinamico para preguntas historicas
:-dynamic historicoPreguntas/1, preguntasPosibles/1.
historicoPreguntas([]).
preguntasPosibles([]).

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

% Inicia la entrevista de un medio a un politico
inicioEntrevista(ID_MEDIO, ID_POLITICO) :- 
		idMedio(ID_MEDIO, MEDIO),
		textoMedio(MEDIO, TEXTO_MEDIO), !,
		format("\nBienvenidos a ~w.", [TEXTO_MEDIO]), 
		idPolitico(ID_POLITICO, POLITICO),
		textoPolitico(POLITICO, TEXTO_POLITICO), !,
		format(" Hoy vamos a realizar la entrevista a ~w.", [TEXTO_POLITICO]),nl,
		write('\n'),
		inicioPreguntas().

% Inicia la rueda de preguntas
inicioPreguntas() :-
		inicializarPreguntasRealizadas(),
		inicializarPreguntasPosibles(),
		% elegir el numero de preguntas
		obtenerNumeroDePreguntas(Index),
		lanzarPregunta(Index).

lanzarPregunta(Index) :-
		Index == 0, 
			write('Se acabaron las preguntas por hoy.\n');
		Index > 0, 
			preguntasPosibles(PREGUNTAS_POSIBLES),
			eleccionAleatoria(PREGUNTAS_POSIBLES, TEXTO_PREGUNTA),
			format("Pregunta: ~w \n", [TEXTO_PREGUNTA]),
			addPreguntaHistorico(TEXTO_PREGUNTA),
			removePreguntaPosible(TEXTO_PREGUNTA),
			lanzarPregunta(Index-1).
			
obtenerNumeroDePreguntas(Index) :-
		preguntasPoliticas(PREGUNTAS_POSIBLES), 
		length(PREGUNTAS_POSIBLES, Length), 
		random(1, Length, Index).

% Elige un elemento al azar de la lista 
eleccionAleatoria(LISTA, ELECCION) :-
		length(LISTA, Length),
		random(0, Length, Index),
		nth0(Index, LISTA, ELECCION).

addPreguntaHistorico(TEXTO_PREGUNTA) :- 
		retract(historicoPreguntas(X)), 
		L2=[TEXTO_PREGUNTA|X], 
		assert(historicoPreguntas(L2)).

inicializarPreguntasRealizadas() :-
    retract(historicoPreguntas(_)),
    assert(historicoPreguntas([])),
    !.

inicializarPreguntasPosibles() :-
    retract(preguntasPosibles(_)),
	preguntasPoliticas(PREGUNTAS_POSIBLES),
    assert(preguntasPosibles(PREGUNTAS_POSIBLES)),
    !.

removePreguntaPosible(TEXTO_PREGUNTA) :-
		preguntasPosibles(L1),
		removeElement(TEXTO_PREGUNTA, L1, L2),
		retract(preguntasPosibles(_)),
		assert(preguntasPosibles(L2)),
		!.

addPreguntasPosibles(LIST) :- 
		preguntasPosibles(L1),
		retractAll(L1), 
		L2=[LIST|L1], 
		assert(preguntasPosibles(L2)).

% Añade un elemento a una lista
addList(X,LISTA,[X|LISTA]).

removeElement(X, [X|Xs], Xs).
removeElement(X, [Y|Ys], [Y|Zs]):- removeElement(X, Ys, Zs).

% Imprime por pantalla el historico de preguntas realizadas
verPreguntasRealizadas:-
		write('Estas son las preguntas realizadas:'), nl,
		historicoPreguntas(Q),
		imprimirPreguntas(Q), nl, !.

% Predicado recursivo, imprime la lista de preguntas realizadas
imprimirPreguntas([])     :- write("No se han realizado preguntas."), !.
imprimirPreguntas([P|[]]) :- write(P), nl, !.
imprimirPreguntas([P|R])  :- imprimirPreguntas(R), write(P), nl.

verPreguntasPosibles:-
		write('Estas son las preguntas posibles a realizar:'), nl,
		preguntasPosibles(Q),
		imprimirPreguntas(Q), nl, !.