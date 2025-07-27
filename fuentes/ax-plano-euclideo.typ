
#import "../typst-maths-book-template/main-template.typ": *




Este capítulo se podría considerar el inicio del segundo bloque de la
asignatura: la geometría euclidea plana, es decir, en dos dimensiones (2D).

Al contrario que en el capítulo anterior (sobre espacios métricos), nos
encontramos en una geometría en particular.

Como se explica en la introducción de @costa, se abordará esta geometría
desde un punto de vista _sintético_, en contraste con el enfoque
_analítico_, que es al que quizás esté más acostumbrado. A este resepecto,
en @venema, en lugar de "enfoque" o "punto de vista" dicen "modelo".

Como quizás ya sepa, la geometría analítica es la que hace uso de
coordenadas y, por tanto, se basa más en nuestro conocimiento del álgebra de
los números reales. La sintética, por su parte, prescinde del álgebra y se
basa en manipular expresiones conjuntistas en base a los axiomas. Es decir,
en la sintética se suele estar más en contacto con los axiomas#footnote[que
en la época de Euclides recibían la denominación de _postulados_], mientras
que, en la analítica, nos solemos encontrar a un nivel de abstracción
superior.

En cualquier caso, el enfoque sintético presentado aquí no llega a ser
"puro", pues hacemos uso de números reales y sus operaciones, tal y como se
muestra en el Axioma 3 de Euclides (de la Regla Graduada). TKTK.

Lo primero que debe saber es que los elementos de este espacio métrico (el
plano euclideo) reciben el nombre de _puntos_ (_points_), y se usa la
notación de los elementos para estos, es decir, cosas como $X in bold(P)$.
Otros conjuntos más complejos de elementos reciben, en general, la
designación de _figuras_ (_figures_). Evidentemente, verá cosas como $r
subset.eq bb(P)$ para las figuras.

De forma más general, a cualquier agrupación en el plano euclidiano, ya sea
una figura o un punto, o nada, a veces recibe la designación de _lugar
geométrico_ (_locus_).

En la definición de _recta_ (pág. 23), el punto (i) se incluye para que un
conjunto formado por un único punto no cumpla las condiciones para ser una
recta.

Algo similar sucede con el punto (i) del Axioma P2 (pág. 24). De no
incluirlo, una recta podría ser todo el plano euclideo, $bold(P)$.

Se podría enunciar de forma menos simbólica ---y, por tanto, más prosaica---
la *Observación 2.3*.

Si los extremos de un segmento pertenecen a una recta, entonces todo el
segmento es parte de esta.

Me gustaría poner aquí la demostración de la *Observación 2.4* (pág. 24)
sobre que en el punto (ii) del Axioma $bold(P)$2 no se requiere decir que
sea única esa recta, sino que es algo que se puede deducir, y, por tanto, se
puede poner en un teorema aparte.

#proof[
  Suponemos dos puntos $A, B in r$ no coindicentes en una recta $r$.
  También, que esos dos puntos están en otra recta $s$.

  Dado un punto arbitrario $X in bold(P)$ tal que $X in r$, por el punto
  (ii) de la Definición de Recta se tiene que $A$, $B$ y $X$ están
  alineados.

  Considerando ahora que, tal y como dijimos, $A, B in s$, por el punto
  (iii) de la Definición de Recta tenemos que, como $A$, $B$ y $X$ están
  alineados, se da que $X in s$. Entonces, tenemos que $r subset.eq s$.

  De forma análoga, llegamos a demosrtar que $s subset.eq r$. Uniendo ambas,
  tenemos que $r = s$.
]

Advierta que del punto (ii) del Axioma $bold(P)$2 se deduce inmediatamente
que la recta que contiene a un segmento es única. Esta afirmación quizás se
podría poner en forma de corolario.

En lo que respecta a la *Definición 2.6* (de Rectas Secantes y Paralelas),
advierta que se admite que también se califica de _paralelas_ a dos rectas
coincidentes.

En cuanto al *Teorema 2.7*, creo que adolece de no hacer incapié en que esa
_o_ (disyunción) es exclusiva en este caso; y no inclusiva, como suele ser
habitual en matemáticas si no se especifica nada a este respecto.

Además, la demostración que da no llega a convencerme. Entre otras cosas,
faltaría por demostrar que no se puede dar el caso que no sean secantes ni
paralelas simultáneamente.

En cualquier caso, tengo claro, por el uso que hace posteriormente de este
teorema en algunas demostraciones, que se trata de una _o_ exclusiva. Yo lo
enunciaría del modo siguiente.

#theorem[de las Posiciones Relativas de Dos Rectas][
  Dos rectas únicamente pueden o bien cortarse o bien ser paralelas, pero no
  pueden ser simultáneamente ambas cosas ni no darse una de estas dos
  opciones.
]

/*
#theorem[de las Posiciones Relativas de Dos Rectas][
  Dos rectas tienen únicamente tres posiciones relativas entre sí: no se
  tocan en ningún punto (paralelas no coincidentes), se tocan en un único
  punto (secantes) o son la misma (paralelas y coincidentes). No pueden
  tener en común dos puntos, ni tres, etc.
]
*/

Para la demostración del teorema a mi manera, prefiero hacer un uso más
explícito de la lógica y la teoría de conjuntos.

#proof[
  Tenemos que demostrar que no se puede dar ninguno de los dos casos
  siguientes, para dos rectas cualesquiera $r$ y $s$:

  + Que sean secantes y paralelas.
  + Que no sean secantes ni paralelas.

  Vamos a hacer las dos demostraciones por el método de contradicción
  (también llamado _por reducción al absurdo_).

  Vamos a hacer uso de la lógica proposicional simbólica, para que queden
  claros los razonamientos. Tenemos las proposiciones siguientes:

  #[ #set align(center)
    #table(columns: 2, stroke: none, align: (right+bottom, left+bottom),
    inset: 3pt,
      [$p$:], [$r$ y $s$ no tienen ningún punto en común. Es decir, $r inter
        s = emptyset$],
      [$q$:], [$r$ y $s$ se cortan. Es decir, existe un único $X in bb(P)$
        tal que ${X} = r inter s$ siendo ${X} eq.not emptyset$.],
      [$m$:], [$r$ y $s$ son la misma (son coincidentes). Es decir, $r =
        s$.],
      [$n$:], [$r$ y $s$ son paralelas. Por definición del paralelismo de
        rectas, se tiene que $n arrow.long.double.l.r p or m$.]
    ) ]

  Caso 1. Nuestra hipótesis es que $r$ y $s$ se cortan y son paralelas. La
  hipótesis será, por tanto, para este caso, la siguiente:

  $ q and n arrow.long.double.l.r q and (p or m) arrow.long.double.l.r (q
  and m) or (q and p) $

  haciendo uso de la propiedad distributiva para los operadores conjunción y
  disyunción.

  Veamos si puede ser cierto esto. Por la definición de disyunción, con que
  se dé una de las dos proposiciones que une esta, bastaría para que fuese
  cierta la proposición global.

  Primero, $q and m$. Por un lado, $q$ impone ---entre otras cosas--- que
  existe un $X in r$ tal que $X in.not s$, pero esto se contradice con $m$
  ya que esta última dice ---entre otras cosas--- que, para todo $X in r$,
  $X in s$.

  Por la parte de $q and p$ es evidente que se contradicen y, por tanto, da
  falso como resultado.

  Por tanto, al ser ambas falsas, aun cuando estén unidas por una
  disyunción, la proposición general será siempre falsa.

  Caso 2. Nuestra hipótesis es que $r$ y $s$ no se cortan ni son paralelas.

  TKTK.
]

O sea, este teorema viene a decir que dos rectas tienen únicamente tres
posiciones relativas entre sí: no se tocan en ningún punto (paralelas no
coincidentes), se tocan en un único punto (secantes) o son la misma
(paralelas y coincidentes). No pueden tener en común dos puntos, ni tres,
etc.

También, se podría hablar sobre las posiciones relativas de una recta y un
segmento. Aquí, sí que hay más casos posibles de sus posiciones relativas:
se cortan, lo contiene, son paralelos, ni se cortan ni son paralelos, etc.

Consideraremos que dos segmentos son paralelos si las respectivas rectas
soporte de estos son paralelas. Y una recta es paralela a un segmento si
dicha recta es paralela a la recta soporte de dicho segmento.

Una diferencia con respecto a las posiciones relativas de dos rectas es que
se pueden tener dos segmentos que no se corten y que además no sean
paralelos, cosa que, según el teorema anterior sobre las posiciones
relativas de las rectas, no puede suceder con las rectas.

Una vez que se han presentado los conceptos de rectas secantes y paralelas,
se puede deducir una consecuencia directa de la *Observación 2.3*.

#corollary[][
  En $(bold(P), d)$, dado un segmento con extremos los puntos $A$ y $B$,
  $[A, B]$, siendo estos no coincidentes, y una recta $r$. Si se cortan $r$
  y $[A, B]$, entonces también se cortarán $r$ y la recta soporte de $[A,
  B]$.
]

#proof[
  Si se cortan $r$ y $[A, B]$, tienen un único punto en común, es decir,

  $ [A, B] inter r = {X} = X $

  Al ser $A$ y $B$ no coincidentes, habrá algún punto en $[A, B]$ que no
  esté en $r$. Entonces, por el Teorema 2.7, no queda otra que r y $r_(A B)$
  sean secantes, siendo $r_(A B)$ la recta soporte de $[A, B]$.

  /*
  Teniendo esto en cuenta y el th-rectas-sec-paralelas, se tiene que $r$ y
  $r_(A B)$ no pueden ser paralelas no coincidentes. Serán coincidentes o
  secantes. Pero en el caso general el segmento $[A, B]$ no estará
  constituido por un único punto, con lo que existirá algún $Y in [A, B]$
  tal que $Y in.not r$. Por tanto, $r$ y $r_(A B)$ no pueden ser
  coincidentes, con lo que serán secantes.
  */

  /*
  Por el teor-incl-segmentos-rectas tenemos que $T in r_(A B)$, con lo que,
  por el th-rectas-sec-paralelas, o bien $r$ y $r_(A B)$ se cortan o bien
  son coincidentes; no pueden ser paralelas no coincidentes. Pero, para que
  fuesen coincidentes, tendrían que contener a todos los mismos puntos, pero
  sabemos que hay puntos de $[A, B]$ que no están en $r$. Por tanto, $r$ y
  $r_(A B)$ son secantes.
  */
]

Advierta que lo contrario no tiene por qué ser cierto. Es decir, pueden
cortarse dos rectas pero no cortarse una de estas con un segmento de la
otra. Esto es fácil de imaginar.

En lo que respecta al Axioma P3 (de la Regla Graduada), este es el que hace
que nuestro sistema de axiomas sea mixto (o que es el que "contamina" a la
geometría pura), al incluir los números reales y sus operaciones.

En lugar de como se presenta en @costa[p. 25], se puede hacer uso del
concepto de _isometría_, tal y como hago a continuación.

#euclid_ax[Axioma P3 de Euclides (de la Regla Graduada)][
  En $(bold(P), d)$, para toda recta $r subset.eq bold(P)$ existe una
  isometría $gamma: (r, d) arrow.r.long (RR, d')$ siendo $d'$ la distancia
  definida del modo siguiente, para cualesquiera $x, y in RR$,

  $ d'(x, y) = |x - y| $
] <ax-p3-euclides>

Ha de tener en cuenta que en realidad existen muchas de esas isometrías
$gamma$; es decir, muchas "reglas graduadas". Están todas sobre la recta
$r$, pero es como si, para cada posición de medida $0$ de la "regla
graduada" (_ruler_), se tuviese una isometría distinta. E incluso se doblará
el número de isometrías posibles al tener en cuenta que podemos cambiar el
sentido de la "regla". Advierta también que estas "reglas" son algo
especiales, pues tienen también marcados números negativos.

Por cierto, si se fija, $(r, d)$ es un espacio métrico inducido (*Teorema
1.4*) de $bold(P), d$ ya que $r subset.eq bold(P)$.

En cuanto al punto (i) de la *Observación 2.8*, se incluyen tanto un teorma
como una definición. Sería la definición del punto medio de un segmento.
Para esta se requiere de demostrar que dicho punto es único para cada
segmento.

En esta demostración, aunque no lo mencione, hace uso en varios puntos de
que $gamma$ es una biyección y, por tanto, también una inyección. Por
ejemplo, esto justifica que de $A eq.not B$ se tenga que $a eq.not b$.

Me gustaría explicar también cómo se puede llegar al último paso de la
primera expresión matemática que presenta.

$ |t - a| = |t - b| \
  sqrt((t - a)^2) = sqrt((t - b)^2) \
  (t - a)^2 = (t - b)^2 \
  t^2 + a^2 - 2 t a =  t^2 + b^2 - 2 t b \
  a^2 - 2 t a =  b^2 - 2 t b \
  a^2 - b^2 = 2 t a - 2 t b \
  (a + b)(a - b) = 2 t (a - b) \
  a + b = 2 t \
  t = (a + b) / 2 $

Al ser $gamma$ una biyección, el valor $gamma^(-1) ((a+b)/2)$ es único, y lo
designamos por $M$.

Alternativamente, la manipulación algebraica anterior se podría haber hecho
viendo los dos casos a los que nos conducen los valores absolutos y
descartando uno que veríamos que no tiene sentido en este caso.

La demostración del punto (ii) es muy parecida a la del punto (i). Por
ejemplo, usando las designaciones

$ gamma (A') = x, quad gamma (A) = a, quad gamma (B) = b $

deseamos demostrar que existe un único $A' in r$ para el que se cumple

$ d(B, A) = d(B, A') $

Al ser $gamma$ una isometría, se cumple que

$ d(B, A)   &= d'(gamma (B), gamma (A)) = |b - a| \
  d(B, A')  &= d'(gamma (B), gamma (A')) = |b - x| $

con lo que se tiene que

$ |b - a| &= |b - x| $

Mediante manipulaciones algebraicas similares a las del punto (i), se llega
a

$ x = 2b - a $

con lo que $A' = gamma^(-1) (2b - a)$ será único.

A partir de esto, es fácil demostrar que $B = "medio"[A, A']$.

/*
#proof[
  Deseamos demostrar que existe un único $A' in r$ tal que

  $ d(B, A) = d(B, A') $

  Por comodidad, usaremos la notación

  $ gamma (A') = x, quad gamma (A) = a, quad gamma (B) = b $

  ya que vamos a usar la isometría $gamma$ del Axioma $bold(P)$3 de
  Euclides. Al ser una isometría, se cumple que

  $ d(B, A)   &= d'(gamma (B), gamma (A)) = |b - a| \
    d(B, A')  &= d'(gamma (B), gamma (A')) = |b - x| $

  Vamos a suponer que se da la conclusión a la que deseamos llegar y, en ese
  caso, a ver qué valor o valores nos daría la variable $x$.

  $ d(B, A) &= d(B, A') \
    |b - a| &= |b - x| $

  Por un lado, se tiene que

  $ b - a &= b - x \
    a     &= x $

  pero esto, por la biyección de $gamma^(-1)$, nos conduce a que $A = A'$,
  cosa que contradice la hipótesis de partida. Por lo tanto desechamos este
  resultado. Por otro lado, se tiene que

  $ b - a &= x - b \
    x     &= 2b - a $

  Al ser $gamma^(-1)$ una biyección, habrá un único punto $A'$ de $bb(P)$
  tal que $A' = gamma^(-1) (x) = gamma^(-1) (2b - a)$.

  Entonces,

  $ d(B, A') &= |b - x| = |b - (2b - a)| = |a - b| = d(A, B) = d(B, A) $

  con lo que $B = "medio"[A, A']$ tal y como deseábamos demostrar.
]
*/

En esta definición, se debe hacer cierta puntualización para analizar el
caso extremo en el que los extremos sean el mismo punto, es decir, para
definir $"medio"[A, A]$ para un $A in bold(P)$.

No basta con definirlo como el punto equidistante de los extremos, en la
recta $r$, pues, en este caso extremo, esto es algo que se cumpla para todos
los puntos de $r$. Hay que tener también en cuenta que ese pundo debe
encontrarse en el segmento; en este caso, en $[A, A]$. Esto nos conduce a
una única solución:

$ "medio"[A, A] = A $

ya que el único punto en $[A, A]$ es el propio $A$. Al hacerlo así, no tiene
por qué establecerse esta igualdad por convenio, como se hace en el texto.

Por cierto, una diferencia que debe tener en cuenta entre los conceptos de
_segmento_ y _recta_ es que, aunque ambos se pueden definir en base a dos
puntos no coincidentes, la relación solo es inyectiva en el caso de los
segmentos. Es decir, hay varios pares de puntos que definen a una misma
recta; cosa que no sucede para los segmentos.

En lo que respecta a la definición de _semirrecta_ (pág. 26), advierta que
el punto que se usa para hacer esa separación no se encuentra en ninguna de
las dos semirrectas.

/*
Advierta que la demostración de la *Observación 2.10* se hace con signos de
equivalencia, '$arrow.l.r.long.double$', por lo que sirve para las dos
demostraciones que se desean hacer, es decir, en los dos sentidos. Esto lo
hace en muchas de las demostraciones del texto.
*/


















