#set heading(numbering: "1.")
#set page(
  margin: 1.5cm
)
#set text(
  size: 10pt,
)

#layout(size => {
  let notes = 50%;
  let info = 15%;
  let latlon = 20%;
  let gap = 5%;

  let pat = pattern(size: (25pt, 20pt))[
    #polygon(
      fill: gray,
      stroke: none,
      (0%, 0%),
      (50%, 50%),
      (100%, 0%),
      (100%,  50%),
      (50%, 100%),
      (0%, 50%),
    )
  ]

  let n = 0
  while n < 3 {
    n = n + 1
    grid(
      stroke: 2pt,
      row-gutter: 5pt,
      table(
        rows: (30pt),
        align: horizon,
        table.cell([*Waypoint*]),
      ),
      table(
        columns: (latlon, info, info, notes),
        rows: (auto, 30pt, auto, 30pt),
        align: horizon,
        row-gutter: (0pt, 5pt, 0pt, 0pt),
        [*LAT/LON*],  [*LOG $<$*], [*Distance $<<$*], [*Fix and Notes*],
        [], [], [], table.cell(rowspan: 3, []),
        table.cell(stroke: none, []), [*Time*], [*Time - HW*],
        table.cell(stroke: none, []), [], [],
      ),
      table(
        columns: (gap, info, info, info, notes),
        rows: (auto, 30pt, auto, 30pt),
        align: horizon,
        row-gutter: (0pt, 5pt, 0pt, 0pt),
        table.cell(
          rowspan: 4,
          align: horizon,
          fill: pat,
          []
        ),
        [*CTS $<$*], [*#math.Delta LOG $<$*], [*COG $<<$*], [*Dangers and Notes*],
        [], [], [], table.cell(rowspan: 3, []),
        [*Min depth #sym.arrow.b*], [*#math.Delta Time*], [*Tides $<<<$*],
      )
    )
  }
})