#set heading(numbering: "1.")
#set text(
  size: 10pt,
)

#outline()

= Morse code

- The length of a dot is one unit.
- A dash is three units.
- The space between parts of the same latter is one unit.
- The space between letters is three units.
- The space between words is seven units.


#figure(
    table(
        columns: (auto ,auto, auto),
        align: left,
        stroke: none,
        table(
            columns: (auto, auto),
            [*Symbol*], [*Sequence*],
            [A], [·−   ],
            [B], [−··· ],
            [C], [−·−· ],
            [D], [−··  ],
            [E], [·    ],
            [F], [··−· ],
            [G], [−−·  ],
            [H], [···· ],
            [I], [··   ],
            [J], [·−−− ],
            [K], [−·−  ],
            [L], [·−·· ],
            [M], [−−   ],
        ),
        table(
            columns: (auto, auto),
            [*Symbol*], [*Sequence*],
            [N], [−·   ], 
            [O], [−−−  ], 
            [P], [·−−· ], 
            [Q], [−−·− ], 
            [R], [·−·  ], 
            [S], [···  ], 
            [T], [−    ], 
            [U], [··−  ], 
            [V], [···− ], 
            [W], [·−−  ], 
            [X], [−··− ], 
            [Y], [−·−− ], 
            [Z], [−−·· ], 
        ),
        table(
            columns: (auto, auto),
            [*Symbol*], [*Sequence*],
            [1], [·−−−−],
            [2], [··−−−],
            [3], [···−−],
            [4], [····−],
            [5], [·····],
            [6], [−····],
            [7], [−−···],
            [8], [−−−··],
            [9], [−−−−·],
            [0], [−−−−−],
        ),
    ),
    caption: [International Morse Code sequences]
)

= Flags

== ICS International Maritime Flags

#figure(
    table(
        columns: (auto, auto, auto),
        stroke: none,
        table(
            columns: (35pt, auto, auto),
            rows: 35pt,
            align: left+horizon,
            image("res/flags/ICS_Alfa.svg"),[*A* - Alpha],[Diver down, keep clear],
            image("res/flags/ICS_Bravo.svg"),[*B* - Bravo],[Carrying dangerous goods],
            image("res/flags/ICS_Charlie.svg"),[*C* - Charlie],[Affirmative],
            image("res/flags/ICS_Delta.svg"),[*D* - Delta],[Manouvering with difficulty, keep clear],
            image("res/flags/ICS_Echo.svg"),[*E* - Echo],[Altering course to starboard],
            image("res/flags/ICS_Foxtrot.svg"),[*F* - Foxtrot],[Am disabled, communicate with me],
            image("res/flags/ICS_Golf.svg"),[*G* - Golf],[Require a pilot],
            image("res/flags/ICS_Hotel.svg"),[*H* - Hotel],[Pilot on board],
            image("res/flags/ICS_India.svg"),[*I* - India],[Altering course to port],
            image("res/flags/ICS_Juliett.svg"),[*J* - Juliet],[On fire and have or am leaking dangerous cargo],
            image("res/flags/ICS_Kilo.svg"),[*K* - Kilo],[Wish to communicate],
            image("res/flags/ICS_Lima.svg"),[*L* - Lima],[Stop your vessel instantly],
            image("res/flags/ICS_Mike.svg"),[*M* - Mike],[I am stopped and not making way],
            image("res/flags/ICS_November.svg"),[*N* - November],[Negative],
            image("res/flags/ICS_Oscar.svg"),[*O* - Oscar],[Man overboard],
            image("res/flags/ICS_Papa.svg"),[*P* - Papa],[About to sail, all report on board],
            image("res/flags/ICS_Quebec.svg"),[*Q* - Quebec],[Vessel is healthy, request pratique],
            image("res/flags/ICS_Romeo.svg"),[*R* - Romeo],[],
        ),
        table(
            columns: (55pt, auto, auto),
            rows: 35pt,
            align: left+horizon,
            image("res/flags/ICS_Sierra.svg"),[*S* - Sierra],[Operating astern propulsion],
            image("res/flags/ICS_Tango.svg"),[*T* - Tango],[Keep clear of me],
            image("res/flags/ICS_Uniform.svg"),[*U* - Uniform],[You are running into danger],
            image("res/flags/ICS_Victor.svg"),[*V* - Victor],[I require assistance],
            image("res/flags/ICS_Whiskey.svg"),[*W* - Whiskey],[I require medical assistance],
            image("res/flags/ICS_X-ray.svg"),[*X* - X-ray],[Stop and watch for my signals],
            image("res/flags/ICS_Yankee.svg"),[*Y* - Yankee],[I am dragging my anchor],
            image("res/flags/ICS_Zulu.svg"),[*Z* - Zulu],[I require a tug],
            image("res/flags/ICS_Pennant_Zero.svg"),[*0* - Zee-ro],[],
            image("res/flags/ICS_Pennant_One.svg"),[*1* - Wun],[],
            image("res/flags/ICS_Pennant_Two.svg"),[*2* - Too],[],
            image("res/flags/ICS_Pennant_Three.svg"),[*3* - Tree],[],
            image("res/flags/ICS_Pennant_Four.svg"),[*4* - Fow-er],[],
            image("res/flags/ICS_Pennant_Five.svg"),[*5* - Fife],[],
            image("res/flags/ICS_Pennant_Six.svg"),[*6* - Six],[],
            image("res/flags/ICS_Pennant_Seven.svg"),[*7* - Sev-en],[],
            image("res/flags/ICS_Pennant_Eight.svg"),[*8* - Ait],[],
            image("res/flags/ICS_Pennant_Niner.svg"),[*9* - Nin-er],[],
        ),
    ),
    caption: [ICS International maritime signal flags]
)

== Flag setup and etiquette

=== Ensign

TODO

=== Courtesy flag

#figure(
    image(
        "res/flags/setup.svg", 
        width: 30%,
        fit: "contain",
    ),
    caption: [
        Setup of flags excluding ensign
    ]
)

- *1* - Courtesy flag at highest position on starboard spreader
- *2* - Signal flags below courtesy flag (Q Flag)
- *3* - Custom flags, burgees and pennants on port spreader (below courtesy flag)
