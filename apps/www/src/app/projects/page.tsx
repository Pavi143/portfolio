import { Button, Container } from "@mui/material"
import { cn } from "cn-func"
import Image from "next/image"
import flutterImage from "@/assets/flutter-svgrepo-com.svg"
import reactImage from "@/assets/react-svgrepo-com.svg"
import grafanaImage from "@/assets/grafana-svgrepo-com.svg"
import nextjsImage from "@/assets/nextjs-icon-svgrepo-com(1).svg"
import keycloakImage from "@/assets/keycloak-svgrepo-com.svg"
import expoImage from "@/assets/expo-svgrepo-com(1).svg"
import archImage from "@/assets/arch-linux-svgrepo-com.svg"
import nixImage from "@/assets/nix-svgrepo-com.svg"
import goImage from "@/assets/go-svgrepo-com.svg"

import { getRandomColor } from "@/lib/helpers"

const ProjectCard = ({ project }: { project: Project }) => {
    return <div style={{ borderColor: `hsl(var(--twc-${getRandomColor()}))` }} className="w-full flex flex-row gap-4 bg-mantle hover:bg-base border border-solid rounded-3xl p-4 h-[475px]">
        <Image src={project.thumbNail} width={80} height={80} className={cn("object-cover", project.thumbNailClassName)} alt="" />
        <div className="flex-grow flex flex-col gap-4">
            <div className="w-full flex flex-col justify-center gap-2">
                <p className="text-xl font-bold">{project.title}</p>
                <p className="text-subtext0">{project.subTitle}</p>
                {project.github && <Button className="rounded-full self-start" href={project.github}>GitHub</Button>}
            </div>
            <div className="flex-grow flex flex-col gap-4 justify-between">
                <p className="">{project.description}</p>
                <div className="flex flex-col gap-4">
                    <div className="flex gap-4">
                        {project.icons.map((icon, i) => <Image style={{ borderColor: `hsl(var(--twc-${getRandomColor()}))` }}
                            key={i} src={icon} alt={icon} width={48} height={48} className={cn("p-2 rounded-full border border-solid bg-base")}
                        />)}
                    </div>
                </div>
            </div>
        </div>
    </div>
}

export default function ProjectsPage() {
    return <Container className="flex flex-col gap-12 py-4">
        {sections.map((section, i) => <div key={i} className="flex flex-col gap-12 py-4">
            <div className="flex flex-col gap-4">
                <p className="text-3xl font-bold"> {section.title} </p>
                <p>{section.description}</p>
            </div>
            <div className="w-full grid grid-cols-1 md:grid-cols-2 gap-4">
                {section.projects.map((project, j) => <ProjectCard key={j} project={project} />)}
            </div>
        </div>)}
    </Container>
}


const projects: Project[] = [
    {
        title: "Golox",
        subTitle: "Go implementation of the lox programming language",
        description: "Built from the amazing book craftinginterpreters.com",
        demo: "",
        github: "https://github.com/useEffects/golox",
        icons: [goImage],
        thumbNail: "https://go.dev/doc/gopher/fiveyears.jpg",
        thumbNailClassName: "rounded-full"
    },
    {
        title: "SQlite clone",
        subTitle: "A simple sqlite clone implemnation in python",
        description: "SQLite is a database engine written in the C programming language. It is not a standalone app; rather, it is a library that software developers embed in their apps. As such, it belongs to the family of embedded databases.",
        demo: "",
        github: "https://github.com/coding-club-gct/sqlite-clone",
        icons: [goImage],
        thumbNail: "/images/sqlite.png",
        thumbNailClassName: ""
    },
    {
        title: "Design patterns",
        subTitle: "Collection of blog and design patterns implementation in C++",
        description: "Design patterns are typical solutions to common problemsin software design. Each pattern is like a blueprintthat you can customize to solve a particulardesign problem in your code.",
        demo: "",
        github: "https://github.com/coding-club-gct/design-patterns",
        icons: [goImage],
        thumbNail: "/images/design-patterns.jpg",
        thumbNailClassName: ""
    }
]

const freelanceProjects: Project[] = [
    {
        title: "Designeration Agency",
        subTitle: "A nation of creative thinkers,",
        description: "Designeration focuses on creating effective solutions to creative problems for the demands of the new era. We devote our professional set of skills, relevant education and creativity to help businesses build, maintain and strengthen their brands.",
        demo: "https://designeration.agency",
        github: "",
        icons: [nextjsImage],
        thumbNail: "https://designeration.agency/logo.png",
    },
]

const codingClubProjects = [
    {
        title: "Coding club GCT monorepo",
        subTitle: "5 applications, 1 package",
        description: "Heart of the coding club software development, contains the club homepage website, gallery website, blogs website, theme package and more",
        demo: "",
        icons: [nextjsImage],
        github: "https://github.com/coding-club-gct/front-gate",
        thumbNail: "https://raw.githubusercontent.com/coding-club-gct/front-gate/main/apps/homepage/src/assets/dark.png"
    },
    {
        title: "Algolab",
        subTitle: "leetcode clone",
        description: "Built using Monaco editor, thats powering VS code and a custom judge system that supports compilation of C, C++, Python, Java, and JavaScript, Go and Rust",
        demo: "",
        icons: [nextjsImage],
        github: "https://github.com/coding-club-gct/algolab",
        thumbNail: "https://raw.githubusercontent.com/coding-club-gct/front-gate/main/apps/homepage/src/assets/logos/sd/dark.png"
    },
    {
        title: "Custom Nix profile",
        subTitle: "Nix profile with all the tools you need for development",
        description: "Nix configuration that is powering more than 60 computers in the college.",
        demo: "",
        icons: [archImage, nixImage],
        github: "https://github.com/coding-club-gct/nixos",
        thumbNail: "https://avatars.githubusercontent.com/u/487568?s=200&v=4"
    },
]

const openSourceProjects: Project[] = [
    {
        title: "Catppuccin for flutter",
        subTitle: "🦋 Soothing pastel library for Flutter",
        description: "Catppuccin is a community-driven pastel theme that aims to be the middle ground between low and high contrast themes. It consists of 4 soothing warm flavors with 26 eye-candy colors each, perfect for coding, designing, and much more!",
        demo: "https://pub.dev/packages/catppuccin_flutter",
        icons: [flutterImage],
        github: "https://github.com/catppuccin/flutter",
        thumbNail: "https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png",
    },
    {
        title: "Render react component in Grafana",
        subTitle: "Compiles and eval a react component in runtime",
        description: "No more static panels! Render your react components in Grafana dashboards. This plugin allows you to compile and eval a react component in runtime, enabling you to create dynamic and interactive panels.",
        demo: "",
        icons: [reactImage, grafanaImage],
        github: "https://github.com/useEffects/grafana-render-react",
        thumbNail: "https://raw.githubusercontent.com/grafana/grafana/main/public/img/grafana_icon.svg",
    },
]

export type Project = {
    title: string,
    subTitle: string,
    description: string,
    github: string,
    demo: string,
    icons: any[]
    thumbNail: string,
    thumbNailClassName?: string
}

const sections = [
    {
        title: "Coding Club Projects",
        description: "Explore diverse projects developed during my tenure in the coding club.",
        projects: codingClubProjects
    },
    {
        title: "Freelance Projects",
        description: "Discover a variety of client projects where I delivered tailored solutions.",
        projects: freelanceProjects
    },
    {
        title: "Open Source Projects",
        description: "Contribute and collaborate on open-source initiatives that I've led and contributed to.",
        projects: openSourceProjects
    },
    {
        title: "Personal Projects",
        description: "Explore innovative projects I've personally developed, pushing technological boundaries.",
        projects: projects
    }
]
