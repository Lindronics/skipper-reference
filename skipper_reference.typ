#import "plugins/typst-boxes.typ": *

#set heading(numbering: "1.")
#set text(
  size: 10pt,
)

#outline(
    indent: 1em
)

= Terms



= Radio

== Protocol

=== Hail

Hailing is done on channel 16.

#colorbox(
  title: [Hail],
  color: "black",
)[
    / Indefatigable: _Renown_, _Renown_, _Renown_, this is _Indefatigable_, _Indefatigable_, _Indefatigable_. Over.
    / Renown: _Indefatigable_, this is _Renown_. Over.
    / Indefatigable: _Renown_, this is _Indefatigable_. Channel 72 please. Channel seven two. Over.
    / Renown: _Indefatigable_, this is _Renown_. Understood. Channel 72. Over.
]

=== Distress (Mayday)

Should only be sent in case of grave an imminent danger to life or vessel. Use channel *16* on high power.


#colorbox(
  title: [Distress call],
  color: "black",
)[
    Mayday Mayday Mayday \
    This is _Indefatigable_ _Indefatigable_ _Indefatigable_ \
    Call sign ABCD1 MMSI number 123456789 \

    Mayday _Indefatigable_ \
    Call sign ABCD1 MMSI number 123456789 \
    My position is 12 degrees 34.56 minutes north, 012 degrees 34.56 minutes east. \
    We are sinking. \
    We require immediate assistance. \
    There are 5 people on board. \
    We are abandoning to the live raft. \
    Over.
]

=== Urgency (Panpan)

Should be sent if the calling station has a very urgent message concerning the safety of a vessel or person. Must be addressed to someone (e.g. coast guard, or all stations).

#colorbox(
  title: [Urgency call],
  color: "black",
)[
    Panpan Panpan Panpan \
    All stations all stations all stations \
    This is _Indefatigable_ _Indefatigable_ _Indefatigable_ \
    Call sign ABCD1 MMSI number 123456789 \

    My position is 12 degrees 34.56 minutes north, 012 degrees 34.56 minutes east. \
    We have are adrift. \
    We require a tow. \
    There are 5 people on board. \
    Over.
]

=== Safety (Securitay)

#colorbox(
  title: [Safety call],
  color: "black",
)[
    Securitay Securitay Securitay \
    All stations all stations all stations \
    This is _Indefatigable_ _Indefatigable_ _Indefatigable_ \
    Call sign ABCD1 MMSI number 123456789 \

    My position is 12 degrees 34.56 minutes north, 012 degrees 34.56 minutes east. \
    We have sighted a floating shipping container.
    Over.
]

=== Specifying position

- Using coordinates: E.g. $12#sym.degree 34.56' N, 012#sym.degree 34.56' E$; read: _one two degrees three four decimal five six minutes north, zero one two degrees three four decimal fice six minutes east_
- Using a bearing: Read bearing from object, then distance. E.g. _one six one degrees from Punta Rasca, two decimal one miles_




== VHF (Very High Frequency)

VHF does not bend around obstacles. The horizon of a VHF antenna is approximately $s = 3 * sqrt(h)$, where $s$ is the horizon in nautical miles and $h$ is the height of the antenna in metres.

Two antennas are in range of each other if their horizons overlap. Thus, the total range is approximately $s = 3 * (sqrt(h_a) + sqrt(h_b))$.

High power is usually $25 W$ and low power is usually $1 W$.

=== Channels

- Distress, safety and calling: *16*
- Inter-ship: *6*, *8*, *72*, *77*
- Port operations: *11*, *12*, *14*




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
            image("res/flags/ICS_Alfa.svg"),[*A* - Alpha],[I have a diver down, keep clear],
            image("res/flags/ICS_Bravo.svg"),[*B* - Bravo],[I am carrying dangerous goods],
            image("res/flags/ICS_Charlie.svg"),[*C* - Charlie],[Affirmative],
            image("res/flags/ICS_Delta.svg"),[*D* - Delta],[I am manouvering with difficulty, keep clear],
            image("res/flags/ICS_Echo.svg"),[*E* - Echo],[I am altering course to starboard],
            image("res/flags/ICS_Foxtrot.svg"),[*F* - Foxtrot],[I am disabled, communicate with me],
            image("res/flags/ICS_Golf.svg"),[*G* - Golf],[I require a pilot],
            image("res/flags/ICS_Hotel.svg"),[*H* - Hotel],[I have a pilot on board],
            image("res/flags/ICS_India.svg"),[*I* - India],[I am altering course to port],
            image("res/flags/ICS_Juliett.svg"),[*J* - Juliet],[I am on fire or leaking dangerous cargo],
            image("res/flags/ICS_Kilo.svg"),[*K* - Kilo],[I wish to communicate],
            image("res/flags/ICS_Lima.svg"),[*L* - Lima],[Stop your vessel instantly],
            image("res/flags/ICS_Mike.svg"),[*M* - Mike],[I am stopped and not making way],
            image("res/flags/ICS_November.svg"),[*N* - November],[Negative],
            image("res/flags/ICS_Oscar.svg"),[*O* - Oscar],[Man overboard],
            image("res/flags/ICS_Papa.svg"),[*P* - Papa],[I am about to sail, all report on board],
            image("res/flags/ICS_Quebec.svg"),[*Q* - Quebec],[Vessel is healthy, request pratique],
            image("res/flags/ICS_Romeo.svg"),[*R* - Romeo],[],
        ),
        table(
            columns: (55pt, auto, auto),
            rows: 35pt,
            align: left+horizon,
            image("res/flags/ICS_Sierra.svg"),[*S* - Sierra],[I am operating astern propulsion],
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

#columns(2)[
    #figure(
        image(
            "res/flags/setup.svg", 
            width: 80%,
            fit: "contain",
        ),
        caption: [
            Setup of flags excluding ensign
        ]
    )

    - *1* - Courtesy flag at highest position on starboard spreader
    - *2* - Signal flags below courtesy flag (Q Flag)
    - *3* - Custom flags, burgees and pennants on port spreader (below courtesy flag)
]

= Boat knowledge

== Rigs and sails

=== Sails

- Mainsail
- Headsail

=== Rigs

#table(
    columns: (auto, auto, auto),
    rows: 160pt,
    align: horizon,
    image("res/rigs/sloop.svg"), [*Sloop*], [Main mast ahead of 40-60 point. Usually one jib or genoa.],
    image("res/rigs/cutter.svg"), [*Cutter*], [Main mast behind 40-60 point. Two headsails (yankee and staysail). Not to be confused with Solent rig.],
    image("res/rigs/ketch.svg"), [*Ketch*], [Mizzen mast ahead of the rudder post. Mizzen mast and main mast connected using a stay.],
    image("res/rigs/yawl.svg"), [*Yawl*], [Mizzen mast astern of the rudder post. Mizzen mast stands on its own and is often only used for steering.]
)

= Checklists

== Boat preparation

=== Ready for sea

#columns(2)[
    - Below deck
      - Passage planning
      - Start boat log
      - Instruments and radio on
      - Gear stowed, everything in shipshape
      - Hatches closed
      - Engine check (@engine_check)
      - Lockers shut & locked
      - Victualling
      - Lunch prepared
    - Above deck
      - Winch handles on deck
      - Hand-bearing compasses on deck
      - Instrument covers off and stowed below
      - Disconnect shore power
      - Remove sail cover
      - Prepare main halyard
      - Life jackets
      - Fill water tanks
      - Fill engine tank
]

=== Engine check <engine_check>

    - *W* ater tank should have sufficient water.
    - *O* ngine oil should be within markers. Wipe down oil indicator before performing test.
    - *B* elt. Should be just stiff enough to turn roughly 90 degrees.
    - *B* ilges. Check for water or oil leaks.
    - *L* ook around. Does anything look off?
    - *E* xhaust. When starting the engine, check for water exhaust.

== Safety

=== Short: Three Fs

- Fire
- Flooding
- 

=== Long

#columns(2)[
  - Below deck
    - Gas
    - Fire prevention
    - Fire extinguishers
    - First aid box
    - Heads and shower pump
    - Provisioning
    - Sea cocks
    - Engine
    - Galley
    - Life jackets and life lines
    - Flares
    - Emergency VHF aerial
    - VHF
    - Control panel switches
    - GPS, plotter and port navigation
  - Above deck
    - Heaving line
    - Lifebelt, drogues and danbuoy
    - Liferaft
    - Abandon ship routine
    - Engine
    - Slips and falls
    - Winch and line safety
]