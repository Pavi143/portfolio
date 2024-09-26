import { IconButton } from "@mui/material"
import { FastRewind, FastForward } from "@mui/icons-material"

export const webrings = [
    {
        logo: "https://codingclubgct.in/favicon-32x32.png",
        slug: "https://webring.codingclubgct.in/useEffects",
        label: 'Coding club GCT, Coimbatore',
        href: "https://codingclubgct.in"
    }
]

const Webring = ({ logo, slug, label, href }: { logo: string, slug: string, label: string, href: string }) => {
    return <div className="flex gap-1 items-center">
        <IconButton size="small" href={`${slug}/back`} role="link">
            <FastRewind />
        </IconButton>
        <img src={logo} alt={logo} className="w-6 h-6 rounded-full" />
        <IconButton size="small" href={`${slug}/next`} role="link">
            <FastForward />
        </IconButton>
        <a href={href} target="_blank" className="text-sm no-underline">{label}</a>
    </div>
}

export const Webrings = () => <div className="flex flex-col gap-2">
    {webrings.map((webring, i) => <Webring key={i} {...webring} />)}
</div>