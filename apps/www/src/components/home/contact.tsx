import LinkedInIcon from '@mui/icons-material/LinkedIn';
import AlternateEmailIcon from '@mui/icons-material/AlternateEmail';
import PhoneIcon from '@mui/icons-material/Phone';
import GitHubIcon from '@mui/icons-material/GitHub'
import { IconButton } from '@mui/material';

const contactButtons = [
    {
        Icon: LinkedInIcon,
        href: "https://linkedin.com/in/useEffects"
    },
    {
        Icon: GitHubIcon,
        href: "https://github.com/useEffects"
    }, {
        Icon: AlternateEmailIcon,
        href: "mailto:joel.sr1024@gmail.com"
    },
    {
        Icon: PhoneIcon,
        href: "tel:+918608509766"
    }
]

export default function ContactButtons() {
    return <div className="grid grid-cols-2 gap-2">
        {contactButtons.map(({ Icon, href }, i) => <IconButton key={i} href={href} color="primary">
            {<Icon />}
        </IconButton>)}
    </div>
}