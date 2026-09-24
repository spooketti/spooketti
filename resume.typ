#import "@preview/basic-resume:0.2.9": *

#let name = "Jonathan Liu"
#let location = "San Diego, CA"
#let email = "jonathanliu@ucsb.edu"
#let github = "github.com/spooketti"
#let linkedin = "linkedin.com/in/jonathan-liu-dev"
#let phone = "+1 (858) 588-9345"
#let personal-site = "spooketti.github.io"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  // personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
  font-size: 9pt,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of California: Santa Barbara",
  location: "Santa Barbara, CA",
  dates: dates-helper(start-date: "Sep 2026", end-date: "Jun 2030"),
  degree: "Bachelor's of Science, Computer Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)

#edu(
  institution: "Del Norte High School",
  location: "San Diego, CA",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Jun 2026"),
  degree: "High School Diploma, Certification in Software and Systems Development / Engineering Design", 
)
- AP Scholar with Distinction Award
- National Recognition Program - School Recognition Award for Outstanding Academic Achievement

// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci
// 
// 


== Work Experience

#work(
  title: "FTC Robotics Programming",
  location: "San Diego, CA",
  company: "22105 Runtime Terror",
  dates: dates-helper(start-date: "Mar 2025", end-date: "Jun 2026"),
)
- Developed computer vision pipelines for course correction during autonomous pathing and AprilTag relocaliation
- Programming PTO clutch based hanging mechanism to suspend the robot in the air
- Implementing software patches at FIRST World Championship
  - Inspire 3 Award / Thompson division finalist alliancat 2025 Michiana Premier Event
  - 1st place alliance / Inspire 1 in 2026 San Diego Gauss League Championships
  - Inspire 2 at 2026 San Diego Regional
//these awards take up a lot of space...

#work(
  title: "Phylogenetics Data Analyst",
  location: "(remote) San Diego, CA",
  company: "UCLA Pellegrini Lab",
  dates: dates-helper(start-date: "May 2025", end-date: "Aug 2025"),
)
- Computed and analyzed differences amongst .newick trees with Python
- Constructed phylogenetic trees comparing UCLA's UMAP Hypocreales taxomony to NCBI  

#work(
  title: "Surgery System Research Intern",
  location: "San Diego, CA",
  company: "UC San Diego Institute of Engineering in Medicine",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Jun 2025"),
)
// - Scaled user base from 10 to 2000+, accidentally becoming a small wealthy nation in the process
// - Crafted Bash scripts so clever they occasionally made other engineers weep with joy
// - Automated support responses, reducing human interaction to a level that would make introverts proud
// - Built a documentation site that actually got read, breaking the ancient RTFM curse
- Implemented an ArUco C\# based AR tool as an X-Ray free alternative to fluoroscopy spine imaging
- Compiled findings into abstract and poster, presented at ICBEB 2025 winning Best Poster Award
  - Development of an Augmented Reality Surgical Navigation System Based on Multiple ArUco Markers
#work(
  title: "CS Education Research Intern",
  location: "San Diegb, CA",
  company: "UC San Diego",
  dates: dates-helper(start-date: "Oct 2024", end-date: "May 2025"),
)
- Scraped 35,000+ Scratch projects via Python web-scraper for program code in .json format
- Quantified trends in program code based on "opmode" block frequency in project code
- Presented abstract and findings in poster format in a program symposium
  - Insight On K-12 Computer Science Education Trends Through Scratch Project Analysis
#work(
  title: "Library Volunteer",
  location: "San Diego, CA",
  company: "San Diego County Library",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Jan 2026"),
)
- Provided customer service, shelving books, and community events, e.g.,  robotics scrimages, chess tournaments 

#work(
  title: "FRC Robotics Programming",
  location: "San Diego, CA",
  company: "Team Optix 3749",
  dates: dates-helper(start-date: "Nov 2022", end-date: "Jul 2025"),
)
- Optimized teleoperation through developing "On The Fly" dynamic routing and driving to precise positions 
  - Innovation In Control Award at San Diego Regional

== Projects

#project(
  name: "Relay",
  // Role is optional
  // role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Aug 2025", end-date: "Present"),
  // URL is also optional
  url: "github.com/Superposition-Development/Relay",
)
- Maintaing based full-stack Go terminal application for real time communication alongside WebRTC based calling
  - Operates off of decentralized servers and open source to give users privacy by routing without a third party

// == Extracurricular Activities

// #extracurriculars(
//   activity: "Capture The Flag Competitions",
//   dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
// )
// - Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
// - Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//   - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
// - Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #extracurriculars(
//   activity: "Gaucho Racing",
//   dates: dates-helper(start-date: "Sep 2026", end-date: "Present"),
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
- *Languages*: HTML/CSS, JavaScript, Java, C\#, Go, Python, C++, MatLab, SQL, Bash, Lua
- *Technologies*: Git, OpenCV, CUDA, Linux, Arduino, CAD, Blender, Photoshop