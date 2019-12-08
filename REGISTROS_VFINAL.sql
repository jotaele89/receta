use db_spmFasttasty
go
/*************************************** USUARIO ***************************************/
INSERT INTO spmUSUtUsuario values ('Eduardo',  'Ayca',    'EduardoA',    'eduardo@gmail.com',  '123456',  'EduardoA.png'), /*1*/
								  ('Jose Luis','Condori', 'JoseLuisC',   'joseluis@gmail.com', '123456',  'JoseLuisC.png' ), /*2*/
								  ('Mireya',   'Pilco',    'MireyaP',    'mireya@gmail.com',   '123456',  'MireyaP.png' ), /*3*/
								  ('Fiorella', 'Salamanca','FiorellaS',  'fiorella@gmail.com', '123456',  'FiorellaS.png' ), /*4*/
								  ('Angela',   'Balaguer', 'AngelaB',    'angela@gmail.com',   '123456',  'AngelaB.png' ), /*5*/
								  ('Leydi',    'Huallpa',  'LeydiH',     'leydi@gmail.com',    '123456',  'LeydiH.png' ) /*6*/

SELECT * from spmUSUtUsuario
/*************************************** RECOMENDACION PARA LA SALUD ***************************************/
INSERT INTO spmPADtPadecimiento_Salud values          ('Celiacos', 'aaaaaaaaaaa') /*1*/
INSERT INTO spmPADtPadecimiento_Salud values          ('Colesterol', 'aaaaaaaaaa') /*2*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Diabetes', 'aaaaaaaaaaa') /*3*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Hiposodico', 'aaaaaaaaaa') /*4*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Proteccion Gastrica', 'aaaaaaaa') /*5*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Sin Lactosa', 'aaaaaaaa') /*6*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Sin Fructuosa', 'aaaaaaaa') /*7*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Rica en Fibra', 'aaaaaaaa') /*8*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Bulimia', 'aaaaaaaa') /*9*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Acidez de est�mago', 'aaaaaaaa') /*10*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Bronquitis', 'aaaaaaaa') /*11*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('�bola', 'aaaaaaaa') /*12*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Endocarditis', 'aaaaaaaa') /*13*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Edema Pulmonar', 'aaaaaaaa') /*14*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Encefalitis', 'aaaaaaaa') /*15*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Fibrosis pulmonar', 'aaaaaaaa') /*16*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Glaucoma', 'aaaaaaaa') /*17*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Gonorrea', 'aaaaaaaa') /*18*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Hepatitis A', 'aaaaaaaa') /*19*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Hepatitis B', 'aaaaaaaa') /*20*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Hepatitis C', 'aaaaaaaa') /*21*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Leucemia', 'aaaaaaaa') /*22*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Migra�as', 'aaaaaaaa') /*23*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Neumon�a', 'aaaaaaaa') /*24*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Obesidad', 'aaaaaaaa') /*25*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Osteoporosis', 'aaaaaaaa') /*26*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Tos', 'aaaaaaaa') /*27*/
INSERT INTO spmPADtPadecimiento_Salud values		   ('Otros', 'aaaaaaaa') /*28*/

SELECT * from spmPADtPadecimiento_Salud
/*************************************** INGREDIENTES ***************************************/
INSERT INTO spmINGtIngrediente values ('Agua','taza','Agua.png') /*1*/
INSERT INTO spmINGtIngrediente values ('Ar�ndanos' ,'gramos','Ar�ndanos.png') /*2*/
INSERT INTO spmINGtIngrediente values ('Ar�ndanos rojos' ,'gramos','Ar�ndanos rojos.png') /*3*/
INSERT INTO spmINGtIngrediente values ('Arroz' ,'gramos','Arroz.png') /*4*/
INSERT INTO spmINGtIngrediente values ('At�n' ,'lata','At�n.png') /*5*/
INSERT INTO spmINGtIngrediente values ('Aceite vegetal','cucharada','Aceite_vegetal.png') /*6*/
INSERT INTO spmINGtIngrediente values ('Avena' ,'taza','Avena.png') /*7*/
INSERT INTO spmINGtIngrediente values ('Az�car' ,'cucharadita','Az�car.png') /*8*/
INSERT INTO spmINGtIngrediente values ('Ajo molido' ,'gramos','Ajo_molido.png') /*9*/
INSERT INTO spmINGtIngrediente values ('Berenjena' ,'unidad','Berenjena.png') /*10*/
INSERT INTO spmINGtIngrediente values ('Betabeles' ,'gramos','Betabeles.png') /*11*/
INSERT INTO spmINGtIngrediente values ('Br�coli' ,'gramos','Br�coli.png') /*12*/     
INSERT INTO spmINGtIngrediente values ('Camotes','unidad','Camote.png') /*13*/
INSERT INTO spmINGtIngrediente values ('Carne de res','gramos','Carne_res.png') /*14*/
INSERT INTO spmINGtIngrediente values ('Carne molida' ,'gramos','Carne_molida.png') /*15*/
INSERT INTO spmINGtIngrediente values ('Carne de cerdo' ,'gramos','Carne_cerdo.png') /*16*/
INSERT INTO spmINGtIngrediente values ('Cebolla','unidad','Cebolla.png') /*17*/
INSERT INTO spmINGtIngrediente values ('Comino molido' ,'cucharadita','Comino_molido.png') /*18*/
INSERT INTO spmINGtIngrediente values ('Culantro' ,'gramos','Culantro.png') /*19*/
INSERT INTO spmINGtIngrediente values ('Chiles verdes' ,'taza','Chiles_verdes.png') /*20*/
INSERT INTO spmINGtIngrediente values ('Consom� de vegetales' ,'gramos','Consom�_vegetales.png') /*21*/
INSERT INTO spmINGtIngrediente values ('Calabaza','gramos','Calabaza.png') /*22*/
INSERT INTO spmINGtIngrediente values ('Cereza','unidad','Cereza.png') /*23*/
INSERT INTO spmINGtIngrediente values ('Chicharos','gramos','Chicharos.png') /*24*/ /*arverjas*/
INSERT INTO spmINGtIngrediente values ('Chiles campana','cucharadas','Chiles_campana.png') /*25*/
INSERT INTO spmINGtIngrediente values ('Chiles jalape�o','unidad','Chiles_jalape�o.png') /*26*/
INSERT INTO spmINGtIngrediente values ('Coles de Bruselas','gramos','Coles_bruselas.png') /*27*/
INSERT INTO spmINGtIngrediente values ('Coliflor','gramos','Coliflor.png') /*28*/
INSERT INTO spmINGtIngrediente values ('Duraznos','unidad','Duraznos.png') /*29*/
INSERT INTO spmINGtIngrediente values ('Elote' ,'gramos','Elote.png') /*30*/
INSERT INTO spmINGtIngrediente values ('Espinacas' ,'taza','Espinacas.png') /*31*/
INSERT INTO spmINGtIngrediente values ('Esparrago' ,'gramos','Esparrago.png') /*32*/
INSERT INTO spmINGtIngrediente values ('Ejotes' ,'gramos','Ejotes.png') /*33*/
INSERT INTO spmINGtIngrediente values ('Frambuesas' ,'unidad','Frambuesas.png') /*34*/
INSERT INTO spmINGtIngrediente values ('Fresas' ,'unidad','Fresas.png') /*35*/
INSERT INTO spmINGtIngrediente values ('Frijoles negros' ,'taza','Frijoles_negros.png') /*36*/
INSERT INTO spmINGtIngrediente values ('Frijoles' ,'gramos','Frijoles.png') /*37*/
INSERT INTO spmINGtIngrediente values ('Granos integrales','gramos','Granos_integrales.png') /*38*/
INSERT INTO spmINGtIngrediente values ('Harina','gramos','Harina.png') /*39*/
INSERT INTO spmINGtIngrediente values ('Hierbas y especias','gramos','Hierbas_especias.png') /*40*/
INSERT INTO spmINGtIngrediente values ('Hongos','gramos','Hongos.png') /*41*/
INSERT INTO spmINGtIngrediente values ('Huevos','unidad','Huevos.png') /*42*/
INSERT INTO spmINGtIngrediente values ('Jengibre molido' ,'gramos','Jengibre_molido.png') /*43*/	 
INSERT INTO spmINGtIngrediente values ('Jugo de lim�n verde','cucharadas','Jugo_lim�n_verde.png') /*44*/
INSERT INTO spmINGtIngrediente values ('Lechugas','hojas','Lechuga.png') /*45*/
INSERT INTO spmINGtIngrediente values ('Leche' ,'litros','Leche.png') /*46*/
INSERT INTO spmINGtIngrediente values ('Lentejas','gramos','Lentejas.png') /*47*/
INSERT INTO spmINGtIngrediente values ('Mayonesa' ,'cucharada','Mayonesa.png') /*48*/
INSERT INTO spmINGtIngrediente values ('Manzanas','unidad','Manzanas.png') /*49*/
INSERT INTO spmINGtIngrediente values ('Nabos','unidad','Nabos.png') /*50*/
INSERT INTO spmINGtIngrediente values ('Naranja','unidad','Naranja.png') /*51*/
INSERT INTO spmINGtIngrediente values ('Papa','unidad','Papa.png') /*52*/
INSERT INTO spmINGtIngrediente values ('Pollo' ,'gramos','Pollo.png') /*53*/
INSERT INTO spmINGtIngrediente values ('Pasta integral' ,'taza','Pasta_integral.png') /*54*/
INSERT INTO spmINGtIngrediente values ('Pimienta' ,'gramos','Pimienta.png') /*55*/
INSERT INTO spmINGtIngrediente values ('Pastinacas','unidad','Pastinacas.png') /*56*/
INSERT INTO spmINGtIngrediente values ('Pavo','gramos','Pavo.png') /*57*/
INSERT INTO spmINGtIngrediente values ('Peras','unidad','Peras.png') /*58*/
INSERT INTO spmINGtIngrediente values ('Pimientos picantes','unidad','Pimientos_picantes.png') /*59*/
INSERT INTO spmINGtIngrediente values ('Pl�tanos','unidad','Pl�tanos.png') /*60*/
INSERT INTO spmINGtIngrediente values ('Pollo','presas','Pollo.png') /*61*/
INSERT INTO spmINGtIngrediente values ('Puerros','gramos','Puerros.png') /*62*/
INSERT INTO spmINGtIngrediente values ('Queso cheddar rallado' ,'onzas','Queso_cheddar_rallado.png') /*63*/
INSERT INTO spmINGtIngrediente values ('Queso parmesano' ,'gramos','Queso_parmesano.png') /*64*/
INSERT INTO spmINGtIngrediente values ('Or�gano' ,'cucharadita','Or�gano.png') /*65*/
INSERT INTO spmINGtIngrediente values ('Pollo','gramos','Pollo.png') /*66*/
INSERT INTO spmINGtIngrediente values ('R�banos','gramos','R�banos.png') /*67*/
INSERT INTO spmINGtIngrediente values ('Repollo','unidad','Repollo.png') /*68*/
INSERT INTO spmINGtIngrediente values ('Ruibarbo','unidad','Ruibarbo.png') /*69*/
INSERT INTO spmINGtIngrediente values ('Sal' ,'gramos','Sal.png') /*70*/
INSERT INTO spmINGtIngrediente values ('Salmon' ,'gramos','Salmon.png') /*71*/
INSERT INTO spmINGtIngrediente values ('Salsa picante' ,'g','Salsa_picante.png') /*72*/
INSERT INTO spmINGtIngrediente values ('Sandia' ,'gramos','Sandia.png') /*73*/
INSERT INTO spmINGtIngrediente values ('Tomate','unidad','Tomate.png') /*74*/
INSERT INTO spmINGtIngrediente values ('Tofu','unidad','Tofu.png') /*75*/
INSERT INTO spmINGtIngrediente values ('Uvas','gramos','Uvas.png') /*76*/
INSERT INTO spmINGtIngrediente values ('Tortilla de harina','unidad','Tortilla_harina.png') /*77*/
INSERT INTO spmINGtIngrediente values ('Vinagre' ,'cucharada','Vinagre.png') /*78*/
INSERT INTO spmINGtIngrediente values ('Yogurt','litro','Yogurt.png') /*79*/
INSERT INTO spmINGtIngrediente values ('Zanahorias' ,'unidad','Zanahorias.png') /*80*/
INSERT INTO spmINGtIngrediente values ('Laurel' ,'hojas','Laurel.png') /*81*/

SELECT * from spmINGtIngrediente
/*************************************** RECETAS ***************************************/
/*------------------------ RECETA 1 ------------------------*/
INSERT INTO spmRECpReceta values ('Wrap de At�n con Lim�n Verde y Culantro','Entrada','15','1. Mezcle el jugo de lim�n verde y la mayonesa en un recipiente peque�o. 
		                                                                A�ada el at�n, el cilantro, los cebollines y los chiles y mezcle bienhasta 
																		que est�n bien cubiertos.
																	 2. Divida la mezcla de at�n entre 5 tortillas. Unte hasta los bordes.
																	 3. Cubra con lechuga y doble o enrolle bien apretado para formar un rollo.
																	 4. Refrigere lo que sobre dentro de las siguientes 2 horas.
																	 NOTA:
																	 * �No hay chiles a la mano? Use1 taza de apio picado y � de taza de 
																	 chiles verdes enlatados.
																	 * Congele el jugo de lim�n verde extra para usar m�s tarde.'
																	 ,'Receta1.png','1'
																	 ,'28')

SELECT * from spmRECpReceta
/*------------------------ RECETA 2 ------------------------*/
INSERT INTO spmRECpReceta values ('Ensalada de Elote','Entrada','15','1. Escurra (o descongele y escurra) el elote. Escurra los frijoles negros.
																	  2. Lave y pique el chile y las hojas de cilantro.
																	  3. Mezcle todos los ingredientes en un recipiente hondo mediano. �Disfr�telo!
																	  4. Refrigere lo que sobre dentro de las siguientes 2 horas.
																	  NOTA:
                                                                      * Una mazorca de elote grande rinde aproximadamente 1 taza de elote desgranado.'
																	 ,'Receta2.png' ,'1'
																	 ,'2')

SELECT * from spmRECpReceta
/*------------------------ RECETA 3 ------------------------*/
INSERT INTO spmRECpReceta values ('Sopa de Lentejas con Jugo de Lim�n Verde','Entrada','10','1. En una cacerola grande, sofr�a la cebolla en el aceite a temperatura 
																								medio alto (350 grados F en una sart�n el�ctrica).
																							 2. A�ada las lentejas, el agua, la sal, la pimienta, el comino, el or�gano 
																							    o tomillo y las hojas de laurel. Deje hervir. Reduzca el fuego a medio-bajo 
																								(250 grados en una sart�n el�ctrica). Cubra y cocine a fuego lento, revolviendo 
																								ocasionalmente durante 30 minutos.
																							 3. A�ada los chiles verdes, el chile campana rojo y la zanahoria. Cocine 15 minutos 
																							    m�s, o hasta que las lentejas est�n tiernas.
																							 4. Antes de servir saque las hojas de laurel. A�ada y revuelva el jugo de lim�n 
																							    verde. Sirva caliente.
																							 5. Refrigere lo que sobre dentro de las siguientes 2 horas.
																							 NOTA:
																							 * Sirva con crema agria baja en grasa y tomates picados.
																							 * Esta sopa tambi�n es buena si se le a�ade una papa, otra zanahoria y apio.
																							 * Elimine los chiles y el comino si no quiere el sabor Mexicano.
																							 * Congele el jugo de lim�n verde extra para usar m�s tarde.'
																	 ,'Receta3.png'
																	 ,'1'
																	 ,'9')

SELECT * from spmRECpReceta
/*------------------------ RECETA 4 ------------------------*/
INSERT INTO spmRECpReceta values ('Costillar de cerdo con ali�o de ajo','Fondo','45',
																	'Precalentamos el horno a 170-180�
																	Pelamos y picamos los ajos (se puede quitar el coraz�n para que repita menos)
																	Los mezclamos en un bol junto a la sal, la pimienta y echamos un chorro de aceite
																	Separamos las costillas una a una
																	Preparamos una bandeja de horno con un poco de aceite y las colocamos
																	A�adimos el ali�o de ajo a las costillas
																	Una vez se doren les damos la vuelta y esperamos a que est�n hechas
																	*Podemos acompa�ar el plato con patatas al horno o con verduritas'
																	,'Receta4.png'
																	
																	,'1'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 5 ------------------------*/
INSERT INTO spmRECpReceta values ('Pechuga de pollo al vinagre bals�mico y champi�ones','Fondo','25',
																	'Cubrimos el fondo de la paella con aceite
																	Pasamos las pechugas por harina
																	Las pasamos por la sart�n hasta que est�n doradas por ambos lados
																	Retiramos y a�adimos la mantequilla/margarina a la sart�n
																	A�adimos los champi�ones y la pimienta y los cocinamos
																	A�adimos vinagre bals�mico y cocinamos hasta reducirlo
																	Echamos el caldo de pollo y lo dejamos a fuego lento
																	A�adimos las pechugas a la sart�n y las cocinamos durante 5 minutos aprox.'
																	,'Receta5.png'
																	
																	,'2'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 6 ------------------------*/
INSERT INTO spmRECpReceta values ('Ensalada de tomate y pepino','Entrada','10',
																	'Limpiamos los tomatitos y el pepino
																	Cortamos los tomates por la mitad
																	Pelamos y cortamos el pepino en rodajas o a lo largo
																	Colocamos el pepino y el tomate en el plato y salpimentamos a nuestro gusto
																	Ali�amos con el aceite y el vinagre
																	Podemos a�adir algo de prote�na con un huevo duro o con lonchas de pavo si queremos'
																	,'Receta6.png'
																	
																	,'2'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 7 ------------------------*/
INSERT INTO spmRECpReceta values ('Tiras de pollo rebozado con parmesano','Entrada','30',
																	'Precalentamos el horno a 240�
																	Cortamos las pechugas en tiras del tama�o que queramos, preferiblemente alargadas y finas
																	Ponemos aceite de oliva en papel de horno y lo extendemos
																	En un plato hondo mezclamos la harina, el parmesano, el ajo y la pimienta
																	En otro plato hondo batimos los huevos y remojamos las tiras de pechuga
																	Rebozamos las pechugas en la mezcla de harina y parmesano
																	Ponemos las pechugas sobre el papel de horno y las pintamos con aceite
																	Metemos las pechugas en el horno durante 15-20 minutos hasta que est�n doradas'
																	,'Receta7.png'
																	
																	,'2'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 8 ------------------------*/
INSERT INTO spmRECpReceta values ('Caldo de pollo','Fondo','30',
																	'Introduce en una olla el pollo troceado y c�brelo con agua (3 litros).
																	Lleva a ebullici�n.
																	Cuando el agua rompa a hervir, a�ade las verduras peladas y troceadas. Salpimenta y a�ade el manojo de perejil.
																	Hierve a fuego suave durante una hora y media, hasta obtener un caldo con sustancia.
																	Cuando tengamos el caldo listo, hay que colarlo y reservar las verduras y el pollo.
																	Hierve de nuevo el caldo y a�ade los fideos. Cuece hasta que la pasta est� hecha.'
																	,'Receta8.png'
																	
																	,'3'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 9 ------------------------*/
INSERT INTO spmRECpReceta values ('Yakisoba de pollo y verduras','Fondo','30',
																	'Lo primero es hervir los noodles, y escurrirlos
																	Mientras tanto, vamos cortando las verduras y las pechugas de pollo
																	En una sart�n grande, echamos el aceite de oliva, el de s�samo y la salsa de chile
																	Salteamos menos de un minuto y a�adimos el ajo, y salteamos 30 segundo m�s aprox
																	A�adimos el pollo y echamos � de la salsa de soja hasta que coja color.
																	Retiramos el contenido de la sart�n y lo dejamos apartado
																	Echamos la cebolla, el repollo y las zanahorias a la sart�n
																	Salteamos las verduras durante 2 o 3 minutos, que cojan color
																	A�adimos el pollo, los noodles y el resto de la salsa de soja
																	Mezclamos todo el contenido en la sart�n caliente y ya estar�a listo para servir'
																	,'Receta9.png'
																	
																	,'3'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 10 ------------------------*/
INSERT INTO spmRECpReceta values ('Arroz con leche para diabetes','Salida','60',
																	'Echamos la leche, el lim�n o la naranja y la rama de canela en un cazo y hervimos
																	Lavamos en arroz antes de hervirlo para eliminar un poco del almid�n
																	A�adimos el arroz a la leche hirviendo y lo ponemos a fuego bajo para cocerlo
																	Lo dejamos as� entre 40 y 50 minutos.
																	Vamos removiendo para evitar que se pegue al fondo cada 5 minutos aprox
																	Comprobamos la textura del arroz para ver si est� hecho y retiramos
																	Espolvoreamos un poco de canela en polvo en cada raci�n
																	Lo dejamos reposar
																	Podemos comerlo templado o fr�o seg�n queramos.'
																	,'Receta10.png'
																	
																	,'3'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 11 ------------------------*/
INSERT INTO spmRECpReceta values ('Pierna de cordero lechal con patatas y manzana al horno','Fondo','150',
																	'Untamos la pierna de cordero con la manteca y a�adiremos sal
																	Ponemos una cucharada de manteca tambi�n en la bandeja del horno
																	Ponemos tambi�n un poco de agua y sal
																	Hacemos unos cortes ligeros en la pierna de cordero para repartir el calor
																	Introducimos el cordero en el horno a temperatura media (150� aprox)
																	Al cabo de una hora sacaremos la pierna y le daremos la vuelta.
																	A�adimos un vaso de agua con lim�n y metemos dentro el cordero otra vez
																	Subimos un poco la temperatura del horno y lo dejamos 45 minutos m�s.
																	Mientras tanto, preparamos las patatas y la manzana para asar.
																	Las lavamos, a�adimos aceite y sal al gusto y las cortamos como queramos.
																	A�adimos tomillo a la patata y la manzana, que dejaremos sin pelar.
																	Una vez veamos que el cordero est� tierno y la piel dorada estar� listo para servir.'
																	,'Receta11.png'
																	
																	,'4'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 12 ------------------------*/
INSERT INTO spmRECpReceta values ('Paella de marisco','Fondo','45',
																	'En una paellera ponemos un poco de aceite y sofre�mos las gambas. Una vez hechas las apartamos.
																	Picamos la cebolla, el pimiento verde en trozos peque�os. Lo sofre�mos en la paellera junto al tomate natural.
																	Cuando las verduras est�n pochadas a�adimos los calamares y salteamos unos minutos.
																	Incorporamos el arroz y una pizca de colorante alimentario. Removemos para que todo se mezcle bien.
																	Echamos el caldo de pescado y sal al gusto. Dejamos hervir.
																	Cuando el caldo se est� consumiendo incorporamos los mejillones, las gambas y los calamares.
																	Tras unos 20 minutos de cocci�n del arroz probamos para ver si est� al gusto y si es as� retirar la paella del fuego y dejar reposar unos minutos tapada con un pa�o.'
																	,'Receta12.png'
																	
																	,'4'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 13 ------------------------*/
INSERT INTO spmRECpReceta values ('Norimaki de arroz, zanahoria y pepino','Entrada','45',
																	'Cocemos el arroz integral
																	Tostamos las hojas de la alga coloc�ndolas a unos 4 cent�metros del fuego.
																	Las movemos de un lado a otro para evitar que se quemen hasta que se pongan de color verde
																	Colocamos las hojas sobre la esterilla de bamb�.
																	Ponemos el arroz en la alga, lo extendemos y dejamos un espacio en el extremo
																	Diluimos mantequilla de cacahuete en un poco de agua caliente y la ponemos sobre el arroz
																	Cocinamos la zanahoria al vapor durante 5 minutos
																	Cortamos la zanahoria y el pepino a tiras y lo colocamos sobre el arroz
																	Enrollamos las tiras presionando con firmeza hasta el final
																	Humedecemos el espacio vaci� que hab�amos dejado en la alga Nori y la pegamos
																	Cortamos el rollo en trozos seg�n el tama�o que queramos que tenga el Maki'
																	,'Receta13.png'
																	
																	,'4'
																	,'3')

SELECT * from spmRECpReceta
/*------------------------ RECETA 14 ------------------------*/
INSERT INTO spmRECpReceta values ('Porridge de avena y fruta','Entrada','10',
																	'En una olla peque�a echamos la leche y los copos. Ponemos a cocer la olla unos 5 minutos aproximadamente a fuego medio-bajo y removemos continuamente.
																	Pelamos la manzana y preparamos las almendras.
																	Cuando la avena empiece a espesar y a coger una textura cremosa, apagamos el fuego y servimos en un bol.
																	En la parte superior del porridge colocamos la manzana troceada y las almendras.
																	Si queremos endulzar un poco, podemos esparcir una cucharada de miel. Incluso, podemos a�adir canela en polvo al gusto.'
																	,'Receta14.png'
																	
																	,'5'
																	,'3')

SELECT * from spmRECpReceta

/*------------------------ RECETA 15 ------------------------*/
INSERT INTO spmRECpReceta values ('Ensalada tibia de qu�noa','Fondo','30',
																	'Poner la qu�noa en un colador y limpiarla bajo agua del grifo. Ponerla en un cazo con agua (400ml de agua) y llevarla al fuego durante 12 minutos. Una vez cocida reservar.
																	Pelamos y picamos el ajo, la cebolla.
																	Cortamos el pimiento, el calabac�n, la berenjena.
																	Cortamos la pechuga en dados y salpimentamos.
																	Calentar el aceite de oliva en un sart�n y saltear las pechugas. Reservar.
																	En la misma sart�n, empezamos salteando el ajo, la cebolla, el pimiento hasta que empiecen a quedarse dorados.
																	A�adir el calabac�n y la berenjena salpimentar y dejar cocinar tapado durante 8 minutos.
																	Incorporar el pollo que hemos salteado para que se acabe de cocer 5 minutos.
																	Retirar del fuego y mezcla con la qu�noa cocida previamente.'
																	,'Receta15.png'
																	
																	,'5'
																	,'3')
SELECT * from spmRECpReceta
/*------------------------ RECETA 16 ------------------------*/
INSERT INTO spmRECpReceta values ('Crema catalana sin az�car','Fondo','75',
																	'Lavar bien la piel del lim�n y la naranja. Quitar la parte blanca interna de la piel para evitar amargor.
																	Coger un cazo y a fuego lento e introducir la leche, la canela, el aroma de vainilla, las pieles y la media rama de canela. Dejar infusionar durante 30 minutos.
																	Aumentar la potencia del fuego para hacer hervir la leche y despu�s la apartamos del fuego para que repose.
																	Batir las yemas del huevo junto a la stevia y a�adir la harina de ma�z tamizada mezclando bien para que no queden grumos.
																	Aflojar el fuego e ir a�adiendo las yemas con la harina removiendo lentamente con unas varillas.
																	Cuando empiece a espesar retirar del fuego y seguir removiendo durante 10 minutos aproximadamente hasta alcanzar el espesor deseado.
																	Servir en cuencos peque�os individuales y dejar enfriar.
																	Dependiendo del gusto de cada persona, se puede realizar un alm�bar poniendo una cucharada de agua a hervir y a�adir una pizca de stevia.'
																	,'Receta16.png'
																	
																	,'5'
																	,'3')
SELECT * from spmRECpReceta
/*------------------------ RECETA 17 ------------------------*/
INSERT INTO spmRECpReceta values ('Tallarines con verduras y gambas','Fondo','25',
																	'Hervir los tallarines en abundante agua con sal hasta que est�n al dente; refrescar y reservar.
																	Descongelar las gambas, escurrir y reservar.
																	Pelar, lavar y cortar en juliana los puerros, la zanahoria, el nabo y el ajo.
																	Picar finamente el eneldo fresco.
																	Calentar aceite en sart�n antiadherente, saltear las gambas hasta dorar y retirar.
																	A�adir a la misma sart�n el puerro, la zanahoria y el nabo y sofre�r; a media cocci�n a�adir el ajo y seguir sofriendo.
																	A�adir los tallarines y el eneldo picado, saltear 2 minutos y a�adir las gambas; saltear todo el conjunto 2 minutos m�s, y por �ltimo, a�adir la salsa de soja.'
																	,'Receta17.png'
																	
																	,'6'
																	,'3')
SELECT * from spmRECpReceta
/*------------------------ RECETA 18 ------------------------*/
INSERT INTO spmRECpReceta values ('Sardinas en escabeche al papillotte','Fondo','40',
																	'Eviscerar y quitar las escamas a las sardinas y reservar.
																	Para el escabeche, lavar y cortar las verduras en juliana muy fina; saltearlas en aceite caliente hasta dorar y retirar del fuego.
																	A�adir el piment�n rojo, el romero fresco, la sal, el vinagre y, por �ltimo, el agua y dejar hervir unos minutos; enfriar y reservar.
																	Disponer las sardinas encima de papel sulfurizado.
																	Colocar encima el escabeche, cerrar y cocer en horno.
																	Cocer en horno medio (160�c) durante 25 minutos.
																	Dejar macerar al menos una hora y reservar en fr�o.'
																	,'Receta18.png'
																	
																	,'6'
																	,'3')
SELECT * from spmRECpReceta
/*------------------------ RECETA 19 ------------------------*/
INSERT INTO spmRECpReceta values ('Emblanco','Fondo','75',
																	'Poner a calentar el aceite y el agua en una olla.
																	A�adir troceado el pimiento, tomate, cebolla, ajo y las patatas.
																	Dejar cocinar hasta que las patatas est�n blandas y a�adir la sal al gusto y el lim�n para que el caldo se vuelva de color blanco.
																	A�adir el rape limpio y troceado.
																	Dejar hervir hasta que el pescado est� cocinado.'
																	,'Receta19.png'
																	
																	,'6'
																	,'3')
SELECT * from spmRECpReceta

/*************************************** RECETA INGREDIENTES ***************************************/
/*------------------------ RECETA 1 ------------------------*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('1','44','3') /*1*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('1','48','2') /*2*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('1','5','2') /*3*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('1','19','133') /*4*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('1','17','2') /*5*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('1','25','1')  /*6*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('1','26','1')  /*7*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('1','77','5')  /*8*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('1','45','5')   /*9*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 2 ------------------------*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('2','30','225') /*10*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('2','36','1') /*11*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('2','25','2') /*12*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('2','19','80') /*13*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('2','78','1') /*14*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('2','6','1')  /*15*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 3 ------------------------*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('3','6','1') /*16*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('3','17','1') /*17*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('3','47','454') /*18*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('3','1','8') /*19*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('3','70','6') /*20*/
INSERT INTO spmRINpReceta_Ingrediente values	       ('3','18','1')  /*21*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('3','55','3')  /*22*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('3','65','1')  /*23*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('3','81','3')   /*24*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('3','20','1')   /*25*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('3','25','1')   /*26*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('3','80','1')   /*27*/
INSERT INTO spmRINpReceta_Ingrediente values		   ('3','44','1')   /*28*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 4 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 5 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 6 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 7 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 8 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 9 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 10 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 11 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 12 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 13 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 14 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 15 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 16 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 17 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 18 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*------------------------ RECETA 19 ------------------------*/

SELECT * from spmRINpReceta_Ingrediente
/*************************************** PLANIFICADOR ***************************************/
INSERT INTO spmPLApPlanificacion values (GETDATE(),'6','2','1') /*16*/

SELECT * from spmPLApPlanificacion
/*************************************** VALORACION ***************************************/

INSERT INTO spmVALtValoracion values ('5','Tiene una gran variedad de productos que le puedes colocar 
			   							 a tu ensalada o wrap. Es ideal para comer en la hora 
										 de almuerzo porque la comida es muy fresca y para nada pesada.',GETDATE(),'2','1') /*16*/
SELECT * from spmVALtValoracion