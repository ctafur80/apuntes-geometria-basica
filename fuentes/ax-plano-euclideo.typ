
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

// TODO Definir _lugar geométrico_. Estos son conjuntos.

En la definición de _recta_ (pág. 23), el punto (i) se incluye para que un
punto no cumpla las condiciones para ser una recta.

Algo similar sucede con el punto (i) del Axioma P2 (pág. 24). De no
incluirlo, una recta podría ser todo el plano euclideo, $bold(P)$.

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
  (iii) de la Definición de Recta tenemos que. como $A$, $B$ y $X$ están
  alineados, se da que $X in s$. Entonces, tenemos que $r subset.eq s$.

  De forma análoga, llegamos a demosrtar que $s subset.eq r$. Uniendo ambas,
  tenemos que $r = s$.
]

En lo que respecta a la *Definición 2.6* (de Rectas Secantes y Paralelas),
advierta que se admite que también se califica de paralelas a dos rectas
coincidentes.

// TODO Quizás, incluir un corolario sobre la unicidad de la recta que
// contiene a un segmento.

En cuanto al *Teorema 2.7*, creo que no llega a explicar bien cómo es este.
Algo que es fundamental es resaltar que esa disyunción (esa _o_) es
exclusiva, y no inclusiva.

Para la demostración, quizás se debería hacer un mayor uso de la teoría de
conjuntos.

Además, creo que falta una parte por demostrar. Demuestra que no se puede
dar que no se corten ni sean paralelas, simultáneamente. También creo que se
debería demostrar que no se puede dar que sean secantes y paralelas
simultáneamente.

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

  Primero, $q and m$. Por un lado, $q$ implica que existe un $X in r$ tal
  que $X in.not s$, pero esto se contradice con $m$ ya que esta última dice,
  entre otras cosas, que, para todo $X in r$, $X in s$.

  Por la parte de $q and p$, tenemos que

  $ X = r inter s = emptyset $

  pero esto contradice que $X eq.not emptyset$.

  Por tanto, al ser ambas falsas, aun cuando estén unidas por una conectiva
  disyunción, la proposición general será siempre falsa.

  Caso 2. Nuestra hipótesis es que $r$ y $s$ no se cortan ni son paralelas.

  TKTK.
]

Si no nos fijamos tanto en los calificativos de las rectas, este teorema
viene a decir que en el plano euclideo solo hay tres posiciones relativas de
dos rectas:

+ Ningún punto en común. Es decir, $r inter s = emptyset$.
+ Un solo punto en común. Es decir, existe un único $X in bb(P)$ siendo $X
  eq.not emptyset$ tal que $r inter s = X$.
+ Son coincidentes. Es decir, $r = s$.

No pueden tener únicamente dos puntos en común, ni tres, etc.

También, se podría hablar sobre las posiciones relativas de una recta y un
segmento. Aquí, sí que hay más casos posibles de sus posiciones relativas:
se cortan, lo contiene, son paralelos, ni se cortan ni son paralelos, etc.

Consideraremos que dos segmentos son paralelos si las respectivas rectas
soporte de estos son paralelas. Y, una recta es paralela a un segmento si
dicha recta es paralela a la recta soporte de dicho segmento.

Concretamente, se pueden tener dos segmentos que no se corten y que además
no sean paralelos, cosa que, según el th-rectas-sec-paralelas, no puede
suceder con las rectas.

Otra cosa que se podría deducir es el teorema siguiente.

#theorem[][
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
el número teniendo en cuenta que podemos cambiar el sentido de la "regla".
Advierta también que estas "reglas" son algo especiales pues, al contrario
de lo que sucede normalmente, en estas se tienen marcados también números
negativos.

Por cierto, si se fija, $(r, d)$ es un espacio métrico inducido de $bold(P),
d$ ya que $r subset.eq bold(P)$. (Vea @costa[p. 12] Teorema 1.4.)

En la demostración del punto (i) de la *Observación 2.8*, aunque no lo
mencione, hace uso en varios puntos de que $gamma$ es una biyección y, por
tanto, también una inyección.

También, deshecha una de las conclusiones a las que nos lleva

$ |t - a| = |t - b| $

pues nos condice a $a = b$, y, como $gamma$ es biyectiva, esto conduce a su
vez a que $A = B$, caso que hemos excluido por hipótesis.

También, al tener un único valor para $t$, se tendrá un único $X$, como dice
el "teorema".

De hecho, esta demostración nos conduce también a una conclusión que no se
presenta en el enunciado del "teorema": que

$ 1/2 d(A, B) = d(M, A) = d(M, B) $

Presento a continuación la demostración del punto (ii).

#proof[
  Deseamos demostrar que existe un $A' in r$ tal que

  $ d(B, A) = d(B, A') $

  Por comodidad, usaremos la notación

  $ gamma (A') = x, quad gamma (A) = a, quad gamma (B) = b $

  ya que vamos a usar la isometría $gamma$ del ax-p3-euclides. Al ser una
  isometría, se cumple que

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

  $ d(B, A') & = |b - x| = |b - (2b - a)| = |a - b| = d(A, B) = d(B, A) $

  con lo que $B = "medio"[A, A']$ tal y como deseábamos demostrar.
]

Una diferencia que debe tener en cuenta entre los conceptos de _segmento_ y
_recta_ es que, aunque ambos se pueden definir en base a dos puntos no
coincidentes, la relación solo es inyectiva en el caso de los segmentos. Es
decir, hay varios pares de puntos que definen a una misma recta; cosa que no
sucede para los segmentos.

Entonces, el concepto de _punto medio_ de dos puntos (pág. 25, *Observación
2.8* punto (i)) es lo mismo que el punto medio de un segmento; el segmento
con extremos esos dos puntos.

Esto me hace creer que, alternativamente a la definición que se da de _punto
medio_ de dos puntos, que se basa en la (única) recta que pasa por ambos
puntos, sería mejor definirlo en base al segmento de extremos dichos puntos.
Esto nos permitiría que el caso en el que los extremos coinciden no tuviese
que definirse mediante una excepción (pág. 26).

En lo que respecta a la definición de _semirrecta_ (pág. 26), advierta que
el punto que se usa para hacer esa separación no se encuentra en ninguna de
las dos semirrectas.

Advierta que la demostración de la *Observación 2.10* se hace con signos de
equivalencia, '$arrow.l.r.long.double$', por lo que sirve para las dos
demostraciones que se desean hacer, es decir, en los dos sentidos. Esto lo
hace en muchas de las demostraciones del texto.



















