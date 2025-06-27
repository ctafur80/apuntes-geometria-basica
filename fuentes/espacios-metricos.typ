
#import "../typst-maths-book-template/main-template.typ": *





Este capítulo es algo distinto a los demás. Trata conceptos geométricos
generales, válidos para todas las geometrías. En el siguiente ya nos
introducimos en la geometría euclidiana, que será la que usemos a lo largo
de todo el libro, con la excepción de una pequeña incursión que hacemos en
la geometría hiperbólica en el Capítulo 9.

En los capítulos de la geometría euclidiana, algunos de los conceptos que se
dan son también generales para todas las geometrías, pero no se presentan
todos en este capítulo porque de hacerlo sería enorme en relación a los
demás. Se ha optado por ir introduciendo los conceptos no tan de golpe.





*pág. 11*. *Definición 1.1*. Personalmente, me gusta más la definición
siguiente del concepto de _métrica_ o _distancia_.

#deffinition[Métrica o Distancia][
  Una aplicación $d: bold(P) times bold(P) arrow.r.long bb(R)^+ union {0}$
  es una distancia o métrica si, para cualesquiera $x, y, z in bold(P)$, se
  cumplen:

  #[ #set enum(numbering: "(i)")
  + $d (x, y) = 0$ si y solo si $x = y$.
  + $d (x, y) = d (y, x)$. (Simetría.)
  + $d (x, y) lt.eq d(x, z) + d(z, y)$. (Desigualdad triangular.)
  ]
] <def-metrica>

La definición que dan en @costa establece como codominio a todo $bb(R)$ y
luego hace una corrección de este en el punto (i). Quizás lo hace para que
sea más cómodo usar esa definición en las demostraciones y ejercicios, al ir
punto por punto. En cualquier caso, a mí me parece más elegante la que
presento aquí.





*pág. 11*. *Ejemplo 1.2*. No llega a demostrar, ni aquí ni en el *Ejercicio
1.2*, los dos primeros puntos. Aunque sea fácil, vamos a hacerlo aquí.

Vamos a usar las coordenadas de un modo distinto al que se usan en este caso
en el libro. Usaremos las que está acostumbrado TKTK.

Lo primero será ver que $bb(R)^2$ es no vacío, cosa que sabemos
perfectamente, por tratarse de un conjunto que conocemos. Por ejemplo,
contiene al elemento $(0, 0)$.

Advierta que estamos usando una notación distinta a la que solemos usar para
$bb(R)^2$. Lo normal habría sido usar algo como

$ u = (x_1, y_1), quad v = (x_2, y_2) $

pero aquí seguiremos con la misma con la que han planteado el ejemplo.

Comprobemos que se cumplen las dos primeras condiciones de la


Punto 1.

$ d_E (x, x) = sqrt((x_1 - x_1)^2 + (x_2 - x_2)^2) = sqrt(0^2 + 0^2) =
sqrt(0) = 0 $

Si $x eq.not y$, tenemos una de las tres situaciones siguientes:

+ $x_1 = y_1$ y $x_2 eq.not y_2$.
+ $x_1 eq.not y_1$ y $x_2 = y_2$.
+ $x_1 eq.not y_1$ y $x_2 eq.not y_2$.

En cualquiera de los casos, habrá, para algún $i = 1, 2$, un $x_i - y_i
eq.not 0$ y, por tanto, un $(x_i - y_i)^2 > 0$. Por tanto, en esos tres
casos, se tiene que $d_E (x, y) > 0$.

Punto 2.

$ d_E (x, y)
  &= sqrt((x_1 - y_1)^2 + (x_2 - y_2)^2) \
  &= sqrt((- 1)^2 (x_1 - y_1)^2 + (- 1)^2 (x_2 - y_2)^2) \
  &= sqrt(\[ (- 1) (x_1 - y_1) \]^2 + \[ (- 1) (x_2 - y_2) \]^2) \
  &= sqrt((y_1 - x_1)^2 + (y_2 - x_2)^2) \
  &= d_E (y, x) $





La métrica inducida es lo mismo que el concepto de restricción de una
aplicación, solo que para espacios métricos. Esto se estudia en asignaturas
de lógica y teoría de conjuntos.

Dado un conjunto $M'$ tal que $M' subset.eq M$, la restricción de la
aplicación $delta$ a $M' times M'$ es la métrica inducida.

En cuanto a la notación, se pueden usar cosas como $delta \|_(M' times M')$.
Suele ser usual usar esa notación para la restricción de las aplicaciones.

La nueva función se comporta del mismo modo que la vieja, solo que en un
dominio más restringido.

$ delta : && M times M & arrow.r.long     && bb(R) \
          && (x, y)    & arrow.r.bar.long && delta (x, y) $

mientras que

$ delta \|_(M' times M') :  && M' times M' & arrow.r.long     && bb(R)\
                            && (x, y)      & arrow.r.bar.long && delta_(\|_(M' times M')) (x, y) = delta (x, y) $





*Definición 1.5*. Alternativamente a como se define el concepto de
_isometría_, podríamos definirla como

$ g : med (M, delta) arrow.r.long (M', delta') $

Y, de hecho, en @costa se usa esta notación un poco después. En el fondo, la
que usa el libro se refiere de forma implícita a esta. En su definición se
entiende de forma tácita cuáles son las métricas en cada uno de los
conjuntos.





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
M$ sea único, condición que también se requiere aquí.





En la *Definición 1.8*, también se puede usar una notación más explícita, al
igual que sucede con lo que dijimos antes sobre la definición de
_isometría_. En este caso, sería $"Isom"(M, delta)$.





Al final de la página. Las propiedades 1 y 2 son casos particulares del
Teorema 1.7. Por su parte, la demostración del punto 3 es trivial.





*Nota 1.9*. También se la puede llamar #emph[grupo de isometrías] $(M,
delta)$.





Demostración de que las isometrías con la composición cumplen las
propiedades de grupo TKTK.





*Ejemplo 1.11*. Algo interesante es demostrar también por qué la aplicación

$ delta_G = "Distancia máxima entre" p med "y" med q $

no es una métrica. Una razón es que, puede darse $delta(x, x) > 0$ para
algún $x in G$.





*Definición. 1.12*. Además de llamarlo "segmento de extremos $a$ y $b$"
también se le suele llamar "segmento $a$ $b$".





En la definición de puntos alineados se podría explicar también que esto
está relacionado con el concepto de _recta_, que se define en el capítulo
siguiente.







