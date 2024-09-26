import UIComparisonImg from "@/assets/ui-comparison.png";
import { Button } from "@mui/material";
import Image from "next/image";

const blogs = [
    {
        title: "Building universal applications with Next.js and React Native",
        content: "In this post, I will share our team's design choices in building the web app and mobile apps from a single codebase for a2apoint.com, adhering as much as possible to the DIY principle. Importantly, we've ensured that this approach does not compromise the unique benefits offered by each tech stack, preserving their respective advantages.",
        date: "Jul 2024",
        read: "10 min read",
        href: "https://blogs.codingclubgct.in/useEffects/building-universal-apps",
        cover: UIComparisonImg
    }
]

export const Blogs = () => {
    return <div className="grid grid-cols-2">
        {blogs.map((blog, i) => <div key={i} className="w-full h-full p-4 rounded-3xl bg-mantle flex flex-col gap-4">
            <Image src={blog.cover} alt={`cover for ${blog.title}`} className="w-full h-full" />
            <p className="text-primary text-lg">{blog.title}</p>
            <p className="text-subtext0">{blog.content}</p>
            <Button className="self-start rounded-full" href={blog.href}>Read now</Button>
        </div>)}
    </div>
}
