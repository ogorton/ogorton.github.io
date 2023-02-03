[Home](../index.html)\
[Notes](../blog.html)

# Basics of vector coupling

## Computing

We implement a standard set of functions and subroutines for computing the
vector-coupling 3-j, 6-j, and 9-j symbols using the Racah alebraic expressions
found in Edmonds[^ed].

[^ed]: The classic book on angular momentum "Angular momentum in quantum
  mechanics" by A.R. Edmonds. Get a free copy 
  [from CERN](https://cds.cern.ch/record/212213/files/p1.pdf). 

For an analysis of relative error compared to more modern methods, see
[arXiv:1504.08329](https://arxiv.org/abs/1504.08329) by H. T. Johansson and C.
Forssen. A more accurate but slower method involves prime factorization of
integers. In old Fortran, see work by [Liqiang Wei: Computer Physics
Communications 120 (1999) 222-230](https://doi.org/10.1016/S0010-4655(99)00232-5).

For the 3-j symbol, we use the relation to the Clebsh-Gordon vector-coupling
coefficients: 
$$
\begin{align*}
    \begin{pmatrix}
        j_1 & j_2 & J\\
        m_1 & m_1 & M
    \end{pmatrix}
    = (-1)^{j_1-j_2-M}(2J+1)^{-1/2}\\ 
    (j_1j_2m_1m_2 | j_1 j_2; J, -M).
\end{align*}
$$
The vector coupling coefficients are computed as:
$$
\begin{align*}
    (j_1j_2 & m_1m_2 | j_1 j_2; J, M) = \delta(m_1+m_1,m) (2J+1)^{1/2}\Delta(j_1j_2J)\\
    & \times[(j_1+m_1)(j_1-m_1)(j_2+m_2)(j_2-m_2)(J+M)(J-M)]^{1/2}\\
    & \times \sum_z (-1)^z \frac{1}{f(z)},
\end{align*}
$$
where 
$$
\begin{align*}
    f(z) &= z!(j_1+j_2-J-z)!(j_1-m_2-z)!\\
    & \times(j_2+m_2-z)!(J-j_2+m_1+z)!(J-m_1-m_2+z)!,
\end{align*}
$$
and 
$$
\begin{align*}
    \Delta(abc) = \left[\frac{(a+b-c)!(a-b+c)!(-a+b+c)!}{(a+b+c+1)!} \right]^{1/2}.
\end{align*}
$$
The sum over $z$ is over all integers such that the factorials are well-defined
(non-negative-integer arguments).

Similarly, for the 6-j symbols:
$$
\begin{align*}
    \begin{Bmatrix}
        j_1 & j_2 & j_3\\
        m_1 & m_1 & m_3
    \end{Bmatrix}
    &= \Delta(j_1j_2j_3)\Delta(j_1m_2m_3)\Delta(m_1j_2m_3)\\
    &\times \Delta(m_1m_2j_3) \sum_z (-1)^z\frac{(z+1)!}{g(z)},
\end{align*}
$$
with 
$$
\begin{align*}
    g(z) &= (\alpha - z)!(\beta-z)!(\gamma-z)!\\
    &\times (z-\delta)!(z-\epsilon)!(z-\zeta)!(z-\eta)!
\end{align*}
$$
$$
\begin{align*}
    \alpha &= j_1+j_1+m_1+m_2 & \beta  &= j_2+j_3+m_2+m_3\\
    \gamma &= j_3+j_1+m_3+m_1 \\
    \delta &= j_1+j_2+j_3 & \epsilon &= j_1+m_2+m_3 \\
    \zeta &= m_1+j_2+m_3 & \eta &= m_1+m_2+j_3.
\end{align*}
$$

For the 9-j symbol, we use the relation to the 6-j symbol:
$$
\begin{align*}
        \begin{Bmatrix}
        j_1 & j_2 & j_3\\
        j_4 & j_5 & j_6\\
        j_7 & j_8 & j_9
    \end{Bmatrix}
    &= \sum_k (-1)^{2k} (2k+1) \\
        &\times \begin{Bmatrix}
        j_1 & j_4 & j_7\\
        j_8 & j_9 & z
        \end{Bmatrix}
        \begin{Bmatrix}
        j_2 & j_5 & j_8\\
        j_4 & z & j_6
        \end{Bmatrix}
        \begin{Bmatrix}
        j_3 & j_6 & j_9\\
        z & j_1 & j_2
        \end{Bmatrix}.        
\end{align*}
$$
The 6-j symbols used to calculate the 9-j symbol are first taken from any
tabulated values. Otherwise, they are computed as previously described.
