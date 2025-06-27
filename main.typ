

#import "./typst-maths-book-template/main-template.typ": *





// Filling the `templ-book-typ` template data.
#show: templ.with(
  sheet: "tablet",
  lang: "es",
  title: [Apuntes de Geometría Básica],
  authors: (
    (
      name: "Carlos E. Tafur Egido",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
  ),
  abstract: lorem(80),
)





// TODO When I put it in templ-book file it doesn't make any effect.
// Updating the counters by sections
#show heading.where(level: 1): it => {
  // pagebreak()
  counter("proposition").update(0)
  counter("theorem").update(0)
  counter("example").update(0)
  counter("lemma").update(0)
  counter("corollary").update(0)
  counter("exercise").update(0)
  counter("axiom").update(0)
  counter("deffinition").update(0)
  it
}







// ----------------------------------------------------------------------------

#heading(level: 1, numbering: none)[Introducción]
#include("fuentes/introduccion.typ")



= Capítulo 1. Espacios métricos
<ch-espacios-metricos>
#include("fuentes/espacios-metricos.typ")






// #set par(justify: false)
#bibliography("./bibliografia.yml")






