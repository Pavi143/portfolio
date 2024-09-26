#let accent = rgb(136, 57, 239)
#let subtext = rgb(76, 79, 105)
#set page("a4", margin: 1cm)
#show heading: set text(fill: black)
#set text(9.75pt)
#show link: set text(fill: rgb(30, 102, 245))
  
#let contactChips = (
  (
    icon: "github-svgrepo-com.svg",
    label: "/pavi143",
    href: "https://github.com/pavi143"
  ),
  (
    icon: "linkedin-svgrepo-com.svg",
    label: "/in/pavithra",
    href: "https://www.linkedin.com/in/pavithra-v-323195217"
  ),
  (
    icon: "email-svgrepo-com.svg",
    label: "vspavipavi@gmail.com",
    href: "mailto:vspavipavi@gmail.com"
  ),
  (
    icon: "phone-svgrepo-com.svg",
    label: "+91 638 118 4391",
    href: "tel:+916381184391"
  ),
  (
    icon: "cursor-svgrepo-com.svg",
    label: "pavithra.tech",
    href: "https://pavithra.tech"
  ),
  (
    icon: "leetcode-svgrepo-com.svg",
    label: "leetcode/PavithraVS",
    href: "https://leetcode.com/u/PavithraVS/"
  )
)

#let linkChip(imageSrc, linkHref, linkLabel) = {
  grid(columns: (14pt, 1fr), gutter: 0.5em, align: alignment.horizon,
    image(imageSrc, width: 14pt),
    link(linkHref)[#text(linkLabel, size: 11pt)]
  )
}

#let iconChip(imageSrc, label) = {
  grid(columns: (14pt, 1fr), gutter: 0.5em, align: alignment.horizon,
    image(imageSrc, width: 14pt),
    text(label)
  )
}

#let header(content) = {
  pad(
    underline(
      text(content, font: "New York Extra Large", size: 16pt, weight: 700)
    ), y:0.75mm)
}
#let careers = (
  (
    company: "A2A Point L.L.C",
    position: "Software developer ",
    websites: ("https://a2apoint.com",),
    location: "Remote",
    period: "Apr 2024 - September 2024",
    experience: "4 months",
    content: [
      - *Tech stack:* Typescript, Python, React, React Native, Next.js (RSC), Keycloak, Directus, Postgres, Nginx, Docker, blue/green CI/CD.
      - Contributed to the development of the A2A Point website, setting the project theme which supports both light and dark mode.
      // - Find the methodology in my blog post #link("https://blogs.codingclubgct.in/useEffects/building-universal-apps")[here] and the project specifications #link("https://raw.githubusercontent.com/useEffects/a2apoint/main/assets/whitepaper.pdf")[here]. Lead a team of 3 interns.
      - The project includes web app, mobile apps deployed in #link("https://a2apoint.com/android")[Play store] and #link("https://a2apoint.com/ios")[App store], CMS solutions for admins and users, newsletter, user courses, blogs, MFA authentication, in app ads, payment gateways (stripe), realtime chatting, push notifications and much #link("https://raw.githubusercontent.com/useEffects/a2apoint/main/assets/whitepaper.pdf")[more].
      - The closed community app for real estate agents in UAE, is estimated to have atleast *5000 active subscriptions* per month.
    ]
  ),
  (
    company: "Bosch Software Global Technologies",
    position: "Project Trainee",
    websites: ("https://bosch-softwaretechnologies.com/",),
    location: "Coimbatore",
    period: "July 2023 - Aug 2023",
    experience: "2 months",
    content: [
      - *Tech stack*: Qt, C++, Git.
      - Led front end and back-end tasks in the Tools Team, focusing on Qt application development.
      - Designed a dynamic user interface for the "Flash GUI Common Codebase" project.
      - Gained experience with debugging and version control using tools like Git.
      - Contributing to a collaborative team environment while learning best practices in software development.
    ]
  ),
 
  (
    company: "Coding club gct",
    position: "Executive member",
    websites: ("https://codingclubgct.in", "https://github.com/coding-club-gct"),
    location: "Coimbatore",
    experience: "1 year ",
    period: "Jan 2023 - Jan 2024",
    content: [
      - *Coding Club Homepage*: Developed Homepage application for our club and gallery application to post memories captured in each events.
      - *Theme package*: Theme Package supports both light and dark mode published npm that showcases our club’s integrity in uniform design [https://github.com/coding-club-gct/coding-club-gct/issues/1].
      - *Blogs*: Pulls markdown files from the configured GitHub source and displays the it as blogs, built with the latest react server components hence static page generation for every blog post, page. Supports authentication, comments, likes, tags, api and more.
      - *Webring*: Developed a webring project to enhance website connectivity and community engagement [https://webring.codingclubgct.in/].
      - *Tech stack:* Typescript, Turborepo, Nextjs, Vercel, Tailwind.
    ]
  ),
  // (
  //   company: "Designeration Agency",
  //   position: "Freelancing",
  //   websites: ("https://designeration.agency",),
  //   location: "Remote",
  //   experience: "1 month",
  //   period: "Aug 2023 - Sep 2023",
  //   content: [
  //     - Fullstack portfolio website with a CMS for the agency.
  //   ]
  // )
)

#let education = (
  institution: "Government College of Technology, Coimbatore",
  period: "2024 - 2020",
  degree: "B.Tech in Information Technology",
  content: [ CGPA: 8.41 ]
)

#let projects = (
  
  (
    name: "Sqlite Clone",
    link: "https://github.com/coding-club-gct/sqlite-clone",
    content: [ 
      - Developed CLI database management system to gain expertise in Python, Operating Systems concepts like paging, data structures like B-Tree and enabling basic file based DB creation and management.*Tech stack:* Python,SQL.
    ]
  ),
  (
    name: "Design patterns",
    link: "https://github.com/coding-club-gct/design-patterns",
    content: [
      - Developed a comprehensive project on 11 design patterns, providing clear explainations and simple examples to faciliate easy learning for the students. Held seminars and workshop in our club on this topic.*Tech stack:* C++.
    ]
  ),
  (
    name: "Portfolio",
    link: "https://github.com/coding-club-gct/design-patterns",
    content: [
      - Personal portfolio showcasing skills and projects with responsive design, featuring a downloadable resume deployed in vercel.*Tech stack:* Typescript, Nextjs .
    ]
  )
)

#let skills = (
  (
    name: "Programming languages",
    content: [
       C, C++, Python, Java, SQL, Javascript, Typescript, HTML, CSS .
    ]
  ),
  (
    name: "Tools",
    content: [
      React, Next.js, Node.js, Linux, Docker, Git, Github, Rest API, OAuth 2.0, Tailwind, MUI .
    ]
  )
)

#box(height: 20mm)[
  #grid(columns: (1fr, 1.6fr), gutter: 3em,
    grid(rows: (1fr, 1fr), gutter: 0em,
      text("Pavithra V", size: 16pt, tracking: 2pt, weight: 700, font: "New York Extra Large"),
      text("Intermediate Software Development Engineer with a solid foundation in programming.", fill: subtext)
    ),
    grid(columns: (1fr, 1fr), row-gutter: 1em, column-gutter: 0em,
      ..contactChips.map(contactChip => {
        linkChip("images/" + contactChip.icon, contactChip.href, contactChip.label)
      }),
    )
  )
]
#line(length: 100%)
#header("Skills")
#grid(gutter: 1em,
  ..skills.map(skill => {
    text()[*#skill.name*: #skill.content]
  })
)
#header("Experience")
#grid(gutter: 1.5em,
  ..careers.map(career => {
    grid(columns: (auto, auto, 1fr), column-gutter: 1em, align: alignment.horizon,
      heading(career.company, level: 2),
      box(height: 9.5pt)[
        #grid(rows: (1fr), columns: (auto, auto, auto), column-gutter: 1em,
          text()[*#career.position*],
          ..career.websites.map(website => {
            link(website)[#website.replace("https://", "").replace("github.com", "github")]
          })
        )
      ],
      text(dir: direction.rtl)[#career.period, *#career.experience*]
    )
    text()[#career.content]
  })
)
#header("Projects")
#grid(gutter: 1em,
  ..projects.map(project => {
    if(project.link == "") {
      text()[*#project.name*: #project.content]
    } else {
      text()[#link(project.link)[*#project.name*]: #project.content]
    }
  })
)
#header("Achievements")
#grid(gutter: 1em,
  text()[
    - *Pragathi Scholarship* : Awarded for academic performance throughout my college studies.
    - *Leadership*:Worked as Treasurer for the Department of Information Technology at GCT in 2024 and executive member at 94Gctians public charitable Trust.
  ]
)
#header("Education")
#grid(gutter: 1em,
  text(education.institution),
  grid(columns: (2fr, 1fr), gutter: 1em,
  text(education.degree),
  text(education.period, fill: subtext, dir: direction.rtl)
  ),
  text(education.content)
)


