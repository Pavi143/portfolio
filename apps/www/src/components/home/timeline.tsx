"use client"

import { Timeline as MuiTimeline, TimelineConnector, TimelineContent, TimelineDot, TimelineItem, TimelineSeparator, timelineItemClasses } from "@/components/muilab"
import { ReactNode } from "react"

const experienceItems = [
    {
        name: "A2A Point",
        website: "https://a2apoint.com",
        role: "Software developer (full time)",
        dates: ["Apr 2024", "June 2024"],
        location: "Sharjah Emirate, UAE (Remote)",
        content: <div className="">
            <p> <strong>Single-handedly</strong> engineered the entire technological infrastructure of the business, driving its transformation from inception to
                fruition in just 3 months. You can find the methodology in my blog post <a href="https://blogs.codingclubgct.in/useEffects/building-universal-apps">here</a> and the project specifications in the whitepaper <a href="https://raw.githubusercontent.com/useEffects/a2apoint/main/assets/whitepaper.pdf">here</a>
            </p>
            <p>The project includes web app, mobile apps deployed in playstore and appstore, CMS solutions for admins and users and much <a href="https://raw.githubusercontent.com/useEffects/a2apoint/main/assets/whitepaper.pdf">here</a></p>
            <p>The closed community app for real estate agents in UAE, is estimated to have atleast 5000 active subscriptions per month.</p>
            <video controls preload="auto" className="w-full my-2" src="https://a2apoint-misc.nyc3.digitaloceanspaces.com/app/Finalized_Out.mp4" />
        </div>
    },
    {
        name: "Tvarit GmbH",
        website: "https://tvarit.com",
        role: "SDE Intern, Infrastructure team, Software Development Internal Team",
        dates: ["Oct 2022", "Mar 2024"],
        location: "Pune, India (Remote)",
        content: <div className="">
            <p>Maintained our internal fork of Grafana and added multiple features to it. (Typescript, Go)</p>
            <p>Developed a plugin for Grafana that completely changed the way frontend is done in the company and soon <a href="https://github.com/useEffects/grafana-render-react">open sourced</a> it.</p>
            <p>Hands on experience with our AWS infrastructure including <strong>fargate, lambda, RDS </strong></p>
        </div>
    },
    {
        name: "Catppuccin",
        website: "https://catppuccin.com",
        role: "Maintainer",
        dates: ["Sep 2023", "Present"],
        location: "International (Remote)",
        content: <div>
            <p>I have actively contributed to several open source projects, including fixing documentation inaccuracies for <a href="https://expo.dev" target="_blank">expo.dev</a>, <a href="https://directus.io" target="_blank">directus.io</a>, and other smaller projects. Notably, I improved the source code of <a href="https://github.com/directus/directus" target="_blank">directus.io</a> (26.5k stars), with my PR <a href="https://github.com/directus/directus/pull/22888" target="_blank">#22888</a> being merged. I also developed and maintain the <a href="https://github.com/catppuccin/flutter" target="_blank">Catppuccin Flutter</a> library, which ports the Catppuccin color scheme to Flutter and is available on <a href="https://pub.dev/packages/catppuccin_flutter" target="_blank">pub.dev</a>. As a full-time maintainer and member of the <a href="https://catppuccin.com" target="_blank">Catppuccin organization</a>, I continue to drive improvements and support the project.</p>
        </div>
    }, {
        name: "Coding Club",
        website: "https://codingclubgct.in",
        role: "Board Member",
        dates: ["Sep 2022", "Mar 2024"],
        location: "Coimbatore",
        content: <div>
            <p>At Coding Club GCT, I spearheaded several key software development initiatives, working closely with my college peers to foster a collaborative and innovative environment.</p>
        </div>
    }, {
        name: "Tamil Nadu Engineering Admissions",
        website: "https://tneaonline.org",
        role: "FullStack Developer Intern",
        dates: ["Apr 2022", "Sep 2022"],
        location: "Coimbatore",
        content: <div>
            <p>Developed a full-stack application for over 500 colleges in the state to submit government-sanctioned student intake data for the 2022 academic year, streamlining the online data entry of over 200,000 seats previously done manually. This project earned the state-level Dr. A.P.J Abdul Kalam Young Achiever Award.</p>
        </div>
    }
]

function TimelineWrapper({ children }: { children: ReactNode }): ReactNode {
    return <MuiTimeline className="!m-0 !p-0" sx={{
        [`& .${timelineItemClasses.root}:before`]: {
            flex: 0,
            padding: 0,
            margin: 0
        },
    }}>
        {children}
    </MuiTimeline>
}

export default function Timeline() {
    return <TimelineWrapper>
        {experienceItems.map((item, key) =>
            <TimelineItem key={key}>
                <TimelineSeparator color="primary">
                    <TimelineDot color="primary" />
                    <TimelineConnector color="secondary" />
                </TimelineSeparator>
                <TimelineContent>
                    <div className="flex flex-col gap-2">
                        <div className="flex justify-between items-center">
                            <p className="text-primary text-lg"> {item.name} </p>
                            <div className="flex gap-2 text-sm text-subtext0">
                                <p> {item.dates[0]} </p>
                                <p> - </p>
                                <p> {item.dates[1]} </p>
                            </div>
                        </div>
                        <div className="flex flex-col gap-2 p-4 rounded-3xl bg-base">
                            <a target="_blank" href={item.website}> {item.website} </a>
                            <p className=""> {item.role} </p>
                            <p className="text-subtext0"> {item.location} </p>
                        </div>
                        <div className="my-2">
                            {item.content}
                        </div>
                    </div>
                    {key !== experienceItems.length - 1 && <div className="w-full h-4"></div>}
                </TimelineContent>
            </TimelineItem>
        )}
    </TimelineWrapper>
}