#let printerFriendly = false

#let background_0 = rgb("#2e3440")
#let background_1 = rgb("#3b4252")

#let text_color = rgb("#eceff4")
#let text_special_0 = gradient.linear(..(rgb("#88c0d0"), rgb("#d6e8ff")))
#let text_special_1 = rgb("#88c0d0f0")

#if printerFriendly {
  background_0 = rgb("#fefefe")
  background_1 = rgb("#efefef")

  text_color = rgb("#000000")
  text_special_0 = gradient.linear(..(rgb("#000000"), rgb("#000000")))
  text_special_1 = rgb("#000000f0")
}

#let margin = 1.0cm

#set page(
  columns: 2,
  margin: 0cm,
  height: 11in,
  width: 8.5in,
  fill:background_1
)

//height: 1020pt,
//width: 650pt,

#set columns(gutter: 0cm)

#set text(
  font: "Corbel",
  size: 10.5pt,
  fill: text_color,
)

#set par(
  spacing: 0.7em,
  justify: true,
)

#set list(spacing: 0.7em)

#set line(
  length: 100%,
  stroke: (0.8pt + text_special_1),
)

#let heading(what) = (
  [
    #set par(spacing: 0.2em)
    #set text(size: 1.2em, weight: "bold", fill: text_special_1)
    #what

    #line()
  ]
)

#let info_block(title, items) = (
  [
    #if printerFriendly {
      text(weight: "bold", fill: text_special_1.darken(60%))[
        #title
      ]
    } else {
      text(weight: "bold", fill: text_special_1.lighten(60%))[
        #title
      ]
    }

    #block(inset: (left: 0em))[
      #text()[
        // #set par(leading: 0.0em)
        #items
      ]
    ]
  ]
)

#let __justify_align(left_body, right_body) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    gutter: 0pt,
    [#left_body], [#right_body],
  )
}

#let tertiary-right-header(body) = {
  set text(weight: "light", size: 9pt)
  body
}

#let small-tertiary-right-header(body) = {
  set text(weight: "light", size: 8pt)
  body
}

#let secondary-justified-header(primary, secondary) = {
  let fill-color = if printerFriendly {
    text_special_1.darken(60%)
  } else {
    text_special_1.lighten(60%)
  }

  [

    #__justify_align(
      [=== #text(weight: "bold", fill: fill-color)[
        #primary
      ]],
      [#tertiary-right-header[#secondary]],
    )
  ]
}

#let small-justified-header(primary, secondary) = {
  [

    #__justify_align(
      [=== #text(weight: "regular", size:8pt)[
        #primary
      ]],
      [#small-tertiary-right-header[#secondary]],
    )
  ]
}

#let minors(content) = {
  set text(weight: "regular", size: 8pt, style: "italic")
  content
}

// LEFT
#rect(width: 100%, height: 100%, fill: background_0, inset: margin)[

  #rect(
    [
      #set text(weight: "bold", size: 2.3em, fill: text_special_0)
      #set par(spacing: 0.65em)
      Jonathan

      Liu

      #set text(size: 11pt, weight: "medium")
      dev.jonathan.liu\@gmail.com \
      https://github.com/spooketti \
      https://www.linkedin.com/in/jonathan-liu-dev/
    ],
    fill: rgb(0, 0, 0, 0),
    inset: (left: 0cm, right: 0cm, top: 0cm, bottom: 0.5em),
  )

  #heading([Education])

  #info_block([], [
    #secondary-justified-header("Purdue University", "West Lafayette")
  #small-justified-header("B.S. Robotic Engineering Technology", "2026-2030")

    #secondary-justified-header("Del Norte High School", "San Diego")
  #small-justified-header("GPA 4.08, AP: Calculus AB/BC, Physics Mech/ENM
CSP/CSA, Honors Engineering", "2022-2026")
  ])

  #heading[Skills]
  #secondary-justified-header("Hard Skills","")
  - REST API (JavaScript,Python Flask,Go)
  - Data Analysis (OpenCV,MatLab,Linux)
  - Robotics (Java,Arduino C++,Autodesk Eagle/CAD)
  - Game Dev (C\#,Unity/Godot,Lua, Blender, Photoshop)

  #secondary-justified-header("Soft Skills","")
  - Agile teamwork
  - Code Review (Pull Requests, Git, Documentation)
  - Presenting Results (Abstracts, Conferences, Presentations)

  #heading([Awards])
  #info_block([], [
    #secondary-justified-header("Del Norte High School", "CollegeBoard")
    - AP Scholar with Distinction Award
    - National Recognition Program - School Recognition Award for Outstanding Academic Achievement
    #secondary-justified-header("Research Conference", "UCSD OPALS")
    - ICBEB 2025 Best Poster Award
    #secondary-justified-header("Runtime Terror 22105", "FTC Robotics")
    - Inspire 3 Award at 2025 Michiana Premier Event
    - Thompson division finalist alliance (Michiana)
    - 1st place alliance in 2026 San Diego Gauss League Championships
    - Inspire 1 at 2026 San Diego League Championships
    - Inspire 2 at 2026 San Diego Regional, advanced to World Championships
    #secondary-justified-header("Team Optix 3749", "FRC Robotics")
    - On The Fly won 2025 Innovation In Control Award at San Diego Regional
  ])
]

// RIGHT
#rect(width: 100%, height: 100%, fill: background_1, inset: margin)[
  #heading([Work Experience])

  #secondary-justified-header("FTC Robot Programming", "2025-Present")
  #small-justified-header("Runtime Terror 22105", "On-Site")
  #text(size: 9pt)[
    - Implemented camera AprilTag relocalization / color masking pipelines
    - Programming endgame hanging in 2025/2026, ball sorting, etc.
      ]

  #secondary-justified-header("Phylogenetic Research Intern", "2025 Summer")
  #small-justified-header("UCLA Pellegrini Lab", "Remote")
  #text(size: 9pt)[
    - Analyzed Hypocreales taxonomy / phylogenetic groups
    - Compare UCLA UMap vs NCBI database .newick trees
      ]

   #secondary-justified-header("Surgery System Research Intern", "2024-2025")
  #small-justified-header("UCSD OPALS", "Hybrid")
  #text(size: 9pt)[
    - Programming AR spinal tracking surgery navigation system
    - C\# ArUco computer vision for localization
      ]

   #secondary-justified-header("CompSci Education Research Intern", "2024-2025")
  #small-justified-header("UCSD Mentor Assistance Program", "Hybrid")
  #text(size: 9pt)[
    - Analyze K-12 Computer Science Education trends/data
    - Data obtained via Python web-scraping bot
    ]

  #secondary-justified-header("Library Volunteer", "2024-Present")
  #small-justified-header("4S Ranch San Diego County Library", "On-Site")
  #text(size: 9pt)[
      - Shelving books, customer service, supporting school clubs
      - Achieved 23 volunteer hours/200+ people supported
  ]

  #secondary-justified-header("FRC Robot Programming", "2022-2025")
  #small-justified-header("Team Optix 3749", "On-Site")
  #text(size: 9pt)[
    - Teaching incoming members Java
    - Repairing software at competitions
      - San Diego Regional 2024/2025 
      - Battle At The Border 2023/2024 competitions
   - Dynamic "On The Fly" path generation with autonomous obstacle avoidance
   - Applied control theory (PID/FeedForward) for motor function
   - 2025 Postseason Differential Drive GoKart
  ]

  #heading([Personal Projects])
  #info_block([], [
    #secondary-justified-header("Indie Dev Group", "Superposition Development")
    #text(size: 9pt)[
    - Spectator: WIP procedurally generated horror game using Godot with C\#
    - Relay: Open source full stack chat system emphasizing privacy via self-hosted web servers
      - Webserver using Go/SQL, other versions in Python/C/etc.
      - Web client with plans of a Go/C CLI client
    ]
    #secondary-justified-header("Personal Projects", "spooketti on GitHub")
    #text(size: 9pt)[
    - #link("https://github.com/spooketti/spooketti/blob/main/pfp/other/dog.png")[Wearable Arduino Christmas Tree Hat] via Breadboard, LEDs, C++, portable battery
    - YT-RPC: YT Music client enabling listen together via WebRTC and status broadcasts to Discord
    ]
  ])

  #heading([Publications/Conferences])
  #secondary-justified-header("UCSD OPALS", "")
  #text(size: 9pt)[
  - Abstract: Development of an Augmented Reality Surgical Navigation System Based on Multiple ArUco Markers
  - Poster (Paper ID: BEB8008) presented at 2025 Japan BEB Conference on Biomedical Engineering and Biotechnology
  ]
  #secondary-justified-header("UCSD MAP", "")
  #text(size: 9pt)[
  - Abstract: Insight On K-12 Computer Science Education Trends Through Scratch Project Analysis
  - Presented at 2025 USD Consortium For Computing Sciences In Colleges Conference
  ]
]
