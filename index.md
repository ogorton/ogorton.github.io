# Oliver C. Gorton

<img src='images/oliver.jpg' width="125" id="profile_pic"/>

ACT Award scholar at Lawrence Livermore National Laboratory\
Ph.D. in Computational Science (Computational Nuclear Physics)


<ogorton@sdsu.edu> \
[Github](https://github.com/ogorton) \
[Google Scholar](https://scholar.google.com/citations?hl=en&user=hSQUrwwAAAAJ) \
ORC ID: [0000-0003-3643-9640](https://orcid.org/0000-0003-3643-9640)


## Research interests

*Nuclear structure and reactions*: beta-delayed neutron emission,
integration of nuclear shell-model and Hauser-Feshbach (statistical)
reactions. *Applications* in related fields: the search for dark matter,
nuclear data and evaluations, uncertainty quantification, machine
learning, high-performance computing.

## Education

-   Ph.D. Computational Science\
    "Shell Model Methods, Statistical Nuclear Reactions, and Beta-delayed
    Neutron Emission"\
    *University of California, Irvine & San Diego State University
    [joint doctoral program](https://computationalscience.uci.edu/)*, 2024. 
    Advisor: Calvin Johnson
-   MS Physics\
    ["Efficient Modeling of Nuclei Through Coupling of Proton and Neutron
    Wavefunctions"](https://csu-sdsu.primo.exlibrisgroup.com/permalink/01CALS_SDL/r45sar/alma991023475280402917)\
    *San Diego State University*, 2018. Advisor: Calvin Johnson
-   BA Physics\
    *University of California, Berkeley*, 2016

## Training and schools

-   Attended "[FRIB-TA Summer School: A practical walk-through formal
    scattering theory](https://fribtascattering.github.io/)", 2021\
    Lectures and hands on exercises in low-energy nuclear scattering
    theory
-   Attended "Agile Development Practices and Tools: A Guided Tour",
    2020\
    Collaborative source control using git, GitHub, and git workflows.
-   Attended "Technical Writing Workshop" at LLNL, 2019

## Awards and support

-   [LLNL SD Academic Collaboration Team University
    Program](https://www.llnl.gov/news/labs-act-awards-focus-collaborative-university-research) (ACT-UP)
    Award (2022, 2023)\
    Full support, university tuition, travel funds, relocation to LLNL 8
    mo./yr.
-   [Graduate "G-STEM"
    Scholarship](https://sites.google.com/sdsu.edu/assics/home) (2018,
    2019)\
    National Science Foundation Program, awarded by Computational
    Science Research Center, San Diego State University\
    Partial support and professional development training.

## Research experience

**Nuclear reactions, data, and theory at Lawrence Livermore National
Laboratory (2018 -- Present)**

-   High Energy Density Physics Intern, Strategic Deterrence (Summer 2018)
    -   Developed code, COMMCAS, to perform uncertainty quantification
        on Hauser-Feshbach code STAPRE.
    -   Applied method to benchmark calculation of surrogate reaction
        method, resulting in conference proceedings \[C3\] listed below.

-   High Energy Density Physics Intern, Strategic Deterrence (Summer 2019)
    -   Further developed and applied COMMCAS for sensitivity analysis
        of surrogate reaction theory, leading to journal paper \[J3\]
        listed below.
    -   Initiated collaboration with experimentalists at U. Notre Dame
        to analyze cross section measurements, leading to journal paper
        \[J4\] listed below.

-   High Energy Density Physics Intern, Strategic Deterrence (Summer 2020)
    -   Further improvements to COMMCAS and integration with various
        nuclear reaction codes including EMPIRE, TALYS, YAHFC.
    -   Found and reported bugs in lab's new reaction code YAHFC
    -   Assisted in feasibility study to determine if and how a
        Livermore C++ physics code could be ported to GPUs.

-   Glenn T. Seaborg Institute (GTSI) Summer Intern, [Seaborg
    Institute](https://seaborg.llnl.gov/) (Summer 2021)
    -   Collaborated with 2021 summer student to integrate COMMCAS with
        Livermore machine learning tool B-DJINN for emulation of
        reaction codes.
    -   Co-refereed an article for Physical Review C

-   [ACT-UP
    Scholar](https://www.llnl.gov/news/labs-act-awards-focus-collaborative-university-research),
    Strategic Deterrence (2022 -- 2023)
    -   Collaborated with 2022 summer student to improve COMMCAS machine
        learning tools with neural networks, contributing to conference
        proceedings \[C2\] listed below.
    -   New predictive capability for reaction and decay properties of
        fission fragments
    -   Implemented shell model methods for computing gamma-ray strength
        functions.

**Nuclear structure and applications at San Diego State University (2016
-- Present)**

-   Masters and Doctoral student with [Calvin
    Johnson](http://sci.sdsu.edu/johnson/)
-   Helped apply quantum information theory to nuclear shell model,
    leading to journal paper \[J1\]
-   Co-developed a truncated shell model code.
    -   Implemented advanced extremal eigenvalue solvers in modern
        Fortran.
    -   Solved several technical problems related to implementing a
        quantum many-body solver.
    -   Parallelized a shell model code using a hybrid MPI and openMP
        approach.
-   Co-developed a nucleus-WIMP scattering code for direct dark matter
    detection experiments, resulting in journal paper \[J2\] listed
    below.

**Intersection of nuclear physics and quantum chemistry at UC, Irvine
(2019-20 academic year)**

-   Graduate Student Visitor, Department of Chemistry, [Furche Research
    Group](https://ffgroup.chem.uci.edu/members/filipp/)\
    Collaborated with chemistry postdoc to develop formalism for
    Nuclear-Electronic Orbital method using time-dependent density
    functional theory.

## Codes

Languages: Modern Fortran, Python (numpy, scipy, MPI4py,
multiprocessing, emcee), Bash, C++\
Technologies: Experienced: MPI, openMP, git; Novice: CUDA, RAJA\
Machines: Borax, Quartz in [LC,
LLNL](https://hpc.llnl.gov/hardware/compute-platforms) facility

**Primary developer of:**

-   **dmscatter** [\[Repository\]](https://github.com/ogorton/dmfortfactor)\
    A fast Fortran code for WIMP-nucleus form factors and differential
    event rate spectra. Modern Fortran with Python interface. OpenMP
    parallel.
    -   Journal publication \[J2\] listed below with multiple citations
    -   Being used and applied in [upcoming
        publication](https://arxiv.org/abs/2305.08991)

-   **PANASh** \[Not yet released\]\
    Proton and neutron approximate shell model code providing advanced
    basis truncation scheme for nuclei away from stability. MPI and
    openMP hybrid parallel.
    -   Motivated by journal publication \[J1\] listed below with
        multiple citations
    -   Has been applied in conference proceedings \[C1\] listed below
    -   Separate Journal publication in progress

-   **COMMCAS** \[Not yet released\]\
    Computational Model Monte Carlo Sampler: Uncertainty quantification
    framework originally designed for Hauser-Feshbach statistical decay
    codes, now provides generic data-fitting, uncertainty
    quantification, and neural-network-emulation tools for physics
    codes. MPI and multiprocessing parallel.
    -   Actively in use at LLNL for uncertainty quantification in:
        -   Surrogate reaction theory
        -   Optical model potentials
    -   Has been applied in Journal papers \[J3, J4\], and Conference
        proceedings \[C2, C3\]

-   **Wigner** [\[Repository\]](https://github.com/ogorton/wigner)\
    A library of functions for computation of Wigner 3-j, 6-j and 9-j
    symbols, written in modern Fortran.

## Journal papers

1.  [Proton-neutron entanglement in the nuclear shell
    model](https://doi.org/10.1088/1361-6471/acbece)\
    C. W. Johnson and O. C. Gorton\
    *Journal of Physics G: Nuclear and Particle Physics 50 (4)
    045110 (2023) \|*
    [arXiv:2210.14338](http://arxiv.org/abs/2210.14338)
2.  [dmscatter: A Fast Program for WIMP-Nucleus
    Scattering](https://doi.org/10.1016/j.cpc.2022.108597)\
    O. Gorton, C. Johnson, C. Jiao, J. Nikoleyczik\
    *Computer Physics Communications 284, 108597 (2023)* \|
    [arXiv:2209.09187](https://arxiv.org/abs/2209.09187)
3.  [Cross sections for neutron-induced reactions from surrogate data:
    Reexamining the Weisskopf-Ewing approximation for (n,n') and (n,2n)
    reactions](https://doi.org/10.1103/PhysRevC.107.044612)\
    O. C. Gorton and J. E. Escher\
    *Physical Review C: Nuclear Physics 107 (4), 044612 (2023)* \|
    [arXiv:2102.03452](https://arxiv.org/abs/2102.03452)
4.  [Measurements of proton capture in the A=100-110 mass region:
    Constraints of the 111In(gamma,p)/(gamma,n) branching point relevant
    to the
    gamma-process](https://journals.aps.org/prc/abstract/10.1103/PhysRevC.102.055806)\
    O. Olivas-Gomez, A. Simon, O. Gorton, J. E. Escher et al. \
    *Physical Review C: Nuclear Physics 102 (5), 055806 (2020)*

## Conference proceedings

1.  [A Problem in the Statistical Description of Beta-Delayed Neutron
    Emission](https://doi.org/10.1051/epjconf/202328403013)\
    O. Gorton, C. Johnson, and J. Escher\
    *EPJ Web of Conferences 284, 03013 (2023)* \|
    [arXiv:2210.05904](https://arxiv.org/abs/2210.05904)
2.  [Improving nuclear data evaluations with predictive reaction theory
    and indirect
    measurements](https://doi.org/10.1051/epjconf/202328403012)\
    J. Escher, K. Bergstrom, E. Chimanski, O. Gorton, E. J. In, M.
    Kruse, S. Peru, C. Pruitt, R. Rahman, E. Shinkle, A. Thapa, W.
    Younes\
    *EPJ Web of Conferences 284, 03012 (2023)* \|
    [arXiv:2304:10034](https://doi.org/10.48550/arXiv.2304.10034)
3.  [Neutron capture cross sections from surrogate reaction data and
    theory: connecting the pieces with a Markov-Chain Monte Carlo
    approach](https://doi.org/10.1007/978-3-030-58082-7_28)\
    O. Gorton and J. E. Escher\
    *Springer Proceedings in Physics, vol 254, pages 229-231 (2021)* \|
    [arXiv:1905:03055](https://arxiv.org/abs/1905.03055)

## Contributed talks

1.  [Gamma-ray strength functions using approximate shell model
    calculations](https://ogorton.github.io/talks/gorton_t3_2023_LLNL-PRES-853425.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Talk at T3 "Taking the Temperature" Workshop on Statistical Nuclear Physics
    for Astrophysics and Applications (Ohio University, August 2023)
2.  [Nuclear Shell Model to the Rescue: Efforts to Resolve a Mystery in
    Beta Delayed Neutron
    Emission](https://ogorton.github.io/talks/gorton_dnp22.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Talk at APS Division of Nuclear Physics Fall 2022 Meeting (New
    Orleans, October 2022)
3.  [Crisis in Beta-Delayed Neutron Emission: Shell Model to the
    Rescue](https://ogorton.github.io/talks/gorton_nd22.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Talk at Nuclear Data Conference (Sacramento -- virtual, July 2022)
4.  [DMFortFactor: A Fast and Accessible for Computing
    WIMP-Nucleus-Scattering
    Event-Rates](https://ogorton.github.io/talks/gorton_dnp21.pdf)\
    O. Gorton, C. Johnson, C. Jiao\
    Talk at DNP21 APS Conference (Boston -- virtual, October 2021)
5.  [Better MCMC for Nuclear Data using emcee and
    B-DJINN](https://ogorton.github.io/talks/gorton_llnl21.pdf)\
    O. C. Gorton, J. E. Escher, K. O. Bergstrom, M. K. Kruse\
    Talk at LLNL Summer Slam (Livermore, August 2021)
6.  [Nuclear Physics for
    WIMPs](https://ogorton.github.io/talks/gorton_csrc21.pdf)\
    O. Gorton and C. W. Johnson\
    Talk at SDSU SIAM Student Chapter Summer Colloquium Series, (San
    Diego, July 2021)
7.  [Cross subsections for neutron reactions from surrogate
    measurements: Revisiting the Weisskopf-Ewing
    approximation](https://ogorton.github.io/talks/gorton_dnp20.pdf)\
    O. Gorton and J. E. Escher\
    Talk at DNP20 APS Conference (New Orleans -- virtual, October 2020)
8.  [Can we get rid of the
    theorists?](https://ogorton.github.io/talks/gorton_llnl20.pdf)\
    O. Gorton and J. E. Escher\
    Talk at LLNL Summer Slam (Livermore, August 2020)
9.  [Big Picture and Background for Nuclear-Electronic Orbital (NEO)
    Approach: Calculating Mixed Nucleon-Electron Wave
    Functions](https://ogorton.github.io/talks/gorton_uci20.pdf)\
    O. Gorton\
    Seminar for the Furche Group, Chemistry Department, UC Irvine
    (Irvine, March 2020)
10. [Indirect measurements of nuclear cross subsections: tempering
    experimental results with
    theory](https://ogorton.github.io/talks/gorton_llnl19b.pdf)\
    O. Gorton and J. E. Escher\
    Seminar for HEDP Intern Exit Talk (Livermore, September 2019)
11. [A Markov Chain Monte Carlo Tool for Hauser-Feshbach
    Codes](https://ogorton.github.io/talks/gorton_llnl18.pdf)**\
    **O. Gorton and J.E. Escher\
    Seminar for HEDP Intern Exit Talk (Livermore, August 2018)

## Posters

1.  [Proton and Neutron Approximate Shell Model: Factorization-based
    Importance
    Truncation](https://ogorton.github.io/posters/gorton_ns22.pdf)\
    O. Gorton, C. Johnson, J. Escher\
    Poster at Nuclear Structure Conference (Berkeley, June 2022)
2.  [Sensitivity Study of the Surrogate
    Method](https://ogorton.github.io/posters/gorton_llnl19a.pdf)\
    O. Gorton and J. E. Escher\
    Poster at LLNL Student Poster Symposium (Livermore, August 2019)
3.  [Temperature and Entropy in the Nuclear Shell
    Model](https://ogorton.github.io/posters/gorton_csrc19.pdf)\
    O. Gorton and C. W. Johnson\
    Poster at SDSU ACCESS event (San Diego, April 2019)
4.  [Proton Neutron Interacting Shell Model: Order of Magnitude
    Reduction for Medium Mass
    Nuclei](https://ogorton.github.io/posters/gorton_sdsu19.pdf)\
    O. Gorton and C. Johnson\
    Poster at SDSU annual research symposium (San Diego, March 2019)
5.  [Neutron capture cross subsections from surrogate reaction data and
    theory: connecting the pieces with a Markov-Chain Monte Carlo
    approach](https://ogorton.github.io/posters/gorton_cnr18.pdf)\
    O. Gorton and J. E. Escher\
    Poster at Compound Nuclear Reactions
    conference [CNR18](https://indico.bnl.gov/event/4158) (Berkeley,
    September 2018)

## Teaching

-   Graduate Teaching Associate for intro physics lab courses (2016 -
    2020)\
    San Diego State University, Department of Physics
    -   Independently lead lectures and exams
    -   Co-authored [the department-wide
        manual](https://docs.google.com/document/d/1pejqikoYhlaIMhSzBzUzrnh2hDrC_q-bEcJCeflpX7w/edit?usp=sharing) for
        Physics 182A/195L Laboratory
