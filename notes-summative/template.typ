// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", abstract: [], authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "Linux Libertine", lang: "en")
  set heading(numbering: "1.")
  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(top: 0.5em, x: 2em, grid(
    columns: (1fr,) * calc.min(3, authors.len()),
    gutter: 1em,
    ..authors.map(author => align(center)[
      *#author.name* \
      #author.email
    ]),
  ))

  // Abstract.
  // pad(
  //   x: 2em,
  //   top: 1em,
  //   bottom: 1.1em,
  //   align(
  //     center,
  //   )[
  //     #heading(outlined: false, numbering: none, text(0.85em, smallcaps[Abstract]))
  //     #abstract
  //   ],
  // )

  // Main body.
  set par(justify: true)

  body
}