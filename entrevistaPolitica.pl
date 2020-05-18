% Grupos de medios de comunicacion
vocento.
prisa.
mediaset.
unidadEditorial.
planeta.
atresmedia.

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

% Partidos politicos
psoe.
pp.
vox.
podemos.
ciudadanos.

% Lideres politicos
pedroSanchez.
pabloCasado.
santiagoAbascal.
pabloIglesias.
inesArrimadas.

% Posiciones politicas
extremaIzquierda.
izquierda.
centro.
derecha.
extremaDerecha.

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

% Medio es del grupo
esDelGrupo(elPais, prisa).
esDelGrupo(cadenaSer, prisa).
esDelGrupo(abc, vocento).
esDelGrupo(cope, vocento).
esDelGrupo(elMundo, unidadEditorial).
esDelGrupo(laRazon, planeta).
esDelGrupo(ondaCero, atresmedia).
esDelGrupo(antena3, atresmedia).
esDelGrupo(laSexta, atresmedia).
esDelGrupo(tele5, atresmedia).
esDelGrupo(cuatro, atresmedia).

% Posicion del grupo
posicionGrupo(vocento, derecha).
posicionGrupo(unidadEditorial, derecha).
posicionGrupo(prisa, centro).
posicionGrupo(mediaset, centro).
posicionGrupo(planeta, izquierda).
posicionGrupo(atresmedia, izquierda).

% Television
television(tele5).
television(cuatro).
television(antena3).
television(laSexta).

% Radio
radio(cope).
radio(cadenaSer).
radio(ondaCero).

% Prensa
prensa(abc).
prensa(elPais).
prensa(elMundo).
prensa(laRazon).

% Medio
medio(A) :- television(A).
medio(A) :- radio(A).
medio(A) :- prensa(A).

% Penetracion por medio
penetracion(A, Porcentaje) :- radio(A), Porcentaje is 55.70, !.
penetracion(A, Porcentaje) :- television(A), Porcentaje is 85.90, !.
penetracion(A, Porcentaje) :- prensa(A), Porcentaje is 20.20, !.

% Audiencia de los medios
audiencia(tele5, 15.90).
audiencia(cuatro, 4.90).
audiencia(antena3, 11.50).
audiencia(laSexta, 9.10).
audiencia(cope, 24.40).
audiencia(cadenaSer, 29.10).
audiencia(ondaCero, 11.50).
audiencia(abc, 5.27).
audiencia(elPais, 11.91).
audiencia(elMundo, 7.80).
audiencia(laRazon, 2.30).

% Politicos
politico(pedroSanchez).
politico(pabloCasado).
politico(santiagoAbascal).
politico(pabloIglesias).
politico(inesArrimadas).

% Lider por partido
lider(pedroSanchez, psoe).
lider(pabloCasado, pp).
lider(santiagoAbascal, vox).
lider(pabloIglesias, podemos).
lider(inesArrimadas, ciudadanos).

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

% Posicion del partido
posicionPartido(psoe, izquierda).
posicionPartido(psoe, centro).
posicionPartido(pp, centro).
posicionPartido(pp, derecha).
posicionPartido(vox, derecha).
posicionPartido(vox, extremaDerecha).
posicionPartido(podemos, extremaIzquierda).
posicionPartido(podemos, izquierda).
posicionPartido(ciudadanos, centro).

% Pregunta politicas
preguntasPoliticas([
	"¿Qué protocolos tiene su partido ante un apocalipsis zombie?",
	"¿Qué méritos policiales han hecho merecedor al Cristo de la Buena Muerte de esta medalla? ¿Acudirá el Cristo de la Buena Muerte a recoger dicha condecoración?", 
	"¿Cuanto peor mejor para todos y cuanto peor para todos mejor, mejor para mí el suyo. Beneficio político?", 
	"Después del impactante caso del barco de Piolín, ¿le ha comunicado al Gobierno los policías si han visto un lindo gatito por sus pasillos?", 
	"¿Comparte su partido la opinión del autor sobre que la manzana de Adán y Eva debió ser un albaricoquero, un naranjo amargo, un pomelo o un membrillero, ya que el manzano no es originario de Palestina ni parece que exista asilvestrado en sus montes?", 
	"¿Piensa interrogar la Guardia Civil a más jóvenes como supuestos miembros del harrypotiano Ejército del Fénix?", 
	"¿Tiene prevista alguna medida su partido para que el bacalao capturado por la flota española no se sienta discriminado con el de otros países?", 
	"¿Qué reflexiones personales le han llevado a concluir que el Gobierno de España debe ser llamado Gobierno de España?", 
	"¿Cree el Gobierno que la película 'A las mujeres les gusta la legión' representa los valores de su partido?", 
	"¿Tiene presente su partido que se entiende 'Si no tienes vino puedes ir, de verdad, a tomar venganza a tu Ayuntamiento'?",
	"¿Considera su partido que las respuestas que da a las preguntas son ajustadas a lo que se pregunta?"]).

% Tipos de respuesta
tipoRespuesta(1, 'Positiva').
tipoRespuesta(2, 'Neutral').
tipoRespuesta(3, 'Negativa').

% Predicados dinamicos para almacenar preguntas realizadas para no repetir preguntas
:-dynamic historicoPreguntas/1, preguntasPosibles/1.
historicoPreguntas([]).
preguntasPosibles([]).

% Predicado dinamico para el almacenamiento de la puntuacion de politicos
:-dynamic puntuacion/2.
puntuacion(pedroSanchez, 50).
puntuacion(pabloCasado, 50).
puntuacion(santiagoAbascal, 50).
puntuacion(pabloIglesias, 50).
puntuacion(inesArrimadas, 50).

% Predicado que limpia la pantalla
clearScreen :- write('\33[2J').

% Inicio del programa
entrevista:- clearScreen, 
		cabeceraPrograma,
		textoOpcionesMedios,
		read(ID_MEDIO),
		textoOpcionesPoliticos,
		read(ID_POLITICO),
		clearScreen,
		inicioEntrevista(ID_MEDIO, ID_POLITICO).

% Predicado para mostrar la cabecera del programa
cabeceraPrograma :- 
		write('---------------------------------------------------------\n'),
		write('-----   CIS (Centro de Invenciones Sintomaticas)   -----.\n'),
		write('---------------------------------------------------------\n'),
		write('\n'),
		write('Seleccione una entrevista para estudiarla:\n\n').

% Predicado para mostrar texto de eleccion del medio de comunicacion
textoOpcionesMedios :- 
		write('Introduzca el medio que realizara la entrevista:\n'),
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
	
% Predicado	para mostrar el texto de eleccion del politico
textoOpcionesPoliticos :- 
		write('\nIntroduzca el politico que realizara la entrevista:\n'),
		write('\n'),
		write('1.Pedro Sanchez\n'),
        write('2.Pablo Casado\n'),
        write('3.Santiago Abascal\n'),
        write('4.Pablo Iglesias\n'),
        write('5.Ines Arrimadas\n').

% Inicia la entrevista de un medio a un politico. Consiste en realizar unas preguntas al azar, 
% el politico las prodra contestar con mas o menos acierto, por lo que la repercusion de la respuesta puede variar.
% Una vez realizada la entrevista, dependiendo de la afinidad con el politico, 
% el medio puede maquillar la entrevista positivamente o negativamente.
% Finalmente se actualiza la puntuacion en el ranking.
inicioEntrevista(ID_MEDIO, ID_POLITICO) :- 
		idMedio(ID_MEDIO, MEDIO),
		textoMedio(MEDIO, TEXTO_MEDIO),
		write('\n---------------------------------------------------------\n'),
		format("\nBienvenidos a ~w.", [TEXTO_MEDIO]), 
		idPolitico(ID_POLITICO, POLITICO),
		textoPolitico(POLITICO, TEXTO_POLITICO),
		format(" Hoy vamos a realizar la entrevista a ~w.\n", [TEXTO_POLITICO]),
		inicioPreguntas(PuntuacionEntrevista),
		calcularExtraMedio(POLITICO, MEDIO, ExtraMedio),
		calcularFactorAudiencia(MEDIO, FactorAudiencia),
%		format("\nPuntuacionEntrevista: ~w, ExtraMedio: ~w, ExtraAudiencia: ~w. \n", [PuntuacionEntrevista, ExtraMedio, ExtraAudiencia]),
		calcularPuntuacionFinal(PuntuacionEntrevista, ExtraMedio, FactorAudiencia, PuntuacionFinal),
		format("\nLa puntuacion final es de: ~w. \n", [PuntuacionFinal]),
		write('\n---------------------------------------------------------\n'),
		actualizarPuntuacion(POLITICO, PuntuacionFinal),
		!.

% Inicia la rueda de preguntas. Se seleccionan x preguntas al azar. 
% Se calcula la media de las puntuaciones de cada pregunta, lo que dara la puntuacion de la entrevista.
inicioPreguntas(PuntuacionEntrevista) :-
		inicializarPreguntasRealizadas(),
		inicializarPreguntasPosibles(),
		% elegir el numero de preguntas
		obtenerNumeroDePreguntas(NumPreguntas),
		lanzarPregunta(NumPreguntas, PuntuacionTotal),
		PuntuacionEntrevista is div(PuntuacionTotal, NumPreguntas),
		!.

% Se borran las preguntas realizadas al iniciar la entrevista
inicializarPreguntasRealizadas() :-
    retract(historicoPreguntas(_)),
    assert(historicoPreguntas([])),
    !.

% Se inicializan las preguntas a todas las posibles 
inicializarPreguntasPosibles() :-
    retract(preguntasPosibles(_)),
	preguntasPoliticas(PREGUNTAS_POSIBLES),
    assert(preguntasPosibles(PREGUNTAS_POSIBLES)),
    !.

% Se elige el numero de preguntas a realizar al azar 	
obtenerNumeroDePreguntas(Index) :-
		preguntasPoliticas(PREGUNTAS_POSIBLES), 
		length(PREGUNTAS_POSIBLES, Length), 
		random(1, Length, Index).

% Se realizan las preguntas recursivamente acumulando el resultado total.
% El proceso consiste en elegir una de las preguntas posibles, sin repetir.
% Luego, el politico puede contestar mas o menos acertadamente, lo que le dara una puntuacion a esa pregunta.
lanzarPregunta(0, 0) :- write('\nSe acabaron las preguntas por hoy.\n'), !.
lanzarPregunta(NumPreguntas, PuntuacionTotal) :-
		NumPreguntas > 0, 
		preguntasPosibles(PREGUNTAS_POSIBLES),
		eleccionAleatoria(PREGUNTAS_POSIBLES, TEXTO_PREGUNTA),
		format("\n- Pregunta: ~w \n", [TEXTO_PREGUNTA]),
		addPreguntaHistorico(TEXTO_PREGUNTA),
		removePreguntaPosible(TEXTO_PREGUNTA),
		calcularRespuesta(Puntuacion),
		NumPreguntas1 is NumPreguntas-1,
		lanzarPregunta(NumPreguntas1, Puntuacion1),
		PuntuacionTotal is Puntuacion1+Puntuacion.

% Elige un elemento al azar de la lista 
eleccionAleatoria(LISTA, ELECCION) :-
		length(LISTA, Length),
		random(0, Length, Index),
		nth0(Index, LISTA, ELECCION).

% Añade la pregunta realizada al historico
addPreguntaHistorico(TEXTO_PREGUNTA) :- 
		retract(historicoPreguntas(L1)), 
		L2=[TEXTO_PREGUNTA|L1], 
		assert(historicoPreguntas(L2)).

% Elimina la pregunta realizada de las posibles
removePreguntaPosible(TEXTO_PREGUNTA) :-
		preguntasPosibles(L1),
		removeElement(TEXTO_PREGUNTA, L1, L2),
		retract(preguntasPosibles(_)),
		assert(preguntasPosibles(L2)).

% Elimina un elemento de la lista
removeElement(X, [X|Xs], Xs).
removeElement(X, [Y|Ys], [Y|Zs]):- removeElement(X, Ys, Zs).

% Elige una de las respuestas al azar y se calcula la puntuacion en base al tipo de respuesta elegida.
calcularRespuesta(Puntuacion) :-
		random(1, 4, Index),
		tipoRespuesta(Index, TEXTO_RESPUESTA),
		calcularPuntuacion(Index, Puntuacion),
		format("La respuesta ha sido ~w. Puntuacion: ~w/100 \n", [TEXTO_RESPUESTA, Puntuacion]).

% Existen 3 tipos: Neutral, Positiva y Negativa. Cada una de ellas te puede dar una puntuacion al azar.
calcularPuntuacion(ID, Puntuacion) :-
		ID == 1, random(70, 101, Puntuacion);
		ID == 2, random(30, 70, Puntuacion);
		ID == 3, random(0, 30, Puntuacion).

% Se calcula una puntuacion extra de la entrevista en base a la afinidad del medio de comunicacion con el lider politico.
% La variacion es entre un -20% y un +20%.
calcularExtraMedio(POLITICO, MEDIO, PuntuacionExtra) :-
		esAfin(POLITICO, MEDIO) -> random(0, 21, Index), PuntuacionExtra is Index;
		random(0, 21, Index), PuntuacionExtra is -1 * Index.

% Se calcula un factor extra dependiendo de la penetracion y la audiencia del medio de comunicacion.
calcularFactorAudiencia(MEDIO, Factor) :-
		audiencia(MEDIO, A), penetracion(MEDIO, B), Factor is 1+((A/100)*(B/100)).

% Se calcula la afinidad del politico con el medio de comunicacion.
% Se consulta si la posicion politica del grupo al que pertenece el medio de comunicacion 
% coincide con alguna de las posiciones del partido politico al que pertenece el lider entrevistado.
esAfin(LIDER_POLITICO, MEDIO_COMUNICACION) :-
		lider(LIDER_POLITICO, PARTIDO_POLITICO),
		posicionPartido(PARTIDO_POLITICO, POSICION_PARTIDO),
		esDelGrupo(MEDIO_COMUNICACION, GRUPO_COMUNICACION),
		posicionGrupo(GRUPO_COMUNICACION, POSICION_GRUPO),
		POSICION_PARTIDO == POSICION_GRUPO.

% Se calcula la puntuacion final, sumando la puntuacion de la entrevista con la variacion que introduce el medio de comunicacion, aplicando el factor de la audiencia.
% En caso de salirse del rango [0, 100], se ajusta.
calcularPuntuacionFinal(PUNTUACION_ENTREVISTA, EXTRA_MEDIO, FACTOR_AUDIENCIA, PuntuacionFinal) :-
		(PUNTUACION_ENTREVISTA + (EXTRA_MEDIO * FACTOR_AUDIENCIA)) >= 100, PuntuacionFinal is 100;
		(PUNTUACION_ENTREVISTA + (EXTRA_MEDIO + FACTOR_AUDIENCIA)) =< 0, PuntuacionFinal is 0;
		PuntuacionFinal is PUNTUACION_ENTREVISTA + (EXTRA_MEDIO + FACTOR_AUDIENCIA).

% Se actualiza la puntuacion en la variable dinamica del politico correspondiente.
actualizarPuntuacion(POLITICO, PUNTUACION_NEW) :-
		puntuacion(POLITICO, PuntuacionActual),
		round((PuntuacionActual + PUNTUACION_NEW) / 2, PuntuacionRedondeada, 2),
		retract(puntuacion(POLITICO,_)),
		assert(puntuacion(POLITICO, PuntuacionRedondeada)),
		!.

% Redondeo de dos decimales.
% Fuente: https://stackoverflow.com/questions/52979922/prolog-how-to-round-decimals-of-floating-point-numbers
round(X,Y,D) :- Z is X * 10^D, round(Z, ZA), Y is ZA / 10^D.

% Se obtiene una lista clave-valor con la puntuacion de cada politico ordenado de mayor a menor.
% Fuente: https://stackoverflow.com/questions/56402937/create-a-list-of-key-value-pair
ranking(Ls) :-
    setof(V-K,(politico(K),puntuacion(K,V)),VKs),
	reverseList(VKs, [], Ls).

% Invierte una lista
reverseList([], Zs, Zs).
reverseList([X|Xs], Ys, Zs):- reverseList(Xs, [X|Ys], Zs).

%
% FUNCIONES AUXILIARES
% Funciones creadas con el fin de ayudar al desarrollador con el ejercicio
%

% Imprime por pantalla el historico de preguntas realizadas en la ultima entrevista.
verPreguntasRealizadas:-
		write('Estas son las preguntas realizadas:\n'),
		historicoPreguntas(Q),
		imprimirPreguntas(Q), nl, !.

% Imprime por pantalla las preguntas que aun no se han realizado en la ultima entrevista.
verPreguntasPosibles:-
		write('Estas son las preguntas posibles a realizar:'), nl,
		preguntasPosibles(Q),
		imprimirPreguntas(Q), nl, !.

% Predicado recursivo, imprime la lista de preguntas
imprimirPreguntas([])     :- write("No se han realizado preguntas."), !.
imprimirPreguntas([P|[]]) :- write(P), nl, !.
imprimirPreguntas([P|R])  :- imprimirPreguntas(R), write(P), nl.

% Imprime por pantalla la lista del ranking
verRanking():-
		write('\nEsta es la valoracion actual de los politicos:\n\n'),
		ranking(LISTA),
		listarRanking(LISTA), nl, !.

% Imprime los elementos de la lista
listarRanking([])     :- write("No existe ranking."), !.
listarRanking([P|[]]) :- write(P), nl, !.
listarRanking([P|R])  :- write(P), nl, listarRanking(R).

% Se ha creado esta funcion con el objetivo de simular X numero de entrevistas.
% Se elige un politico y un medio al azar en cada iteraccion.
simulacion(0) :- write("\nSe acabo la simulacion.\n"),	verRanking(), !.
simulacion(NUMERO_ENTREVISTAS) :-
		random(1, 12, IdMedio),
		random(1, 6, IdPolitico),
		inicioEntrevista(IdMedio, IdPolitico),
		NUMERO_ENTREVISTAS1 is NUMERO_ENTREVISTAS-1,
		simulacion(NUMERO_ENTREVISTAS1).
		