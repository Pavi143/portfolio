"use client"

import { useEffect, useState } from "react"

export const DocumentTitle = () => {
    const variations = ["_oel", "J_el", "Jo_l", " Joe_", "Joel"];
    const [title, setTitle] = useState("Joel");

    useEffect(() => {
        let index = 0;

        const intervalId = setInterval(() => {
            setTitle(variations[index]);
            index = (index + 1) % variations.length;
        }, 500);

        return () => clearInterval(intervalId);
    }, []);

    return (
        <head>
            <title style={{fontFamily: "monospace"}}>{title}</title>
        </head>
    );
};