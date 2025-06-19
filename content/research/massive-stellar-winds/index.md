---
title: "Massive Stellar Winds"
date: 2017-03-13T14:03:49Z
institutions: "University of Leeds"
tags: [""]
toc: true
math: true
---

{{<
image src=wr-98a.webp
      credit="DESY, science communication lab"
      creditlink="https://www.desy.de/index_eng.html"
>}}

Colliding Wind Binary systems are exactly what they say they are on the tin, they are a binary system with winds that collide. Typically consisting of an OB+OB or WR+OB pair, these systems are currently difficult to observe in detail, but also extremely difficult to simulate, for the following reasons:

- There is an extremely large difference in scales within the simulation, the maximum bounding box of the simulation can be on the order of a parsec, while important features are sub-AU in scale. 
- The post-shock environment can undergo extremely rapid cooling -- from 10<sup>9</sup> to 10<sup>4</sup> Kelvin -- through plasma cooling in highly metallic flows and dust cooling.
- Accurately simulating outflows and orbits prevents dimensional simplification -- all simulations had to be conducted in 3-D.

Despite these difficulties, the study of these systems is extremely fascinating.
Despite the extremely violent conditions, from hypersonic shocks to extremely bright EUV & X-Ray emission, there is still a clear production of dust in the post-shock outflow.
This is observable as a pronounced infrared excess in the systems spiral-shaped outflow.
This dust production can be periodic or continuous, some systems can produce an excess of dust equivalent to an AGB star, while others produce no measurable amount. Some major outlying questions are:

- What is the formation mechanism of dust, and when does initial nucleation occur?
- How are the nascent dust grains protected from their extremely violent surroundings?

Over the course of this project, I implemented a fast advected scalar dust model that ran inside the open-source astrophysical hydrodynamics code [Athena++](https://www.athena-astro.app/). This dust model is highly extensible and capable of simulating growth, destruction, and cooling of amorphous carbon dust grains within a CWB environment. I hope to extend this work in the future, incorporating more dust evolution mechanisms and refactoring the dust model to behave as its own separate fluid.

<!--more--> 