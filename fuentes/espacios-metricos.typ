
#import "../typst-maths-book-template/main-template.typ": *




Este capítulo es algo distinto a los demás. Trata conceptos geométricos
generales, válidos para todas las geometrías. En el siguiente ya nos
introducimos en la geometría euclidiana, que será la que usemos a lo largo
de todo el libro, con la excepción de una pequeña incursión que hacemos en
la geometría hiperbólica en el Capítulo 9.

En los capítulos de la geometría euclidiana, algunos de los conceptos que se
dan son también generales para todas las geometrías y, por tanto, se podrían
haber presentado en este capítulo, perfectamente. Sin embargo, se ha optado
por dispersar en distintos capítulos las definiciones relativas a los
espacios métricos (es decir, generales para cualquier geometría), para que
resulte más "digerible" para el lector.


Algo que debe tener en cuenta es que, en este capítulo, algunos de los
ejemplos solo se plantean, sin resolverlos, y se presentan al final del
mismo como ejercicios.





*pág. 11*. *Definición 1.1*. En lo que respecta a la definición de _métrica_
o _distancia_, me gusta más la siguiente, ya que me parece más "elegante".

#deffinition[Métrica o Distancia][
  Dado un conjunto $bold(P)$ no vacío, una _métrica_ o _distancia_ es toda
  aplicación $d: bold(P) times bold(P) arrow.r.long bb(R)^+ union {0}$ en la
  que para cualesquiera $x, y, z in bold(P)$ se cumple:

  #[ #set enum(numbering: "(i)")
  + $d (x, y) = 0$ si y solo si $x = y$.
  + $d (x, y) = d (y, x)$. (Simetría.)
  + $d (x, y) lt.eq d(x, z) + d(z, y)$. (Desigualdad triangular.)
  ]
] <def-metrica>

La definición que dan en @costa establece como codominio a todo $bb(R)$ y
luego hace una corrección de este en el punto (i). Quizás se deba a que
resulta más cómoda si se desea comprobar punto por punto, en los ejercicios,
demostraciones, etc.

Lo único es que, con la mía, hay que tener cuidado para ciertas cosas. Por
ejemplo, para demostrar el paso que si $d (x, y) = 0$ entonces $x = y$.
Conviene hacerlo con el condicional contrarrecíproco, que sería lo mismo que
en la definición de @costa.







*pág. 11*. *Ejemplo 1.2*. No llega a demostrar, ni aquí ni en el *Ejercicio
1.2*, los dos primeros puntos. Aunque sea fácil, vamos a hacerlo aquí.

Advierta que las coordenadas que se usan en este ejercicio son distintas a
las que está acostumbrado. Normalmente, se usan coordenadas del tipo

$ u = (x_1, y_1), quad v = (x_2, y_2) $

en lugar de

$ x = (x_1, x_2), quad y = (y_1, y_2) $

Lo primero será ver que $bb(R)^2$ es no vacío, cosa que sabemos
perfectamente, por tratarse de un conjunto que conocemos. Por ejemplo,
contiene al elemento $(0, 0)$.

Luego, se debe comprobar que el rango de la función $d_E$ se encuentra en
$bb(R)^+ union {0}$. Esto es fácil de ver por la fórmula de la función pues
todo lo que esté elevado al cuadrado producirá un valor mayor o igual que
$0$. La suma de esos valores será también mayor o igual que $0$ y, a su vez,
la raíz cuadrada de esto será también mayor o igual que $0$.

Del punto (i), es trivial ver que si $x = y$ entonces $d_E (x, y) = 0$, con
una argumentación similar a la anterior. Más complicado es el otro
condicional, es decir, que de $d_E (x, y) = 0$ se deduce que $x = y$. Es más
cómodo hacerlo mediante su condicional contrarrecíproco, es decir, que de $x
eq.not y$ se deduce que $d_E (x, y) eq.not 0$. Habría que ver los tres casos
posibles en los que $x eq.not y$:

+ $x_1 eq.not y_1$, $x_2 eq.not y_2$.
+ $x_1 eq.not y_1$, $x_2 = y_2$.
+ $x_1 = y_1$, $x_2 eq.not y_2$.

En todos y cada uno de estos casos, se tiene que alguna de las
subexpresiones $(x_i - y_i)^2$ para $i = 1, 2$ será mayor que $0$. Entonces,
en cualquier caso, se tendrá que alguna de estas contribuye con un valor
mayor estricto que $0$; la otra, como poco, con $0$. La suma será entonces
mayor estricto que $0$ y su raíz, evidentemente, será también mayor estricto
que $0$.


/*
$ d_E (x, x) = sqrt((x_1 - x_1)^2 + (x_2 - x_2)^2) = sqrt(0^2 + 0^2) =
sqrt(0) = 0 $

Si $x eq.not y$, tenemos una de las tres situaciones siguientes:

+ $x_1 = y_1$ y $x_2 eq.not y_2$.
+ $x_1 eq.not y_1$ y $x_2 = y_2$.
+ $x_1 eq.not y_1$ y $x_2 eq.not y_2$.

En cualquiera de los casos, habrá, para algún $i = 1, 2$, un $x_i - y_i
eq.not 0$ y, por tanto, un $(x_i - y_i)^2 > 0$. Por tanto, en esos tres
casos, se tiene que $d_E (x, y) > 0$.
*/

Punto (ii).

$ d_E (x, y)
  &= sqrt((x_1 - y_1)^2 + (x_2 - y_2)^2) \
  &= sqrt(1 (x_1 - y_1)^2 + 1 (x_2 - y_2)^2) \
  &= sqrt((-1)^2 (x_1 - y_1)^2 + (-1)^2 (x_2 - y_2)^2) \
  &= sqrt([(-1) (x_1 - y_1)]^2 + [(-1) (x_2 - y_2)]^2) \
  &= sqrt((y_1 - x_1)^2 + (y_2 - x_2)^2) \
  &= d_E (y, x) $

La *métrica inducida* es lo mismo que el concepto de _restricción_ de una
aplicación, solo que para espacios métricos. Si no conoce este concepto,
este se estudia en asignaturas de lógica y teoría de conjuntos.

En cuanto a la notación, se podría usar también la notación usual para la
restricción de una aplicación, que en este caso sería algo como $delta |_(M'
times M')$, para $M' subset.eq M$.

La nueva función se comporta del mismo modo que la vieja, solo que en un
dominio más restringido.

$ delta : && M times M & arrow.r.long     && bb(R) \
          && (x, y)    & arrow.r.bar.long && delta (x, y) $

mientras que

$ delta |_(M' times M') :
    && M' times M' & arrow.r.long
      && bb(R) \
    && (x, y)      & arrow.r.bar.long
      && delta |_(M' times M') (x, y) = delta (x, y) $





*Definición 1.5*. Alternativamente a como se define el concepto de
_isometría_, podríamos definirla como

$ g : med (M, delta) arrow.r.long (M', delta') $

Y, de hecho, en @costa se usa esta notación un poco después, en la
*Definición 1.8*. En el fondo, la que usa el libro se refiere de forma
implícita a esta. En su definición se entiende de forma tácita cuáles son
las métricas en cada uno de los conjuntos.

En cuanto a la demostración de que una restricción a $M' times M'$ de la
aplicación métrica $delta$ es también una métrica, creo que faltaría decir
que las propiedades de la definición de métrica ninguna es del tipo
_closure_.




*Teorema 1.7*. En la demostración, hace uso de algunos resultados de la
teoría de conjuntos. Puede consultarlo, entre otras referencias, en
// @pineda
(pág. 104-105). Concretamente, el 3.59 (de Caracterización de una Aplicación
Biyectiva) y 3.60.

Al comienzo, se dice que $h circle.stroked.tiny g$ y $g^(- 1)$ son
biyectivas, pero no se da nada de información. Concretamente, esto es
consecuencia de que tanto $g$ como $h$ son aplicaciones biyectivas.

Además, tampoco menciona que se dan las condiciones para que se pueda dar
esa composición de aplicaciones, es decir, $h circle.stroked.tiny g$. Lo
primero que se debe cumplir para que $h circle.stroked.tiny g$ sea una
aplicación es que

$ "Im"(g) subset.eq "Dom"(h) $

En la parte que demuestra que conservan las distancias, se están suponiendo
algunas cosas que se cumplen por ser $g^(- 1)$ y $h circle.stroked.tiny g$
aplicaciones biyectivas. Por ejemplo, que existe un $x in M$ tal que
$h(g(x)) in M''$.

Además, al ser biyectivas son inyectivas y esto hace que ese elemento $x in
M$ sea único, condición que también se requiere aquí; o que lo sean $u$ y
$v$.





En la *Definición 1.8*, también se puede usar una notación más explícita, al
igual que sucede con lo que dijimos antes sobre la definición de
_isometría_. En este caso, sería $"Isom"(M, delta)$.





Al final de la página. Las propiedades 1 y 2 son casos particulares del
Teorema 1.7. Por su parte, la demostración del punto 3 es trivial.





*Nota 1.9*. En este caso, la operación interna sería la composición de
aplicaciónes. Al cumplir las propiedades de grupo, que se mencionan en el
texto, también se le suele llamar _grupo de isometrías_ $(M, delta)$, y
también se suele ver en asignaturas de álgebra abstracta.

Es fácil de demostrar que se trata de un grupo. La propiedad asociativa (la
primera que menciona) se cumple por cumplirse para todas las aplicaciones.
La del elemento neutro (la segunda) es la propiedad identidad mencionada en
el punto 3 de las propiedades anteriores. La del elemento simétrico (la
tercera) es también sencilla: se tiene que la simétrica de una isometría
será su aplicación inversa (o, lo que es lo mismo, su simétrica respecto a
la composición).





*Ejemplo 1.11*. En realidad, creo que la forma de definir $delta_G$ no es
muy precisa. Sería mejor "la menor de las posibles longitudes".

Algo interesante es demostrar también por qué la aplicación

$ delta_G = "Distancia máxima entre" p med "y" med q $

no es una métrica. Una razón es que puede darse $delta (x, x) > 0$ para
algún $x in G$.





*Definición. 1.12*. Además de llamarlo "segmento de extremos $a$ y $b$",
también se le suele llamar "segmento $a$ $b$".





En la definición de _puntos alineados_, se podría explicar también que esto
está relacionado con el concepto de _recta_, que se define en el capítulo
siguiente.





*Ejercicio 1.5*. Este es el ejercicio más relevante de este capítulo. Tiene
cierta relación con algo que se verá en el capítulo dedicado a las
isometrías. El apartado que me parece más difícil de comprender es el D. Lo
pongo a continuación a mi manera.

Lo primero que hace es demostrar un resultado general para este espacio
métrico, $(bb(R), d_(bb(R)))$. Concretamente, que si dos de sus isometrías
cumplen

$ f_1 (0) = f_2 (0), quad f_1 (1) = f_2 (1) $

entonces son la misma, es decir, $f_1 = f_2$. Veamos por qué.

Para demostrar esto, nos basaremos en el resultado del punto C. Partiendo de
la hipótesis, supongamos ahora otra isometría $g = f_1^(-1) compose f_2$,
pues, tal y como se explicó, la composición de dos isometrías sobre un mismo
espacio métrico es también una isometría sobre ese mismo espacio métrico;
por tanto, $g in "Isom"(bb(R), d_(bb(R)))$.

Por la hipótesis tenemos que

$ g(0)
    = (f_1^(-1) compose f_2) (0)
    = f_1^(-1) (f_2 (0))
    = f_1^(-1) (f_1 (0))
    = "id"_(bb(R)) (0) = 0 $

y

$ g(1)
    = (f_1^(-1) compose f_2) (1)
    = f_1^(-1) (f_2 (1))
    = f_1^(-1) (f_1 (1))
    = "id"_(bb(R)) (1) = 1 $

Es decir, en esta nueva isometría tenemos dos puntos fijos. Por tanto, tal y
como se demuestra en el punto $C$, se tendrá que $g = "id"_(bb(R))$.

Vamos a operar:

$ f_1 compose g = f_1 compose (f_1^(-1) compose f_2) = (f_1 compose
f_1^(-1)) compose f_2 = "id"_(bb(R)) compose f_2 = f_2 $

y, por otro lado,

$ f_1 compose g = f_1 compose "id"_(bb(R)) = f_1 $

con lo que tenemos que $f_1 = f_2$.

Terminada la demostración de este resultado, pasamos a ver ahora que, para
una isometría $g(x) = sigma (x) + tau$ siendo $sigma in {-1, 1}$ y $tau in
bb(R)$, se cumplirá que $g(0) = h(0)$ y $g(1) = h(1)$ para una isometría
cualquiera $h$ en $(bb(R), d_(bb(R)))$, con lo que podremos concluir que
ambas isometrías son la misma, por lo dicho antes.

Primero, recordar que, como se vio en el punto A de este mismo ejercicio,
esa función $g$ es una isometría de $(bb(R), d_(bb(R)))$.

Tal y como vamos a ver ahora, basta con tomar la siguiente definición de
$g$:

$ g(x) = [h(1) - h(0)] + h(0) $

Esto se debe a que deseamos, por un lado, que $g(0) = h(0)$. Para que se dé
esto, debe cumplirse lo siguiente:

$ h(0) = g(0) = sigma 0 + tau = tau $

Por otro lado, se debe dar que $g(1) = h(1)$. Veámoslo:

$ h(1) = g(1) = sigma + tau = sigma + h(0) $

de lo que se deduce que $sigma = h(1) - h(0)$. Estos dos resultados producen
la fórmula que hemos dado para $g(x)$.

Por cierto, advierta que $|h(1) - h(0)| = 1$ por ser $h$ una isometría. Por
tanto, $sigma in {-1, 1}$.






