#import "@preview/colorful-boxes:1.2.0": *

#set heading(numbering: "1.")
#set text(
  size: 10pt,
)

#outline(
    indent: 1em
)

#pagebreak()

= General

== Terms

#columns(
    2,
    [
        / abaft: Towards the stern
        / abeam: On the beam; at right angles to centre line
        / ahead: Forward; towards the bow
        / astern: Backwards; towards the stern
        / cable: Anchor chain/line
        / fender: Cushion for preventing damage to a boat; hung from the guard rails
        / foul: Entangled or entwined; e.g. _foul anchor_
        / guard rails: Cables or ropes 
        / hawser: TODO
        / heaving to: Put the boat into a stable position, usually achieved by backing the foresail (@heave_to)
        / helm: Steering of the boat; helmsman
        / hull speed: speed at which the wavelength of the boat's bow wave equals its hull length
        / jack stays: TODO
        / lazy line: TODO
        / mooring: Attaching a boat to shore by rope
        / stanchions: Posts that hold the guard rails
        / tender: Dinghy for moving people and supplies to and from a ship
        / warp: A rope for warping or mooring a craft
    ]
)

== Common units

#figure(
    table(
        columns: (auto, auto, auto, auto),
        [*Symbol*], [*Name*], [*SI conversion*], [*Definition*],
        [_M, NM, nmi_], [nautical mile], [$1852m$], [one arc minute of latitude],
        [], [cable length], [$185.2m$], [$1/10$ of a nautical mile],
        [], [fathom], [$1.829m$], [$~1/100$ of a cable],
    )
)

= Mooring

== Stern-to

Stern-to mooring is especially common in the Mediterranean. If no bow lines are available, an anchor needs to be used instead. In some countries, it is common for a mariner to hold up a lazy line which needs to be picked up using the boat hook. 

Stern fenders are necessary to prevent the boat colliding with the quay.

#figure(
    image(
        "res/mooring/stern-to-with-lazylines.svg", 
        height: 20%,
    ),
    caption: [
        Mooring stern-to with two lazy lines.
    ]
)

== Alongside

- Install fenders on expected side at water height.
- Prepare bow and stern lines using the respective cleats. Have the crew ready to step off near the shrouds. Make sure the lines are on the outside of the guardrails.
- If approaching a single sideways pontoon or wall (e.g. the fuel pontoon), approach at roughly a $45 #sym.degree$ angle. Switch to neutral. When the bow is roughly a meter from the pontoon, steer over all the way. The bow should turn away from the pontoon and the remaining momentum should be enough to slowly drift towards it.
- Use a backwards burst to stop the boat. When next to pontoon/wall and stopped, have crew step off and run bow and stern lines around the appropriate cleats.
- Adjust both lines until in desired position. Affix bow and stern lines.
- If at mooring for longer time and there is a risk of surging, add springs. There are two possible setups for this, depending on the cleat situation on the boat and pontoon/wall. The line running towards the bow and stopping the boat from surging forwards is defined as the bow spring.

#figure(
    grid(
        columns: (auto, auto),
        image(
            "res/mooring/alongside-a.svg", 
            height: 20%,
        ),
        image(
            "res/mooring/alongside-b.svg", 
            height: 20%,
        )
    ),
    caption: [
        Mooring alongside with bow and stern lines as well as bow and stern springs. Springs can run either from amidships to pontoon cleats near the bow and stern, or from bow and stern cleats to a central cleat on the pontoon.
    ],
)

== Mooring buoy

- Prepare two lines coming off the bow cleats.
- Approach the buoy slowly. Keep it to the side the rope was prepared on. When the buoy is just off the bow, and the boat is stopped, lassoo it with the rope. Immediately cross the ends of the rope to avoid the buoy slipping away.
- Pull up the buoy. Attach it using the second line and tie it off. If the buoy is itself attached to the sea bed using a line, it can be directly attached to the cleat too. (TODO verify)
- Remove the first line.

== Anchoring

#pagebreak()

= Maneuvers

== Heaving to<heave_to>

#figure(
    image(
        "res/maneuvers/hove_to.svg", 
        width: 30%,
        fit: "contain",
    ),
    caption: [
        A boat in a hove-to position. The jib is backed, pushing the bow to leeward. The rudder is set all the way to windward, pushing the bow up. If the boat falls off, the mainsail will power up and help push the bow back up.
    ]
)

== Man overboard recovery

=== Using sail and engine by heaving-to

@mob_sail_a shows how to recover a MOB using sails and engine. 

- *Step A* immediately after the MOB, change to a close-hauled course.

#figure(
    image(
        "res/maneuvers/mob_sail_a.svg", 
        width: 50%,
        fit: "contain",
    ),
    caption: [
        MOB recovery under sail with engine assistance.
    ]
)<mob_sail_a>

#pagebreak()

= Navigation

== Pilotage


#figure(
    grid(
        columns: (20%, 20%),
        image(
            "res/fix/zone_diagram_ahead.svg",
            width: 100%,
            fit: "contain"
        ),
        image(
            "res/fix/zone_diagram_astern.svg",
            width: 100%,
            fit: "contain"
        )
    ),
    caption: [Diagrams indicating coloured zones of a light house ahead (left) or astern (right).]
)

== Running fix

A running fix can be performed if only a single reference point is available. The geometry is shown in @running_fix.

- Step *A*: Take a true bearing #sym.alpha to the reference point. Take note of the log. 
- Sail a steady course and take note of the true heading #sym.gamma. Wait until the bearing to the reference point has noticeably changed.
- Step *B*: Take another bearing #sym.beta to the reference point. Read off the log and calculate the distance traveled since the first reading $d$.
- Using the observed distance and heading, draw a vector starting from the reference point. If a reasonable guess can be made, you can apply leeway and tides to the vector. Draw the second bearing #sym.beta.
- Starting from the end of the vector, draw a line along the initial bearing #sym.alpha. The intersection of this line and the second bearing #sym.beta is the current position of the boat.

#figure(
    image(
        "res/fix/running_fix.svg", 
        width: 40%,
        fit: "contain",
    ),
    caption: [
        Visualisation of a running fix. The red lines show the first and second bearing, and the course vector. The blue lines are parallel lines to the first bearing and course, which can be used to obtain an intersection with the second bearing line.
    ]
)<running_fix>


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
    We are abandoning to the life raft. \
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

VHF does not bend around obstacles. The horizon radius of a VHF antenna is approximately $r = 3 * sqrt(h)$, where $r$ is the horizon in nautical miles and $h$ is the height of the antenna in metres.

Two antennas are in range of each other if their horizons overlap. Thus, the total range is approximately $r_(a+b) = 3 * (sqrt(h_a) + sqrt(h_b))$.

High power is usually $25 W$ on a VHF built into the boat. Low power is usually $1 W$.

=== Channels

- Distress, safety and calling: *16*
- Inter-ship: *6*, *8*, *72*, *77*
- Port operations: *11*, *12*, *14*

= Tides

== Tidal heights

=== Secondary ports

Tide tables aren't always available for every port. For secondary ports, the times and heights of high water and low water can be obtained by applying a correction to those of the primary port. 

The time of high/low water at the secondarty port $t_P$ is thus given as $t_P = t_S + Delta t$, where $t_S$ is the time at the standard port and $Delta t$ is the correction.

These corrections are usually supplied as two values that apply at $0000, 1200$ and $0600, 1800$.

#figure(
    table(
        columns: (auto, auto),
        [*Times [hhmm]*], [*Height [m]*],
        table(
            columns: (auto, auto),
            stroke: none,
            [High water (HW)], [Low water (LW)],
            table(
                columns: (40pt, 40pt),
                [0000], [0600],
                [1200], [1800],
            ),
            table(
                columns: (40pt, 40pt),
                [0000], [0600],
                [1200], [1800],
            ),
        ),
        table(
            columns: auto,
            rows: auto,
            stroke: none,
            table(
                columns: (40pt, 40pt, 40pt, 40pt),
                stroke: none,
                [MHWS], [MHWN], [MLWN], [MLWS],
            ),
            table(
                columns: (40pt, 40pt, 40pt, 40pt),
                [4.8], [3.9], [1.4], [0.5],
            ),
        ),
        table(
            columns: (auto, auto),
            stroke: none,
            align: left,
            [Differences ($Delta t$)], [],
            table(
                columns: (40pt, 40pt),
                align: center,
                [-0052], [-0002],
            ),
            table(
                columns: (40pt, 40pt),
                align: center,
                [-0052], [-0002],
            ),
        ),
        table(
            columns: (auto),
            stroke: none,
            align: left,
            [Differences ($Delta h$)],
            table(
                columns: (40pt, 40pt, 40pt, 40pt),
                align: center,
                [+1.8], [+0.6], [-0.3], [+0.1],
            ),
        ),
    )
)

Values in between the explicitly stated times must be acquired through linear interpolation. Thus, the formula for caluclating the correction $Delta t$ for any given high water time in the standard port $t_S$ is as follows:

#figure(
    $Delta t = Delta t_1 + frac((t_S - t_1), (t_2 - t_1)) (Delta t_2 - Delta t_1)$
)

where $Delta t_1$ is the correction at the start of the window (obtained from the table) and $Delta t_2$ is the correction at the end of the window (also obtained from the table).

Thus, the time of high/low water at the secondary port is obtained as follows:

#figure(
    $t_P = t_S + Delta t_1 + frac((t_S - t_1), (t_2 - t_1)) (Delta t_2 - Delta t_1)$
)

The height of high water or low water at the secondary port $H_P$ can be determined in a similar fashion, by interpolating between the mean springs and neaps values.

#figure(
    $h_P = h_S + Delta h_"springs" + frac((h_S - h_"springs"), (h_"neaps" - h_"springs")) (Delta h_"neaps" - Delta h_"springs")$
)

== Tidal streams

=== Course to steer

The diagram for working out CTS and SOG based on tidal set and drift, as well as a desired COG and an estimated boat STW, constitutes a triangle which is not guaranteed to have a right angle. Thus, we cannot use plain trigonometric identities to perform this calculation.

$
    & theta_"COG" &&= "COG (course over groud), known" \
    & theta_"CTS" &&= "CTS (course to steer), unknown" \
    & theta_"tide" &&= "Tidal set, known" \
    & v_"SOG" &&= "SOG (speed over groud) [kn], unknown" \
    & v_"STW" &&= "STW (speed through the water) [kn], known" \
    & v_"tide" &&= "Tidal drift [kn], known"
$

#figure(
    image(
        "res/tides/course_to_steer.svg", 
        width: 70%,
        fit: "contain",
    ),
    caption: [
        Vector diagram used to determine course to steer ($"CTS"$).
    ]
)<cts>

@cts demonstrates that that $alpha = theta_"COG" - theta_"tide"$ and $gamma = theta_"CTS" - theta_"COG"$.

We can make use of the sine and cosine rules to calculate the course to steer.
Remember to set the calculator to degree mode, unless you fancy instructing your helm using a course measured in radians.

#figure(
    $
        sin(alpha)/a = sin(beta)/b = sin(gamma)/c & "(sine rule)" \
        a^2 = b^2 + c^2 - 2 b c cos(alpha) & "(cosine rule)" \
        alpha + beta + gamma = 180 degree & "(sum of angles)"
    $,
)

By applying the sine rule, it follows that

#figure(
    $
        theta_"CTS" &= theta_"COG" + gamma \ 
                    &= theta_"COG" + arcsin(v_"tide" / v_"STW" sin(theta_"COG" - theta_"tide"))
    
    $
)

Working out the expected SOG is more complicated. 
By applying the cosine rule we end up with the following.

#figure(
    $
        "SOG" &= sqrt(v_"STW"^2 - v_"tide"^2 + 2 v_"STW" v_"drift" cos(alpha)) \
              &= sqrt(v_"STW"^2 - v_"tide"^2 + 2 v_"STW" v_"drift" cos(theta_"COG" - theta_"tide"))
    $
)

=== Estimated position

For calculating the estimated position, we can add the vectors of the tidal drift and set, as well as the boat speed and course through the water, to obtain an estimated course and speed over the ground.

This is mathematically possible using simple trigonometry and linear alegbra. However, this one might actually be much more useful to draw out on the map.

We must first convert our vectors from polar to cartesian form. In the following example, we use the first dimension `x` to represent longitude and `y` to represent latitude, which is the definition of a cartesian plane. This can be a bit confusing, given that it is the norm to specify coordinates in the transposed Lat-Lon form. 

Given a vector $accent(a, arrow) = d angle theta$, where $0 degree < theta <= 360 degree$, we can calculate the cartesian form as follows:

$ vec(x, y) = vec(d cos(theta), d sin(theta)) $

Converting back into polar form is painful. There is a $"arctan2"$ function available in many maths libraries that takes care of computing the below formula for the correct quadrant, but this is not present on most calculators.

$ 
    theta &= arctan(y/x) + cases(
        0 degree &"if" x >= 0 and y >= 0 \
        360 degree &"if" x < 0 and y >= 0 \
        180 degree &"if" y < 0
    ) \
    d &= sqrt(x^2 + y^2)
$


= Morse code

- The length of a dot is one unit.
- A dash is three units.
- The space between parts of the same latter is one unit.
- The space between letters is three units.
- The space between words is seven units.

#figure(
    table(
        columns: (auto, auto, auto),
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

Flags are said to be _worn_ by the yacht and _flown_ by the owner.

The ideal flag size for a boat is dependent on its size. The ensign size should be roughly one inch for each foot of overall length. For other flags, it should be $1/2$ an inch for each foot of the highest mast above water.

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

#pagebreak()

== Flag setup and etiquette


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

=== Ensign

Ensigns are mandatory for all vessels and signify the country of registration. The ensign should be flown at all times when outside of port (TODO). It is to be flown at the most privileged position on the boat, i.e. as close to the stern as possible. 

When in port, the ensign is traditionally hoisted at 09:00 in winter and 08:00 in summer, and lowered at 21:00. However, this tradition is hardly followed anymore.

=== Courtesy flag

When in the waters of a different country to the one the boat is registered in, host country's flag must be hoisted. This is called the courtesy flag. It is to be hoisted on the starbord spreader and should be higher than the ensign and other flags.

= Weather

== Wind

=== The Beaufort Scale



== Swell

A wave can capsize the boat if it is higher than $1/3$ of the boat length, is a breaking wave, and reaches the boat abeam.

= Boat knowledge

== Rigs and sails

=== Sails

- Mainsail
- Headsail

=== Rigs

#table(
    columns: (auto, auto, auto),
    rows: 140pt,
    align: horizon,
    image("res/rigs/sloop.svg"), [*Sloop*], [Main mast ahead of 40-60 point. Usually one jib or genoa.],
    image("res/rigs/cutter.svg"), [*Cutter*], [Main mast behind 40-60 point. Two headsails (yankee and staysail). Not to be confused with Solent rig.],
    image("res/rigs/ketch.svg"), [*Ketch*], [Mizzen mast ahead of the rudder post. Mizzen mast and main mast connected using a stay.],
    image("res/rigs/yawl.svg"), [*Yawl*], [Mizzen mast astern of the rudder post. Mizzen mast stands on its own and is often only used for steering.]
)

= Passage Planning

== Appraisal

- Vessel information (name, class, seaworthiness, callsign, MMSI)
- Crew (experience, preferences, condition)
- Date/time
- Estimated duration, distance
- Weather conditions
 
== Planning

- Sunrise and sunset
- 
- Determine route and waypoints
- Identify and note down dangers along the route
-
- Ports of refuge

== Execution

== Monitoring

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
- ?

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

= Appendix

