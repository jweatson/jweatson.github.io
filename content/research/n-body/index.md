---
title: "<i>N</i>-body simulation of star forming regions"
date: 2023-07-04T13:49:46Z
institutions: "University of Sheffield"
tags: [""]
toc: false
math: false
---

{{<
image src=ngc2164.webp
      credit="Hubble"
      creditlink="https://esahubble.org/images/potw2134a/"
>}}

<sup>26</sup>Al and <sup>60</sup>Fe, and other such Short-Lived Radioisotopes (SLRs) have a significant impact on the formation and evolution of planets. In particular, decay heating from these SLRs provide the bulk of energy for heating and desiccation of volatile-rich planetesimals in the early solar system. The source of these SLRs is contested, however.

The solar system has a significantly higher fraction of both <sup>26</sup>Al and <sup>60</sup>Fe than the surrounding interstellar medium, based on observations in chondritic meteorites ([Kita et al., 2013](https://onlinelibrary.wiley.com/doi/abs/10.1111/maps.12141)).
While potential enrichment mechanisms that occur before star formation such as sequential star formation ([Gounelle & Meynet, 2012](https://www.aanda.org/articles/aa/abs/2012/09/aa19031-12/aa19031-12.html)) have been theorised, as well as mechanisms post-planetary formation such as cosmic ray spallation, these do not match with the estimated initial enrichment levels and homogeneous distribution of isotopes across the solar system. Mechanisms that occur during planet formation appear to be more likely, such as enrichment through stellar winds of massive stars and supernovae.

Over my research I have investigated the efficacy of these post-star-formation methods, such as massive stellar wind and supernovae enrichment, as well as AGB interlopers ([Parker & Schoettler, 2023](https://dx.doi.org/10.3847/2041-8213/ace24a)).
This was achieved through modelling enrichment through wind blown bubbles in _N_-body simulations of varying population densities.
These simulations were performed using the [AMUSE](https://www.amusecode.org) Python framework, with the enrichment model written in [Numba](https://numba.pydata.org) optimised Python running concurrently with the _N_-body and stellar evolution models.

<!--more--> 