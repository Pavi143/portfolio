#let accent = rgb(136, 57, 239)
#let subtext = rgb(76, 79, 105)
#set page("a4", margin: 1cm)
#show heading: set text(fill: black)
#set text(9.75pt)
#show link: set text(fill: rgb(30, 102, 245))
  
#let contactChips = (
  (
    icon: "github-svgrepo-com.svg",
    label: "/useEffects",
    href: "https://github.com/useEffects"
  ),
  (
    icon: "linkedin-svgrepo-com.svg",
    label: "/in/useEffects",
    href: "https://www.linkedin.com/in/useEffects"
  ),
  (
    icon: "email-svgrepo-com.svg",
    label: "joel.sr1024@gmail.com",
    href: "mailto:joel.sr1024@gmail.com"
  ),
  (
    icon: "phone-svgrepo-com.svg",
    label: "+91 860 850 9766",
    href: "tel:+918608509766"
  ),
  (
    icon: "cursor-svgrepo-com.svg",
    label: "joelsamuel.me",
    href: "https://joelsamuel.me"
  ),
  (
    icon: "leetcode-svgrepo-com.svg",
    label: "leetcode/useEffects",
    href: "https://leetcode.com/useEffects"
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
    position: "Founding Engineer (Full time)",
    websites: ("https://a2apoint.com",),
    location: "Remote",
    period: "Apr 2024 - Aug 2024",
    experience: "6 months",
    content: [
      - *Tech stack:* Typescript, Python, React, React Native, Next.js (RSC), Keycloak, Directus, Postgres, Nginx, Docker, blue/green CI/CD.
      - *Single-handedly* engineered the entire technological infrastructure of the business, inception to fruition in just *3 months*.
      // - Find the methodology in my blog post #link("https://blogs.codingclubgct.in/useEffects/building-universal-apps")[here] and the project specifications #link("https://raw.githubusercontent.com/useEffects/a2apoint/main/assets/whitepaper.pdf")[here]. Lead a team of 3 interns.
      - The project includes web app, mobile apps deployed in #link("https://a2apoint.com/android")[Play store] and #link("https://a2apoint.com/ios")[App store], CMS solutions for admins and users, newsletter, user courses, blogs, MFA authentication, in app ads, payment gateways (stripe), realtime chatting, push notifications and much #link("https://raw.githubusercontent.com/useEffects/a2apoint/main/assets/whitepaper.pdf")[more].
      - The closed community app for real estate agents in UAE, is estimated to have atleast *5000 active subscriptions* per month.
    ]
  ),
  (
    company: "Tvarit GmbH",
    position: "Software developer intern",
    websites: ("https://tvarit.com",),
    location: "Remote, Pune",
    period: "Nov 2022 - Feb 2024",
    experience: "1 year 4 months",
    content: [
      - *Tech stack*: Typescript, React, Go, Python, Grafana, AWS, Active Directory.
      - Maintained our internal fork of *Grafana* and added multiple features to it, notably - custom emails, notifications, alerting strategies.
      - Developed a plugin for Grafana that completely *changed* the way frontend is done in the company and soon #link("https://github.com/useEffects/grafana-render-react")[*open sourced*] it.
      - Hands on experience with our *AWS* infra with Lambda, S3, CloudFront, API Gateway, RDS, EKS, CloudWatch, SNS, SQS, IAM; *Notably* - worked in refactoring every lambda functions to a single codebase and deploying it through CloudFormation.
      - Built a queuing service for a proxy API that pre fetches and stores results on our middle server, reducing latency by up to 100%.
    ]
  ),
  (
    company: "TNEA Online, Govt of Tamil Nadu",
    position: "Fullstack dev intern",
    websites: ("https://tneaonline.org",),
    location: "Coimbatore",
    period: "Apr 2022 - Sep 2022",
    experience: "6 months",
    content: [
      - *Tech stack:* Typescript, Next.js, Nest.js, Firebase, Nginx, EC2, MongoDB.
      - Developed a fullstack application to be used by all the colleges *(500+)* in the state to submit their govt. sanctioned student intake with documents for the 2022 academic year.
      - Streamlined the manual data entry of over *200,000 seats* and gathering of over *2000* documents via post, now to be done online.
    ]
  ),
  (
    company: "Coding club gct",
    position: "Board member",
    websites: ("https://codingclubgct.in", "https://github.com/coding-club-gct"),
    location: "Coimbatore",
    experience: "1 year 6 months",
    period: "Aug 2022 - Jan 2024",
    content: [
      - #link("https://github.com/coding-club-gct/front-gate")[*Coding club mono repo*]: The monorepo contains 5 Next.js apps and 1 package *published* #link("https://www.npmjs.com/package/@coding-club-gct/theme")[npm] that showcases our club's integrity in uniform design, code style, theming, maintaing an internal tech stack and much more.
      - #link("https://github.com/coding-club-gct/algolab")[*Algolab*]: Leetcode like platform built using Monaco editor that's powering the VS code and a custom judge system that supports compilation of 6 different languages. Self hosted in our *proxmox* instance and used in conducting fool proof semester examinations.
      - #link("https://github.com/coding-club-gct/nixos")[*Custom nix configuration*]:  Developed a custom nix configuration to manage all computers in our computer labs. Earlier developed a custom #link("https://github.com/useEffects/archlive")[*Arch based distro*] using Archlive, (archived in favour of nix).
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
  content: [ CGPA: 8.64 ]
)

#let projects = (
  (
    name: "Golox",
    link: "https://github.com/useEffects/golox",
    content: [
      Go implementation of the lox interpreter from the amazing book #link("https://craftinginterpreters.com")[crafting interpreters] which used Java. Supports all the features of the original lox language (variables, control flow, functions, classes, inheritance, scoping, closures, error handling, etc).
    ]
  ),
  (
    name: "Blogs",
    link: "https://blogs.codingclubgct.in",
    content: [
      Pulls markdown files from the configured GitHub source and displays the it as blogs, built with the latest *react server components* hence static page generation for every blog post, page. Supports authentication, comments, likes, tags, api and more.
    ]
  ),
  (
    name: "Design patterns",
    link: "https://github.com/coding-club-gct/design-patterns",
    content: [
      Design patterns implementations (C++) and blog. Held seminars and workshop in our club on this topic.
    ]
  ),
  (
    name: "Comic AI",
    link: "",
    content: [
      WIP Research project on single shot autonomous generation of comic books from written narratives using generative AI.
    ]
  )
)

#let skills = (
  (
    name: "Programming languages",
    content: [
      Javascript, Typescript, Python, Go, C, C++, Java, Dart, Bash, SQL, Rust.
    ]
  ),
  (
    name: "Tools",
    content: [
      React, React Native, Next.js, Flutter, Grafana, Linux, Nix, Docker, Git, Github, Nginx, Firebase, NoSQL, AWS, Langchain.
    ]
  )
)

#box(height: 15mm)[
  #grid(columns: (1fr, 1.6fr), gutter: 1em,
    grid(rows: (1fr, 1fr), gutter: 1em,
      text("Joel Samuel Raj A", size: 18pt, tracking: 2pt, weight: 700, font: "New York Extra Large"),
      text("Software developer with proven proficiency in web development. Polyglot and Gen AI enthusiast.", fill: subtext)
    ),
    grid(columns: (1fr, 1fr, 1fr), row-gutter: 1em, column-gutter: 0em,
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
    - Contributor in #link("https://expo.dev")[expo.dev], #link("https://directus.io")[directus.io]; notably made improvements to the websocket authentication in #link("https://github.com/directus/directus")[directus], PR - #link("https://github.com/directus/directus/pull/22888")[#22888] merged.
    - *Member* in #link("https://github.com/catppuccin")[*catppuccin organization*]. Notably, #link("https://github.com/catppuccin/flutter")[catppuccin for flutter] - ports the catppuccin color scheme to the flutter library.
    - Won the state level *Dr. A.P.J Abdul Kalam young achiever* award for my contributions in TNEA online, Govt of Tamil Nadu.
    - *Leadership*: Student representative, Mentor and tutored React.js for juniors and peers, who later secured internships in startups.
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


