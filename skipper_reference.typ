#import "@preview/colorful-boxes:1.2.0": *

#set heading(numbering: "1.")
#set text(
  size: 10pt,
)
#set page(
    header: [
        #h(1fr)
        _Niklas' Skipper Companion_
    ],
    numbering: "1"
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
    caption: [Diagrams indicating coloured sectors of a light house ahead (left) or astern (right).]
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
By applying the sum of angles rule for triangles and the cosine rule we end up with the following.

#figure(
    $
        beta &= 180 degree - alpha - gamma \
             &= 180 degree - (theta_"COG" - theta_"tide") - arcsin(v_"tide" / v_"STW" sin(theta_"COG" - theta_"tide")) \
        "SOG" &= sqrt(v_"STW"^2 + v_"tide"^2 - 2 v_"STW" v_"drift" cos(beta)) \
              &= sqrt(v_"STW"^2 + v_"tide"^2 - 2 v_"STW" v_"drift" cos(180 degree - alpha - gamma)) \
              &= sqrt(v_"STW"^2 + v_"tide"^2 - 2 v_"STW" v_"drift" cos(180 degree - alpha - gamma))
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

=== The Beaufort Scale (UKMO)

#table(
    columns: 8,
    table.header([*Beaufort*], [*Mean wind speed [kn]*], [*Limits of wind speed [kn]*], [*Description*], [*Probable mean wave height [m]*], [*Probable maximum wave height [m]*], [*Sea state*], [*Sea description*]),
    [*0*], [0], [$<1$], [Calm], [-], [-], [0], [Calm (glassy)],
    [*1*], [2], [$1-3$], [Light air], [0.1], [0.1], [1], [Calm (rippled)],
    [*2*], [5], [$4-6$], [Light breeze], [0.2], [0.3], [2], [Smooth (wavelets)],
    [*3*], [9], [$7-10$], [Gentle breeze], [0.6], [1.0], [3], [Slight],
    [*4*], [13], [$11-16$], [Moderate breeze], [1.0], [1.5], [$3-4$], [Slight-Moderate],
    [*5*], [19], [$17-21$], [Fresh breeze], [2.0], [2.5], [4], [Moderate],
    [*6*], [24], [$22-27$], [Strong breeze], [3.0], [4.0], [5], [Rough],
    [*7*], [30], [$28-33$], [Near gale], [4.0], [5.5], [$5-6$], [Rough-Very rough],
    [*8*], [37], [$34-40$], [Gale], [5.5], [7.5], [$6-7$], [Very rough-High],
    [*9*], [44], [$41-47$], [Strong gale], [7.0], [10.0], [7], [High],
    [*10*], [52], [$48-55$], [Storm], [9.0], [12.5], [8], [Very high],
    [*11*], [60], [$56-63$], [Violent storm], [11.5], [16], [8], [Very high],
    [*12*], [-], [$>64$], [Hurricane], [$>14$], [-], [9], [Phenomenal],
)

=== Reefing suggestions

#table(
    columns: 4,
    table.header([*Beaufort*], [*Conditions*], [*Main*], [*Fore*]),
    [0], [Drifting or under engine], [Stowed or possibly full to steady yacht's motion.], [Furled],
    [1], [Drifting or under engine, possibly motor-sailing], [Stowed or possibly full to steady yacht's motion.], [Furled if motor-sailing, else fully out],
    [2], [Able to sail if fair tide], [Full], [Full],
    [3], [Calm, gentle sailing], [Full], [Full],
    [4], [Sails fully powered, good sailing], [Full, possibly one reef], [Full, possibly slightly furled],
    [5], [Berthing more difficult, inexperienced crew might get nervous], [Reef one], [Possibly slightly furled],
    [6], [Challenging conditions, consider seeking shelter], [Reef one or two], [$1/3$ furled away],
    [7], [Unpleasant in unsheltered waters, limit for inexperienced skippers], [Reef two or three], [$2/3$ furled away],
    [8], [Potentially dangerous outside sheltered waters if inexperienced. Upwind sailing difficult.], [Reef three or tri-sail], [mostly furled away or storm-jib],
    [9], [Dangerous, seek shelter], [Reef three or tri-sail], [storm-jib],
    [10], [Survival conditions, upwind sailing impossible], [tri-sail or none], [storm-jib],
)



== Swell

A wave can capsize the boat if it is higher than $1/3$ of the boat length, is a breaking wave, and reaches the boat abeam.

== Marine forecast glossary

#columns(
    2,
    [
        === Time
        / Imminent: $<6h$ from issue time
        / Soon: $6h-12h$ from issue time
        / Later: $>12h$ from issue time

        === Gale warnings
        / Gale: Winds of at least F8
        / Severe gale: Winds of at least F9
        / Storm: Winds of at least F10
        / Violent storm: Winds of at least F11
        / Hurricane force: Winds of at least F12

        === Visibility
        / Very poor: $<1000m$
        / Poor: $1000m-2M$
        / Moderate: $2M-5M$
        / Good: $>5M$

        === Sea state
        / Smooth: Wave height $<0.5m$
        / Slight: Wave height $0.5m-1.25m$
        / Moderate: Wave height $1.25m-2.5m$
        / Rough: Wave height $2.5m-4.0m$
        / Very rough: Wave height $4.0m-6.0m$
        / High: Wave height $6.0m-9.0m$
        / Very high: Wave height $9.0m-14.0m$
        / Phenomenal: Wave height $>14.0m$

        === Wind
        / Becoming cyclonic: Considerable direction change across the path of a depression
        / Veering: Turning clockwise
        / Backing: Turning anticlockwise

        === Movement of pressure systems
        / Slowly: $<15"kn"$
        / Steadily: $15"kn"-25"kn"$
        / Rather quickly: $25"kn"-35"kn"$
        / Rapidly: $35"kn"-45"kn"$
        / Very rapidly: $>45"kn"$
    ]
)


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

== The Engine

A well-maintained diesel engine will burn roughly $0.22 l / ("hp" h)$. E.g. a $100 "hp"$ engine will burn $22 l/h$.

Power is roughly proportional to the cube of the shaft speed. It follows that fuel consumption based on revs and engine power can be described as follows:

#figure(
    $x [l/h] = 0.22 * (P_"max" ["hp"]) * (T_"current" / T_"max")^3$ 
)

A $100 "hp"$ engine at $80%$ RPM will develop rougly $50 "hp"$, consuming about $11 l/h$ of diesel.

The vessel's hull speed can be described as follows:

#figure(
    $v_"hull" ["kn"] = 1.34 * sqrt(s_"LWL" ["ft"])$
)

Efficient crusing speed tends to be around $70% - 80%$ of the hull speed, but varies from vessel to vessel.




= Passage Planning

== Appraisal

- Vessel information (name, class, seaworthiness, draught, stability, range, callsign, MMSI)
- Crew (size, experience, preferences, condition)
- Charts, almanac, other relevant publications
 
== Planning

- Date/time
- Estimated duration, distance
- Weather and environmental conditions
- Sunrise and sunset
- Route and waypoints
- Dangers and restrictions along the route
- Tidal depths
- Method and frequency of position fixing
- Ports of refuge and contingency plans

== Execution

Prior to execution:

- Condition of navigation equipment
- ETAs at critical points
- Weather forecast

== Monitoring

- Fixes
- Weather changes

= Checklists

== Boat preparation

=== Ready for sea

#columns(2)[
    - Below deck
      - Passage planning
      - Start boat log
      - Instruments and VHF on
      - Gear stowed, everything in shipshape
      - Hatches closed
      - Engine check (@engine_check)
      - Lockers shut & locked
      - Victualling
      - Navigation lights at night
      - Tools and spares
      - Status of batteries
      - Gas shut off
      - Relevant charts and pilotage notes accessible

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
      - Ensign (and courtesy flag)
]

=== Engine check <engine_check>

    - *W* ater tank should have sufficient water.
    - *O* ngine oil should be within markers. Wipe down oil indicator before performing test.
    - *B* elt. Should be just stiff enough to turn roughly 90 degrees.
    - *B* ilges. Check for water or oil leaks.
    - *L* ook around. Does anything look off?
    - *E* xhaust. When starting the engine, check for water exhaust.

== Safety

=== Short safety brief: Three Fs

- Fire
 - Gas
- Flooding
 - Location of bilge pump
- Falling overboard
 - Life vests
 - Harnesses

#pagebreak()

=== Full safety brief

#columns(2)[

==== Below deck

- Gas
    - Heavier than air
    - Location and usage of stopcocks
    - Location of gas bottles
    - Routine for gas spillage
    - Gas sensors and alarm
    - Manual bilge pump location
- Fire prevention
    - No smoking
    - Never leave hob unattended
    - Turn off gas at stopcock
- Fire extinguishers
    - Locations
    - Types
    - Fire blanket
    - Engine fire
- First aid box
    - Everyday box
    - Cat C box
- Heads and shower pump
    - Operating procedure
- Provisioning/victualling
- Sea cocks
    - Location
    - Presence of bungs
- Engine
    - WOBBLE (@engine_check)
- Galley
    - Always wear strong bottoms when cooking at sea
    - Galley strap
    - Always clean spillages right away
    - Only half-fill mugs in half water
    - Pour boiling water into mugs over the sink
    - Put kettle spout on fore-aft line
- Life jackets and life lines
    - Location
    - Assign one to each crew member and make sure they fit
    - Check $"CO"_2$ canister and green tags
    - Light, spray hood and whistle
    - When to wear
    - Clip on points and jackstays, never guard rails
    - Clip in before exiting companionway and after entering
- Flares
    - Location
    - Types
    - When and how to use
    - Check expiry dates
- Emergency VHF aerial location
- VHF
    - Basic operation (on/off, squelch, channels, push-to-talk)
    - Mayday call procedure (check instruction poster)
    - Location and battery charge of handheld radio
- Control panel switches
    - Nav and cabin lights
    - Water tank and battery indicators
    - GPS
    - VHF
    - Fridge
    - Bilge pump
    - Battery isolators
    - Shore power
- GPS, plotter and port navigation
    - MOB button

==== Above deck

- Heaving line
- Lifebelt, drogues and danbuoy
- Liferaft
    - Securing points, check painter
    - When to launch
    - How to launch
- Abandon ship routine
    - Lifejackets
    - Mayday
    - Bring flares, handheld VHF, EPIRB, grab-bag, water
- Engine
    - Batteries
    - How to start and stop
- Slips, falls, other dangers
    - One hand for yourself, one for the boat
    - Step off, don not jump onto pontoon
    - Danger of boom
    - Do not fend off using body parts
- Winch and line safety
    - Winch and jammer operation
    - Never release a jammer without having at least one turn around the winch
    - Keep fingers clear of winch
    - Winch handle location
]

== Customs

=== Documents

- Vessel
  - Ship registration
  - VAT invoice
  - Insurance certificate
  - Radio licence
  - Life-raft service certificate

- Skipper
  - Skipper licence (e.g. ICC)
  - VHF licence

- Everyone
  - Passports
  - Visas
  - EHIC

- Form C1331

= Appendix

