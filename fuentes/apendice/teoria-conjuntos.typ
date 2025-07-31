
#import "../../typst-maths-book-template/main-template.typ": *




/* Resultado general de la teoría de conjuntos. Dada una expresión
* conjuntista $A = B$ y una aplicación $f$, se tiene que $f(A) = f(B)$. Si
* se tratase, en general, de una relación, esto no tendría por qué ser
* cierto.
*/






#theorem[][
  Dados dos conjuntos $U$ y $V$ y una relación binaria entre estos, $cal(R)
  subset.eq U times V$. Para todo par de subconjuntos $A, B in U$ tales que
  $A subset.eq B$, se cumple que $cal(R) (A) subset.eq cal(R) (B)$.
]

#proof[
  Podemos demostrarlo mediante su condicional contrarrecíproco. Partimos del
  supuesto de que $cal(R) (A) subset.eq.not cal(R) (B)$ y, como veremos,
  llegaremos a que $A subset.eq.not B$.

  Partiendo de la hipótesis, se tiene que, si exceptuamos el caso $cal(R)
  (A) = emptyset$, existirá un $v in V$ para el que se tiene que existe un
  $x in A$ tal que $cal(R) (x) = v$, o, lo que es lo mismo, $(x, v) in
  cal(R)$. Además, por la hipótesis, para uno de estos $v in V$ se tendrá
  que $v in cal(R) (A)$ y $v in.not cal(R) (B)$.




  // TODO Volver a lo del caso vacuamente cierto.

  No llego a entenderlo aún.

  // TODO Está en <https://proofwiki.org/wiki/Image_of_Subset_under_Relation_is_Subset_of_Image>.
]

En concreto, se cumple también para las aplicaciones, ya que estas son casos
particulares de relaciones.

Ahora, veremos un teorema que nos sirve como aproximación al que queremos
llegar (debido a esto, quizás se le podría clasificar como lema).

#theorem[][
  Dada una aplicación $f: U arrow.r.long V$ y dos subconjuntos $A, B in U$,
  se tiene que

  $ f(A inter B) subset.eq f(A) inter f(B) $
]

#proof[
  Como sabemos de la teoría de conjuntos, se cumplen

  $ A inter B subset.eq A \
    A inter B subset.eq B $

  Por el teorema anterior, de estas expresiones se deduce que

  $ f(A inter B) subset.eq f(A) \
    f(A inter B) subset.eq f(B) $

  Al darse ambas expresiones simultáneamente, y como somos conocedores de la
  equivalencia entre la conjunción lógica y la intersección conjuntista, se
  tiene que

  $ f(A inter B) subset.eq f(A) inter f(B) $
]

Ahora, basándonos en esta, podemos llegar a un resultado que se usa en
varias demostraciones de la geometría por el método sintético.

#theorem[][
  Dada una aplicación inyectiva $f: U arrow.r.long V$ y dos subconjuntos $A,
  B in U$, se tiene que

  $ f(A inter B) = f(A) inter f(B) $
]

Advierte que esto solo sucede para aplicaciones inyectivas.

#proof[
  // TODO <https://proofwiki.org/wiki/Image_of_Intersection_under_Injection>.
]











