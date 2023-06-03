package translate;
import static translate.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%

{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}


//------> Expresiones Regulares

BLANCO=[ \t\r\n]
//sustantivo
sustantivo = "cama"|"factura"|"pajaro"|"sangre"|"bote"|"cuerpo"|"hueso"|"libro"|"fondo"|"caja"|"hermano"|"edificio"|"negocio"|"llamada"|"capital"|"caso"|"gato"|"causa"|"centavo"|"centro"|"siglo"|"oportunidad"|"cambio"|"verificacion"|"nino"|"iglesia"|"circulo"|"ciudad"|"clase"|"ropa"|"nube"|"costa"|"color"|"compania"|"consonante"|"copia"|"maiz"
|"algodón"|"país"|"curso"|"vaca"|"multitud"|"día"|"diccionario"|"dirección"|"distancia"|"doctor"|"dólar"|"puerta"|"oreja"|"tierra"|"huevo"|"energía"|"ejemplo"|"experiencia"|"ojo"|"juego"|"jardín"|"gas"|"niña"|"vidrio"|"oro"|"gobierno"|"césped"|"grupo"|"cabello"|"mano"|"sombrero"|"cabeza"|"corazón"|"calor"|"historia"|"agujero"|
"hogar"|"caballo"|"hora"|"casa"|"hielo"|"idea"|"pulgada"|"banco"|"industria"|"información"|"insecto"|"interés"|"hierro"|"isla"|"trabajo"|"clave"|"lago"|"tierra"|"lenguaje"|"ley"|"pierna"|"nivel"|"mentira"|"vida"|"luz"|"línea"|"lista"|"máquina"|"hombre"|"mapa"|"material"|"carne"|"medio"|"milla"|"leche"|"mente"|"minuto"|"dinero"|
"mes"|"luna"|"boca"|"música"|"nación"|"noche"|"nariz"|"nota"|"número"|"objeto"|"océano"|"oficina"|"párrafo"|"parque"|"parte"|"fiesta"|"pasado"|"persona"|"libra"|"presidente"|"problema"|"producto"|"propiedad"|"pregunta"|"carrera"|"radio"|"lluvia"|"razón"|"registro"|"región"|"anillo"|"río"|"carretera"|"roca"|"fila"|"regla"|
"arena"|"escuela"|"ciencia"|"mar"|"asiento"|"segunda"|"oración"|"conjunto"|"lado"|"señal"|"hermana"|"tamaño"|"piel"|"nieve"|"soldado"|"solución"|"acción"|"edad"|"aire"|"animal"|"respuesta"|"manzana"|"arte"|"bebé"|"espalda"|"pelota""página"|"par"|"papel"|"hijo"|"primavera"|"cuadrado"|"estrella"|"estado"|"detener"|"calle""estudiante"|"azúcar"|
"sol"|"pueblo"|"vocal"|"guerra"|"clima"|"peso"|"esposa"|"ventana"|"invierno"|"mujer"|"palabra"|"mundo"|"año"

//Pronombres
PronombreSujeto = "Yo"|"Tú"|"ella"|"él"|"ello"|"nosotros"|"vosotros"|"ellos"

//ADJETIVOS

Ad_Posesivo = "mi"|"tu"|"su"|"su"|"su"|"nuestro"|"vuestro"|"su"

Ad_Demostrativo = "este"|"ese"|"estos"|"esos"

Ad_Calificativo = "alto"|"elevado"|"bajo"|"bajo"|"largo"|"grande"|"grande"|"en forma"|"pequeño"|"triste"|"enojado"|"feliz"|"nervioso"|"molesto"|"loco"|"hambriento"|"hambriento"|
"comprensivo"|"redondo"|"triangular"|"cuadrado"|"afilado"|"rectangular"|"ancho"|"sensible"|"amistoso"|"educado"|"perezoso"|"inteligente"|"agradable"|"sucio"|"mojado"|"seco"|
"apestoso"|"genial"|"saludable"|"caliente"|"frío"|"ruidoso"|"dulce"|"salado"|"amargo"|"agrio"|"delicioso"|"repugnante"|"picante"|"suave"|"insípido"|"helado"|"fresco"|
"español"|"inglés"|"francés"|"italiano"|"horrible"|"hirviente"|"fascinante"|"helado"|"sucio"|"furioso"|"enorme"|"impecable"|"pequeño"|"maravilloso"|"azul"|"oscuro"

Ad_Num_Cardinal = "cero"|"uno"|"dos"|"tres"|"cuatro"|"cinco"|"seis"|"siete"|"ocho"|"nueve"|"diez"|"once"|"doce"|"trece"|"catorce"|"quince"|"dieciséis"|"diecisiete"|"dieciocho"|"diecinueve"|"veinte"|"treinta"|"cuarenta"|"cincuenta"|"sesenta"|"setenta"|"ochenta"|"noventa"|"noventa y uno"|"noventa y dos"|"cien"|
"doscientos"|"mil"|"diez mil"|"un millón"

Ad_Num_Ordinal = "primero"|"segundo"|"tercero"|"cuarto"|"quinto"|"sexto"|"séptimo"|"octavo"|"noveno"|"décimo"|"undécimo"|"duodécimo"|"decimotercero"|"decimocuarto"|"decimoquinto"|"decimosexto"|
"decimoséptimo"|"decimoctavo"|"decimonoveno"|"vigésimo"|"trigésimo"|"cuadragésimo"|"quincuagésimo"|"sexagésimo"|"septuagésimo"|"octogésimo"|"nonagésimo"|"nonagésimo primero"|
"nonagésimo segundo"|"nonagésimo tercero"|"nonagésimo cuarto"|"centésimo"|"milésimo"|"millonésimo"

Ad_Indefinido = "todo"|"cualquier"|"ambos"|"cada"|"cualquiera"|"suficiente"|"pocos"|"menos"|"poco"|"mucho"|"más"|"muchos"|"uno"|"otro"|"otros"|"varios"|"algunos"|"tal"

//ARTICULOS

Ar_Definido = "el"|"la"|"los"|"las"
Ar_Indefinido = "un"|"una"

PRON_I = "Yo"
PRON_PER_SING = "Yo"|"él"|"ella"|"ello"
PRON_PER_PLUR = "nosotros"|"ustedes"|"ellos"
PRO_PERSON = "Yo"|"él"|"ella"|"ello"|"nosotros"|"ustedes"|"ellos"
Pron_Demostrativo = "este"|"ese"|"estos"|"esos"
Pron_Interrogativo = "quién"|"a quién"|"de quién"|"qué"|"cuál"

//VERBO TO BE

VER_SING = "es"
VER_PLUR = "son"
VER_AM = "soy"

VB_Regular = "abandonar"|"abolir"|"absolver"|"absorber"|"abusar"|"acceder"|"acelerar"|"acentuar"|"aceptar"|"acusar"|"acostumbrar"|"lograr"|"adquirir"|"actuar"|"añadir"|"dirigirse a"|
"admirar"|"admitir"|"adorar"|"adornar"|"avanzar"|"anunciar"|"aconsejar"|"afirmar"|"estar de acuerdo"|"permitir"|"ascender"|"divertir"|"anunciar"|"molestar"|"responder"|"disculparse"|
"aparecer"|"nombrar"|"acercarse"|"aprobar"|"organizar"|"llegar"|"preguntar"|"asegurar"|"sorprender"|"atacar"|"intentar"|"asistir"|"atraer"|"evitar"|"bañar"|"rogar"|
"creer"|"pertenecer"|"culpar"|"reservar"|"llamar"|"llevar"|"cobrar"|"cesar"|"cambiar"|"verificar"|"afirmar"|"limpiar"|"despejar"|"trepar"|"cerrar"|"recoger"|"peinar"|"combinar"|
"ordenar"|"comprometer"|"comparar"|"quejarse"|"componer"|"ocultar"|"considerar"|"consistir"|"contener"|"continuar"|"copiar"|"corregir"|"toser"|"contar"|"cubrir"|
"cruzar"|"coronar"|"llorar"|"dañar"|"bailar"|"amanecer"|"engañar"|"decidir"|"declarar"|"defender"|"entregar"|"desear"|"despreciar"|"destruir"|"separar"|"desarrollar"|"dedicar"|
"devorar"|"descubrir"|"no gustar"|"molestar"|"dividir"|"arrastrar"|"dejar caer"|"secar"|"ganar"|"elegir"|"emplear"|"incluir"|"alentar"|"terminar"|"disfrutar"|"entrar"|"establecer"|
"estimar"|"evocar"|"intercambiar"|"esperar"|"explicar"|"explotar"|"exponer"|"expresar"|"extraer"|"fallar"|"temer"|"ir a buscar"|"llenar"|"terminar"|"pescar"|"quedar"|"arreglar"|"flotar"|
"doblar"|"seguir"|"fundar"|"ganar"|"jugar"|"reunir"|"gobernar"|"otorgar"|"saludar"|"proteger"|"adivinar"|"manejar"|"colgar"|"ocurrir"|"odiar"|"calentar"|"ayudar"|"contratar"|"esperar"|
"cazar"|"apresurarse"|"imaginar"|"insinuar"|"importar"|"impressionar"|"mejorar"|"incluir"|"aumentar"|"preguntar"|"intentar"|"inventar"|"invitar"|"planchar"|"unirse"|"bromear"|"saltar"|
"justificar"|"golpear"|"matar"|"besar"|"tocar"|"atender"|"atender"|"mirar"|"amar"|"bajar"|"mantener"|"casarse"|"medir"|"medir"|
"reparar"|"mencionar"|"mover"|"nombrar"|"anotar"|"notar"|"numerar"|"observar"|"obedecer"|"obligar"|"ocupar"|"ofrecer"|"abrir"|"ordenar"|"organizar"|"empacar"|"pintar"|"pasar"|"permitir"|
"colocar"|"jugar"|"complacer"|"poseer"|"practicar"|"preferir"|"preparar"|"presentar"|"producir"|"prometer"|"proponer"|"jalar"|"castigar"|"empujar"|"llover"|"alcanzar"|"recibir"|
"referir"|"rechazar"|"aliviar"|"permanecer"|"recordar"|"recordar"|"quitar"|"alquilar"|"reparar"|"repetir"|"responder"|"informar"|"solicitar"|"requerir"|"descansar"|"regresar"|"apresurarse"|
"navegar"|"salvar"|"parecer"|"afilar"|"gritar"|"firmar"|"sonreír"|"fumar"|"sonar"|"empezar"|"parar"|"estudiar"|"sufrir"|"sugerir"|"suponer"|"sorprender"|"hablar"|"domesticar"|"saborear"|
"cansar"|"tocar"|"probar"|"agradecer"|"atar"|"traducir"|"viajar"|"molestar"|"confiar"|"intentar"|"convertir"|"unir"|"usar"|"variar"|"visitar"|"esperar"|"caminar"|"desear"|"lavar"|"mirar"|
"pesar"|"desear"|"trabajar"|"preocupar"|"herir"


VB_Irregulares = "ser"|"convertirse en"|"empezar"|"morder"|"soplar"|"romper"|"traer"|"construir"|"comprar"|"poder"|"atrapar"|"elegir"|"venir"|"costar"|"cortar"|"hacer"|"dibujar"|"beber"|"conducir"|"comer"|"caer"|"sentir"|
"pelear"|"encontrar"|"volar"|"olvidar"|"perdonar"|"congelar"|"obtener"|"dar"|"ir"|"crecer"|"colgar"|"tener"|"esconder"|"golpear"|"sostener"|"lastimar"|"mantener"|"saber"|"guiar"|"dejar"|"prestar"|
"permitir"|"perder"|"hacer"|"significar"|"conocer"|"pagar"|"poner"|"leer"|"montar"|"llamar"|"levantarse"|"correr"|"decir"|"ver"|"vender"|"enviar"|"poner"|"mostrar"|"cerrar"|"cantar"|"hundir"|"sentarse"|"dormir"|
"hablar"|"gastar"|"robar"|"nadar"|"tomar"|"enseñar"|"decir"|"pensar"|"lanzar"|"entender"|"despertar"|"usar"|"ganar"|"escribir"|"fui"|"me convertí"|"empecé"|"mordí"|"soplé"|
"rompí"|"traje"|"construí"|"compré"|"pude"|"atrapé"|"elegí"|"vine"|"costó"|"corté"|"hice"|"dibujé"|"bebí"|"conduje"|"comí"|"caí"|"sentí"|"peleé"|"encontré"|"volé"|
"olvidé"|"perdoné"|"congelé"|"obtuve"|"di"|"fui"|"crecí"|"colgué"|"tuve"|"escondí"|"golpeé"|"sostuve"|"lastimé"|"mantuve"|"supe"|"guié"|"dejé"|"presté"|"permití"|"perdí"|"hice"|"signifiqué"|
"conocí"|"pagué"|"puse"|"leí"|"monté"|"llamé"|"soné"|"me levanté"|"corrí"|"dije"|"vi"|"vendí"|"envié"|"puse"|"mostré"|"cerré"|"canté"|"me hundí"|"me senté"|"dormí"|"hablé"|"gasté"|"robé"|
"nadé"|"tomé"|"enseñé"|"dije"|"pensé"|"lanzé"|"entendí"|"desperté"|"usé"|"gané"|"escribí"|"fui"|"fuiste"

ADB_Tiempo = "ahora"|"ayer"|"anoche"|"hoy"|"mañana"|"antes"|"anoche"|"todavía"|"cuando"|"después"|"entonces"|"nunca"|"entonces"|"mientras"|"nunca"|"primero"|"siempre"|
"tarde"|"todavía"|"aún"|"ya"

ADB_Lugar = "aquí"|"allí"|"allá"|"aquí"|"afuera"|"abajo"|"antes"|"alrededor"|"arriba"|"atrás"|"cerca"|"debajo"|"donde"|"enfrente"|"de"|"fuera"|"lejos"

ADB_Cantidad = "algo"|"nada"|"apenas"|"suficiente"|"casi"|"cuánto"|"demasiado"|"más"|"menos"|"mucho"|"poco"|"todo"|"solo"|"mitad"|"tan"|"tanto"

ADB_Modo = "así"|"bien"|"mal"|"casi"|"cómo"|"lentamente"|"rápido"|"lento"|"rápido"

ADB_Afirmacion = "si"|"por supuesto"|"exacto"|"realmente"|"ciertamente"|"seguramente"|"justo"|"ya"

ADB_Negacion = "no"|"nunca"|"no"|"nunca"

ADB_Duda = "quizás"|"probablemente"

//PREPOSICIONES

Preposicion = "acerca de"|"encima de"|"a través de"|"después de"|"contra"|"entre"|"alrededor de"|"como"|"en"|"antes"|"detrás de"|"debajo de"|"bajo"|"junto a"|"entre"|
"más allá"|"pero"|"por"|"a pesar de"|"abajo"|"durante"|"excepto"|"para"|"desde"|"en"|"dentro de"|"hacia"|"cerca de"|"próximo"|"de"|"en"|"opuesto"|"fuera"|"sobre"|
"por"|"más"|"alrededor"|"desde"|"que"|"a través de"|"hasta"|"a"|"hacia"|"bajo"|"a diferencia de"|"hasta"|"arriba"|"a través de"|"con"|"dentro de"|"sin"|"según"|
"debido a"|"cerca de"|"gracias a"|"excepto a"|"lejos de"|"dentro de"|"en lugar de"|"cerca de"|"junto a"|"fuera de"|"antes de"|"hasta"|"así como"|"además de"|
"en frente de"|"a pesar de"|"en nombre de"|"encima de"

Conjunciones Coordinantes:

CC_Copulativas = "y"|"no solo"|"sino también"|"no solo"|"sino"|"también"|"ambos"|"y"|"apenas"|"cuando"

CC_Adversativas = "pero"|"sin embargo"|"no obstante"|"no obstante"|"aún"|"aun así"|"todavía"|"en lugar de"|"por el contrario"

CC_Distributivas = "tan pronto como"|"ya"|"ya"|"ya"|"aquí"|"allí"|"estos"|"esos"|"o"|"o bien"

CC_Disyuntivas = "o"|"o bien"|"ni"|"ni"|"ya sea"|"o de lo contrario"|"de lo contrario"

CC_Explicativas = "es decir"|"más bien"|"es más"|"es decir"|"esto es"|"más bien"


//signos de puntuación

Conjunciones Subordinantes:

CS_Condicionales = "si"|"siempre que"|"siempre y cuando"|"cualquier cosa que"

CS_Casuales = "ya no porque"|"porque"|"porque"|"ya que yo"

CS_Consecutivas = "entonces"|"así que"|"que"|"por lo tanto"|"de esta manera"|"por lo tanto"

CS_Concesivas = "incluso si"|"por mucho que"

CS_Comparativas = "que"|"a"|"como"|"así como"

CS_Finales = "para que"|"para"

//Interjección

Interjeccion = "¡wow!"|"¡ay!"|"¡uh-huh!"|"¡oops!"|"¡hey!"



Contracciones= "estoy"|"estás"|"está"|"está"|"estás"|"está"|"estamos"|"estáis"|"están"




//SIGNOS DE PUNTUACION

/*------------  3raa Area: Reglas Lexicas ---------*/

//-----> Simbolos
//-------> Tokens Lexer

{Sustantivo} { System.out.println("Reconocio "+yytext()+" Sustantivo"); return new Symbol(sym.Sustantivo, yycolumn, yyline, yytext()); } 	
{PRON_PER_SING} { System.out.println("Reconocio "+yytext()+" Pronombre Singular"); return new Symbol(sym.PRON_PER_SING, yycolumn, yyline, yytext()); }  		
{PRON_PER_PLUR} { System.out.println("Reconocio "+yytext()+" Pronombre Plural"); return new Symbol(sym.PRON_PER_PLUR, yycolumn, yyline, yytext()); } 
{PRON_I} {System.out.println("Reconocio "+yytext()+" Pronombre I"); return new Symbol(sym.PRON_I, yycolumn, yyline, yytext()); }

{Pron_Demostrativo} { System.out.println("Reconocio "+yytext()+" Pronombre Demostrativo"); return new Symbol(sym.Pron_Demostrativo, yycolumn, yyline, yytext()); }	 		
{Pron_Interrogativo} { System.out.println("Reconocio "+yytext()+" Pronombre Interrogativo"); return new Symbol(sym.Pron_Interrogativo, yycolumn, yyline, yytext()); }		  
{VER_SING} { System.out.println("Reconocio "+yytext()+" Verbo Singular"); return new Symbol(sym.VER_SING, yycolumn, yyline, yytext()); }	  		
{VER_PLUR} {System.out.println("Reconocio "+yytext()+" Verbo Plural"); return new Symbol(sym.VER_PLUR, yycolumn, yyline, yytext()); }	  		
{VER_AM} {System.out.println("Reconocio "+yytext()+" Verbo Primera Persona"); return new Symbol(sym.VER_AM, yycolumn, yyline, yytext()); }
{PRO_PERSON} {System.out.println("Reconocio "+yytext()+" Pronombre Personal"); return new Symbol(sym.PRO_PERSON, yycolumn, yyline, yytext()); }
{Ar_Definido} { System.out.println("Reconocio "+yytext()+" Articulo Definido"); return new Symbol(sym.Ar_Definido, yycolumn, yyline, yytext()); }		
{Ar_Indefinido} { System.out.println("Reconocio "+yytext()+" Articulo Indefinido"); return new Symbol(sym.Ar_Indefinido, yycolumn, yyline, yytext()); }

{Ad_Posesivo} { System.out.println("Reconocio "+yytext()+" Adjetivo Posesivo"); return new Symbol(sym.Ad_Posesivo, yycolumn, yyline, yytext()); }
{Ad_Demostrativo} { System.out.println("Reconocio "+yytext()+" Adjetivo Demostrativo"); return new Symbol(sym.Ad_Demostrativo, yycolumn, yyline, yytext()); }		
{Ad_Calificativo} { System.out.println("Reconocio "+yytext()+" Adjetivo Calificativo"); return new Symbol(sym.Ad_Calificativo, yycolumn, yyline, yytext()); }		
//{Cardinal} { System.out.println("Reconocio "+yytext()+" Numero Cardinal"); return new Symbol(sym.Ad_Num_Cardinal, yycolumn, yyline, yytext()); }		
//{Ordinal}{ System.out.println("Reconocio "+yytext()+" Numero Ordinal"); return new Symbol(sym.Ad_Num_Ordinal, yycolumn, yyline, yytext()); }
{Ad_Indefinido} { System.out.println("Reconocio "+yytext()+" Adjetivo Indefinido"); return new Symbol(sym.Ad_Indefinido, yycolumn, yyline, yytext()); }	

{VB_Regular} { System.out.println("Reconocio "+yytext()+" Verbo Regular"); return new Symbol(sym.VB_Regular, yycolumn, yyline, yytext()); } 		
{VB_Irregulares} { System.out.println("Reconocio "+yytext()+" Verbo Irregular"); return new Symbol(sym.VB_Irregulares, yycolumn, yyline, yytext()); }		  		

{ADB_Tiempo} { System.out.println("Reconocio "+yytext()+" Adverbio Tiempo"); return new Symbol(sym.ADB_Tiempo, yycolumn, yyline, yytext()); }		  	
{ADB_Lugar} { System.out.println("Reconocio "+yytext()+" Adverbio Lugar"); return new Symbol(sym.ADB_Lugar, yycolumn, yyline, yytext()); }		
{ADB_Cantidad} { System.out.println("Reconocio "+yytext()+" Adverbio Cantidad"); return new Symbol(sym.ADB_Cantidad, yycolumn, yyline, yytext()); }	  		
{ADB_Modo} { System.out.println("Reconocio "+yytext()+" Adverbio Modo"); return new Symbol(sym.ADB_Modo, yycolumn, yyline, yytext()); }	  		
{ADB_Afirmacion} { System.out.println("Reconocio "+yytext()+" Adverbio Afirmacion"); return new Symbol(sym.ADB_Afirmacion, yycolumn, yyline, yytext()); }	  			
{ADB_Negacion} { System.out.println("Reconocio "+yytext()+" Adverbio Negacion"); return new Symbol(sym.ADB_Negacion, yycolumn, yyline, yytext()); }	  			
{ADB_Duda} { System.out.println("Reconocio "+yytext()+" Adverbio Duda"); return new Symbol(sym.ADB_Duda, yycolumn, yyline, yytext()); }		    		

{Preposicion} { System.out.println("Reconocio "+yytext()+" Premoposicion"); return new Symbol(sym.Preposicion, yycolumn, yyline, yytext()); }		  		
{CC_Copulativas} { System.out.println("Reconocio "+yytext()+" Contraccion Copulativa"); return new Symbol(sym.CC_Copulativas, yycolumn, yyline, yytext()); }		 		
{CC_Adversativas} { System.out.println("Reconocio "+yytext()+" Contraccion Copulativa"); return new Symbol(sym.CC_Adversativas, yycolumn, yyline, yytext()); }			  		
{CC_Distributivas} { System.out.println("Reconocio "+yytext()+" Contraccion Distributiva"); return new Symbol(sym.CC_Distributivas, yycolumn, yyline, yytext()); }			  		
{CC_Disyuntivas} { System.out.println("Reconocio "+yytext()+" Contraccion Disyuntiva"); return new Symbol(sym.CC_Disyuntivas, yycolumn, yyline, yytext()); }		  		
{CC_Explicativas} { System.out.println("Reconocio "+yytext()+" Contraccion Explicativa"); return new Symbol(sym.CC_Explicativas, yycolumn, yyline, yytext()); }		 			 		

{CS_Condicionales} { System.out.println("Reconocio "+yytext()+" Contraccion Condicional"); return new Symbol(sym.CS_Condicionales, yycolumn, yyline, yytext()); }		  		
{CS_Casuales} { System.out.println("Reconocio "+yytext()+" Contraccion Casuales"); return new Symbol(sym.CS_Casuales, yycolumn, yyline, yytext()); }		  	
{CS_Consecutivas} { System.out.println("Reconocio "+yytext()+" Contraccion Consecutiva"); return new Symbol(sym.CS_Consecutivas, yycolumn, yyline, yytext()); }		  		
{CS_Concesivas} { System.out.println("Reconocio "+yytext()+" Contraccion Concesivas"); return new Symbol(sym.CS_Concesivas, yycolumn, yyline, yytext()); }		  		
{CS_Comparativas} { System.out.println("Reconocio "+yytext()+" Contraccion Comparativas"); return new Symbol(sym.CS_Comparativas, yycolumn, yyline, yytext()); }		  			
{CS_Finales} { System.out.println("Reconocio "+yytext()+" Contraccion Final"); return new Symbol(sym.CS_Finales, yycolumn, yyline, yytext()); }	  		

{Interjeccion} { System.out.println("Reconocio "+yytext()+" Interjeccion"); return new Symbol(sym.Interjeccion, yycolumn, yyline, yytext()); }	  		
{Contracciones} { System.out.println("Reconocio "+yytext()+" Contraccion"); return new Symbol(sym.Contracciones, yycolumn, yyline, yytext()); }		  			



//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}
{WHITE} {/*Ignore*/}

//------> Errores Lexicos
                       //------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);
                          TError datos = new TError(yytext(),yyline,yycolumn,"Error Lexico","Simbolo no existe en el lenguaje");
                          TablaEL.add(datos);}




({L}({L}|{D}))* {lexeme=yytext(); return ERRORNO;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}

