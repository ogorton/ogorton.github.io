# Oliver Gorton

Postdoctoral Research Staff\
Nuclear Data and Theory Group\
Lawrence Livermore National Laboratory

[Github](https://github.com/ogorton) \
[Google Scholar](https://scholar.google.com/citations?user=jaCfxjgAAAAJ&hl=en&oi=ao) \
ORC ID: [0000-0003-3643-9640](https://orcid.org/0000-0003-3643-9640)

[Interests](#interests) • 
[Education](#education) •
[Experience](#experience)\
[Service](#service) •
[Training](#training)\
[Codes](#codes) •
[Publications](#publications) •
[Presentations](#presentations) \

[Shell model dimensions](nuclearchart.html)


## Research


I develop theory and codes to improve our understanding of nuclear physics as it
relates to astrophysics and nuclear technologies, two fields which test our
understanding of matter in neutron-rich environments.

*Fundamental nuclear physics*: advancing the nuclear structure and reaction
theory which gov- erns the interaction of neutrons and radiation with matter.

*Nuclear data*: strengthening nuclear data libraries with physics models and
robust uncertainty quantification to empower inference from multi-physics
simulations.

*High energy-density (HED) science*: learning to run HYDRA simulations of NIF
implosions to investigate utility of future HED facilities for national
security.


## Education


-   Ph.D. Computational Science, 2024\
    ["Shell Model Methods, Statistical Nuclear Reactions, and Beta-delayed
    Neutron Emission"](https://escholarship.org/uc/item/3ns8f1r8)\
    *University of California, Irvine*\
    *San Diego State University [joint doctoral program](https://computationalscience.uci.edu/)*\
-   M.S. Physics, 2018\
    ["Efficient Modeling of Nuclei Through Coupling of Proton and Neutron
    Wavefunctions"](https://csu-sdsu.primo.exlibrisgroup.com/permalink/01CALS_SDL/r45sar/alma991023475280402917)\
    *San Diego State University*\
-   B.A. Physics, 2016\
    *University of California, Berkeley*


## Experience


-   Postdoctoral Research Staff, 2024 -- present\
    Nuclear Data and Theory Group, Lawrence Livermore National Laboratory (LLNL)
    - Investigating the effects of fundamental nuclear physics uncertainty
      on neutron-capture rates, and the resulting impact on astrophysical
      formation of heavy elements
    - Developing theory and codes to model radiative decay of highly-excited
      nuclei
    - Developing and applying robust statistical inference tools to bolster
      LLNL nuclear data libraries
- [Weapon Physics and Design ACT Scholar](https://www.llnl.gov/news/labs-act-awards-focus-collaborative-university-research), 2022 -- 2024\
Nuclear Data and Theory Group, LLNL\
New predictive capability for reaction and decay properties of fission
fragments:
    - Proposed solution for under-prediction of beta-delayed photons from
      fission fragments
    - Combined shell model and Hauser-Feshbach calculations to model
      beta-delayed reactions
    - Wrote shell model code PANASh (weak-entanglement approximation) to
      reduced compute costs
    - Devised approximation of Porter-Thomas fluctuations for modeling
      beta-delayed processes
    - 5 publications, 5 conference talks, defended Ph.D. dissertation at
      LLNL
- Glenn T. Seaborg Institute (GTSI) Graduate Intern, Summer 2021\
Nuclear Data and Theory Group, LLNL
    - Applied statistical inference code to analyze reaction experiment,
      resulting in
      [publication](https://journals.aps.org/prc/abstract/10.1103/PhysRevC.102.055806)
    - Supported machine learning effort for surrogate reaction analysis,
      resulting in
      [proceedings](https://doi.org/10.1051/epjconf/202328403012)
- High Energy Density Physics Graduate Intern, Summer 2018, 2019, and
2020\
Nuclear Data and Theory Group, LLNL
    - Developed statistical inference code COMMCAS for nuclear data,
      resulting in
      [proceedings](https://doi.org/10.1007/978-3-030-58082-7_28)
    - Demonstrated theoretical limitations of experimental technique,
      resulting in
      [publication](https://doi.org/10.1103/PhysRevC.107.044612)
    - Identified bugs and performance improvements for LLNL nuclear reaction
      code, YAHFC
- Graduate Teaching Associate, 2016 -- 2020\
Department of Physics, San Diego State University
    - Independently taught undergraduate physics lab-courses
    - Co-authored the department [manual for Physics 182A/195L laboratory
      courses](https://docs.google.com/document/d/1pejqikoYhlaIMhSzBzUzrnh2hDrC_q-bEcJCeflpX7w/edit?usp=sharing)

[back to top](#oliver-gorton)

## Service 

Service and outreach activities:

- Coding Mentor for “Coding with LLNL” at Christensen Middle School, 2025-26
- Co-organizer for CENTAUR 2026 meeting at LLNL
- LLNL Institutional Computing Grand Challenge Committee Fall 2025
- Referee for Physical Review C

## Training 

Selected workshops and formal training attendance:

- “Making the most of your presentation” training by Jean-Luc Doumont (2025)
- “FIESTA 2024”, Fission Experiments and Theoretical Advances (FIESTA), a fission-focused
school and workshop at LANL
- “Technical Writing Workshop” at LLNL (2019)

## Codes 

I am the primary developer of these codes:

- **COMMCAS** *Python* [LLNL-TR-2011377] [Not yet public]\
Uncertainty quantification and statistical inference framework for nuclear physics models
    - Monte-Carlo, Importance Sampling, MCMC, forward propagation methods
    - Provides generic model wrapper with user-friendly abstractions of model
      inputs/outputs, experimental data, unknown sources of uncertainty, and
      more
- **PANASh** *Fortran* [[Publication]](https://doi.org/10.1103/PhysRevC.110.034305) [Not yet public]\
Shell model code with advanced basis-reduction scheme to compute nuclear wave functions
    - Custom Krylov-subspace algorithms (block Lanczos with on-the-fly matrix elements)
    - MPI and openMP hybrid parallelization
- **dmscatter** *Fortran and Python* [[Publication]](https://doi.org/10.1016/j.cpc.2022.108597) [[Repository]](https://github.com/ogorton/dmfortfactor)\
A fast Fortran code for WIMP-nucleus form factors and differential event rate spectra. Modern Fortran with Python interface. OpenMP parallel.
- **Wigner** *Fortran* [Repository](https://github.com/ogorton/wigner)\
A library of functions for computing vector-coupling coefficients, written in modern Fortran.

[back to top](#oliver-gorton)

## Publications

21 publications (9 journal papers, 8 conference proceedings, 4 technical
reports)

### Journal papers


-   [Radiative strength functions from the energy-localized Brink-Axel
    hypothesis](https://doi.org/10.1103/kg6r-t5d1)\
    O. Gorton, K. Kravvaris, J. Escher, C. Johnson\
    [Editor's Suggestion] -- *Physical Review C 113, 044327 (2026)* |
    [arXiv:2601.12225](https://arxiv.org/abs/2601.12225)
-   [Constraining capture cross sections using proton inelastic scattering as a
    surrogate reaction](https://doi.org/10.1016/j.physletb.2026.140433)\
    A. Thapa, J. Escher, E. Chimanski, O. Gorton, M. Dupuis, E.J. In, S. Ota, S.
    Peru, W. Younes\
    *Physics Letters B 876, 140322 (2026)* | 
    [arXiv:2511.03071](https://arxiv.org/abs/2511.03071)
-   Correlated and uncorrelated Monte Carlo neutron capture rate variations in
    weak r-process simulations\
    A. Kedia, J. Berryman, J. Garcia, J. Escher, O. Gorton, E. Holmbeck, 
    G. McLaughlin, C. Pruitt, A. Sieverding, R. Surman\
    *Submitted to Physical Review C* |
    [arXiv:2602.12428](https://arxiv.org/abs/2602.12428)
-   [Towards shell model interactions with credible uncertainties](https://doi.org/10.1103/fzxv-4q1r)\
    O. C. Gorton and K. Kravvaris\
    *Physical Review C 112, 014302 (2025)* |
    [arXiv:2503.11889](https://arxiv.org/abs/2503.11889)
-   [Weak entanglement approximation for nuclear
    structure](https://journals.aps.org/prc/abstract/10.1103/PhysRevC.110.034305)\
    O. C. Gorton and C. W. Johnson\
    *Physical Review C 110, 034305 (2024)* \| 
    [arXiv:2406.10120](https://arxiv.org/abs/2406.10120)
-   [Proton-neutron entanglement in the nuclear shell
    model](https://doi.org/10.1088/1361-6471/acbece)\
    C. W. Johnson and O. C. Gorton\
    *Journal of Physics G: Nuclear and Particle Physics 50 (4)
    045110 (2023)* \|
    [arXiv:2210.14338](http://arxiv.org/abs/2210.14338)
-   [dmscatter: A fast program for WIMP-nucleus
    scattering](https://doi.org/10.1016/j.cpc.2022.108597)\
    O. Gorton, C. Johnson, C. Jiao, J. Nikoleyczik\
    *Computer Physics Communications 284, 108597 (2023)* \|
    [arXiv:2209.09187](https://arxiv.org/abs/2209.09187)
-   [Cross sections for neutron-induced reactions from surrogate data:
    Reexamining the Weisskopf-Ewing approximation for (n,n') and (n,2n)
    reactions](https://doi.org/10.1103/PhysRevC.107.044612)\
    O. C. Gorton and J. E. Escher\
    *Physical Review C: Nuclear Physics 107 (4), 044612 (2023)* \|
    [arXiv:2102.03452](https://arxiv.org/abs/2102.03452)
-   [Measurements of proton capture in the A=100-110 mass region:
    Constraints of the 111In(gamma,p)/(gamma,n) branching point relevant
    to the
    gamma-process](https://journals.aps.org/prc/abstract/10.1103/PhysRevC.102.055806)\
    O. Olivas-Gomez, A. Simon, O. Gorton, J. E. Escher et al. \
    *Physical Review C: Nuclear Physics 102 (5), 055806 (2020)*


### Conference papers

-   From credible shell model interactions to neutron-capture uncertainties\
    O. Gorton and K. Kravvaris\
    *To be submitted European Physical Journal, Web of Conferences (2026)* |
    [arXiv:2604:09935](https://doi.org/10.48550/arXiv.2604.09935)
-   [A weak entanglement approximation for nuclear structure: a progress report](https://doi.org/10.1016/j.jspc.2025.100061)\
    C. Johnson and O. Gorton\
    *Journal of Subatomic Particles and Cosmology, 100061 (2025)* | [arXiv:2504.00273](https://doi.org/10.48550/arXiv.2504.00273)
-   [Correcting for neutron width fluctuations in Hauser-Feshbach gamma
    branching ratios](https://doi.org/10.1051/epjconf/202532202004)\
    O. Gorton and J. Escher\
    *EPJ Web of Conferences 322, 02004 (2025)* \|
    [arXiv:2410.01074](https://arxiv.org/abs/2410.01074)
-   [Extending the Dispersive Optical Model to Beta-unstable Systems](https://doi.org/10.1051/epjconf/202532205001)\
    C. Pruitt, S. S. Perrotta, J. Escher, O. Gorton\
    *EPJ Web of Conferences 322, 05001 (2025)*
-   [Towards next-generation optical potentials for nuclear reactions and structure calculations](https://doi.org/10.1016/j.nuclphysa.2025.123037)\
    S. S. Perrotta, C. Priutt, O. Gorton, and J. Escher\
    *Nuclear Physics A 1057, 123037 (2025)* \|
    [arXiv:2410.19269](https://arxiv.org/abs/2410.19269)
-   [A Problem in the Statistical Description of Beta-Delayed Neutron
    Emission](https://doi.org/10.1051/epjconf/202328403013)\
    O. Gorton, C. Johnson, and J. Escher\
    *EPJ Web of Conferences 284, 03013 (2023)* \|
    [arXiv:2210.05904](https://arxiv.org/abs/2210.05904)
-   [Improving nuclear data evaluations with predictive reaction theory
    and indirect
    measurements](https://doi.org/10.1051/epjconf/202328403012)\
    J. Escher, K. Bergstrom, E. Chimanski, O. Gorton, E. J. In, M.
    Kruse, S. Peru, C. Pruitt, R. Rahman, E. Shinkle, A. Thapa, W.
    Younes\
    *EPJ Web of Conferences 284, 03012 (2023)* \|
    [arXiv:2304:10034](https://doi.org/10.48550/arXiv.2304.10034)
-   [Neutron capture cross sections from surrogate reaction data and
    theory: connecting the pieces with a Markov-Chain Monte Carlo
    approach](https://doi.org/10.1007/978-3-030-58082-7_28)\
    O. Gorton and J. E. Escher\
    *Springer Proceedings in Physics, vol 254, pages 229-231 (2021)* \|
    [arXiv:1905:03055](https://arxiv.org/abs/1905.03055)


### Technical reports

- From new measurements to new data libraries: The LLNL nuclear data pipeline at work
  M. Anastasiou, B. Beck, R. Casperson, M.-A. Descalle, J. Escher, O. Gorton, K. Kravvaris, C.
  Mattoon, M. Mendenhall, W. Ormand, G. Potel Aguilar, S. Quaglioni, A. Sieverding, L. Snyder, I.
  Thompson, and K. Wendt\
  Internal working document
- COMMCAS: Computational Model Monte Carlo Sampler\
  O. Gorton, J. Escher, S. Perrotta, C. Pruitt, A. Thapa, V. Kruse, E. Shinkle, M. Paik, and H. Frye\
  LLNL-TR-2011377-DRAFT
- [Evaluations for neutron-induced activation cross sections for Y and Zr isotopes](https://doi.org/10.2172/2997578)\
  A. Sieverding, R. Hoffman, O. Gorton, and W. Ormand\
  LLNL-TR-2011750
- [Computational Workflows for Uncertainty-Quantified Nuclear
  Reactions](https://doi.org/10.2172/3022089)\
  J. Berryman, C. Pruitt, J. Escher, O. Gorton, E. M. Holmbeck, K. Kravvaris, A. Sieverding, et al.\
  LLNL-TR-2015691
- Final Technical Report: New predictive capability for reaction and decay properties of fission
  fragments (ACT University Program)\
  O. Gorton, H. Frye, C. Johnson, and J. Escher\
  LLNL-MI-2003179 (Internal report avilable upon request)

[back to top](#oliver-gorton)

## Presentations

2 invited talks, 17 contributed talks, 6 posters

### Invited talks

-   Reduced-order models to accelerate uncertainty quantification: from shell
    model to neutron capture\
    O. Gorton\
    FRIB-TA Topical Program: Statistical Nuclear Properties in the AI/ML Era: Advances, Chal-
    lenges, and Synergies for FRIB Science – East Lancing, Michigan, Scheduled July 2026
-   Radiative strength functions from the energy-localized Brink-Axel
    hypothesis\
    O. Gorton\
    10th Workshop on Level Densities and Gamma Strengths – Oslo, Norway, Scheduled May 2026

### Contributed talks

-   [Nuclear theory for astrophysics and nuclear
    technologies](https://ogorton.github.io/talks/gorton_plsseminar26.pdf)\
    O. Gorton\
    PLS Directorate Postdoctoral Seminar (LLNL, February 2026)\
-   [Radiative strength functions from the energy-localized Brink-Axel
    hypothesis](https://ogorton.github.io/talks/gorton_comex8.pdf)\
    O. Gorton, K. Kravvaris, J. Escher, C. Johnson\
    Talk at the 8th International Conference on Collective Motion in Nuclei
under Extreme Conditions (Tallahassee, December 2025)\
-   [Shell model for astrophysics and nuclear 
    technologies](https://ogorton.github.io/talks/gorton_nd2025.pdf)\
    O. Gorton\
    Talk at 16th Nuclear Data for Science and Technology Conference (Madrid,
    June 2025)\
-   [Is the USDB interaction unique?](https://ogorton.github.io/talks/gorton_apsmarch25.pdf)\
    O. Gorton\
    Talk at APS Global Physics Summit (Anaheim, March 2025)\
-   [A weak entanglement approximation for nuclear 
    structure](https://ogorton.github.io/talks/gorton_sm75.pdf)\
    O. Gorton and C. Johnson\
    Talk at Shell Model Symposium: Celebrating 75 Years of the Nuclear Shell
    Model and Maria Goeppert-Mayer (Argonne National Lab., July 2024)\
-   [Missing gammas: beta-delayed neutron emission of
    Rb-94](https://ogorton.github.io/talks/gorton_apsapril24.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Talk at APS April 2024 Meeting (Sacramento, April 2024)\
-   [Gamma-ray strength functions using approximate shell model
    calculations](https://ogorton.github.io/talks/gorton_t3_2023_LLNL-PRES-853425.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Talk at T3 "Taking the Temperature" Workshop on Statistical Nuclear Physics
    for Astrophysics and Applications (Ohio University, August 2023)
-   [Nuclear Shell Model to the Rescue: Efforts to Resolve a Mystery in
    Beta Delayed Neutron
    Emission](https://ogorton.github.io/talks/gorton_dnp22.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Talk at APS Division of Nuclear Physics Fall 2022 Meeting (New
    Orleans, October 2022)
-   [Crisis in Beta-Delayed Neutron Emission: Shell Model to the
    Rescue](https://ogorton.github.io/talks/gorton_nd22.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Talk at Nuclear Data Conference (Sacramento -- virtual, July 2022)
-   [DMFortFactor: A Fast and Accessible for Computing
    WIMP-Nucleus-Scattering
    Event-Rates](https://ogorton.github.io/talks/gorton_dnp21.pdf)\
    O. Gorton, C. Johnson, C. Jiao\
    Talk at DNP21 APS Conference (Boston -- virtual, October 2021)
-   [Better MCMC for Nuclear Data using emcee and
    B-DJINN](https://ogorton.github.io/talks/gorton_llnl21.pdf)\
    O. C. Gorton, J. E. Escher, K. O. Bergstrom, M. K. Kruse\
    Talk at LLNL Summer Slam (Livermore, August 2021)
-   [Nuclear Physics for
    WIMPs](https://ogorton.github.io/talks/gorton_csrc21.pdf)\
    O. Gorton and C. W. Johnson\
    Talk at SDSU SIAM Student Chapter Summer Colloquium Series, (San
    Diego, July 2021)
-   [Cross subsections for neutron reactions from surrogate
    measurements: Revisiting the Weisskopf-Ewing
    approximation](https://ogorton.github.io/talks/gorton_dnp20.pdf)\
    O. Gorton and J. E. Escher\
    Talk at DNP20 APS Conference (New Orleans -- virtual, October 2020)
-   [Can we get rid of the
    theorists?](https://ogorton.github.io/talks/gorton_llnl20.pdf)\
    O. Gorton and J. E. Escher\
    Talk at LLNL Summer Slam (Livermore, August 2020)
-   [Big Picture and Background for Nuclear-Electronic Orbital (NEO)
    Approach: Calculating Mixed Nucleon-Electron Wave
    Functions](https://ogorton.github.io/talks/gorton_uci20.pdf)\
    O. Gorton\
    Seminar for the Furche Group, Chemistry Department, UC Irvine
    (Irvine, March 2020)
-   [Indirect measurements of nuclear cross subsections: tempering
    experimental results with
    theory](https://ogorton.github.io/talks/gorton_llnl19b.pdf)\
    O. Gorton and J. E. Escher\
    Seminar for HEDP Intern Exit Talk (Livermore, September 2019)
-   [A Markov Chain Monte Carlo Tool for Hauser-Feshbach
    Codes](https://ogorton.github.io/talks/gorton_llnl18.pdf)**\
    **O. Gorton and J.E. Escher\
    Seminar for HEDP Intern Exit Talk (Livermore, August 2018)


### Posters


-   [Width Fluctuation Correction Factor for Beta-delayed Neutron
    Emission](https://ogorton.github.io/posters/gorton_cnr24.pdf)\
    O. Gorton, J. Escher\
    Poster at the 7th international workshop on Compound-Nuclear Reactions and
    Related Topics (Vienna, July 2024)
-   [Proton and Neutron Approximate Shell Model: Factorization-based
    Importance
    Truncation](https://ogorton.github.io/posters/gorton_ns22.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Poster at Nuclear Structure Conference (Berkeley, June 2022)
-   [Sensitivity Study of the Surrogate
    Method](https://ogorton.github.io/posters/gorton_llnl19a.pdf)\
    O. Gorton and J. E. Escher\
    Poster at LLNL Student Poster Symposium (Livermore, August 2019)
-   [Temperature and Entropy in the Nuclear Shell
    Model](https://ogorton.github.io/posters/gorton_csrc19.pdf)\
    O. Gorton and C. W. Johnson\
    Poster at SDSU ACCESS event (San Diego, April 2019)
-   [Proton Neutron Interacting Shell Model: Order of Magnitude
    Reduction for Medium Mass
    Nuclei](https://ogorton.github.io/posters/gorton_sdsu19.pdf)\
    O. Gorton and C. Johnson\
    Poster at SDSU annual research symposium (San Diego, March 2019)
-   [Neutron capture cross subsections from surrogate reaction data and
    theory: connecting the pieces with a Markov-Chain Monte Carlo
    approach](https://ogorton.github.io/posters/gorton_cnr18.pdf)\
    O. Gorton and J. E. Escher\
    Poster at Compound Nuclear Reactions
    conference [CNR18](https://indico.bnl.gov/event/4158) (Berkeley,
    September 2018)

[back to top](#oliver-gorton)
