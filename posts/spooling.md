[Home](../index.html)\
[Notes](../blog.html)

# Spooling n-dimensional arrays

To spool an n-dimensional array into a 1-d array, we need to map an arbitrary
number of indices into a single index $y$:

\begin{align}
    \mathrm{spool}(y) \leftarrow \mathrm{array}[i,j,k,l,m,n,o,p,...],
\end{align}

To create a one-to-one correspondence, we have to assign an order to the $n$
indices:

\begin{align}
    x_n > x_{n-1} > ... > x_1.
\end{align}

Let's further define that each index $x$ runs from $x^{min}$ to $x^{max}$.  At
which point we can use the following mapping:

\begin{align}
    y = x_n + \sum_{i<n} (x_i - x_i^{min})\prod_{j>i}(x_j^{max}-x_j^{min}+1).
\end{align}

This mapping is only unique up to a choice of ordering.

## 2-d example

For example, in a two dimensional array $\mathrm{array}[x_2, x_1]$ where $x_1 =
1, ..., m$, and $x_2 = 0, ..., n-1$:

$$
\begin{align}
    y &= x_2 + (x_1 - 1)(n-1-0+1)\\
    &=x_2 + (x_1-1)n.
\end{align}
$$

We could have also exchanged the ordering of the indices and used:

\begin{align}
    y &= x_1 + (x_2-0)(m-1+1)\\
    &=x_1 + x_2m.
\end{align}


## 3-d example

Suppose a three dimensional array $\mathrm{array}[x_1, x_2, x_3]$ where $x_1 =
1, ..., r$, $x_2 = 0, ..., s$, and $x_3 = 1, ..., 2t$. We take the ordering $x_2
> x_3 > x_1$.

$$
\begin{align}
    y &= x_2 + (x_3-1)(s-0+1) + (x_1-1)(2t-1+1)(s-0+1)\\
    &= x_2 + (x_3-1)(s+1) + (x_1-1)2t(s+1).
\end{align}
$$

Again, changing the ordering will change the expression. This ordering would be
most efficient for a nested loop such as:
```
do x1 = 1, r:
  do x3 = 1, 2t:
    do x2 = 0, s:
      y = x2 + (x3-1)(s+1) + (x1-1)*2*t*(s+1)
      access spool[y]
```
This requires $10(s+1)(2t)r$ integer operations to compute.

## Sectors

The 3-d example in the previous section can be improved by pre-computing parts
of the index further up in the loop hierarchy. 

\begin{align}
    y = x_n + \mathrm{sector}(x_{n-1},...,x_1),
\end{align}
where 
\begin{align}
\text{sector}(x_{n-1},...,x_1) \equiv \sum_{ i < n } (x_i - x_i^{min})\mathrm{sectorsize}(i).
\end{align}

The sectorsize quantities do not depend on the loop variable $x_i$, and can
therefore be pre-computed beforehand:

\begin{align}
   \mathrm{sectorsize}(i) \equiv \prod_{j>i}(x_j^{max}-x_j^{min}+1).
\end{align}

Or, recursively:

\begin{align}
    \mathrm{sectorsize}(i) = (x_i^{max}-x_i^{min}+1) \mathrm{sectorsize}(i-1),
\end{align}

with sectorsize$(1)$ = 1.

## Improved 3-d example

Taking the same 3-d example as before, we can improve the performance by
computing sectors in shallower loops and by pre-computing sector sizes.
Recall that:
\begin{align}
    y = x_2 + (x_3-1)(s+1) + (x_1-1)2t(s+1).
\end{align}
In this case:

```
secsize1 = 1
secsize2 = (s+1) # * secsize1
secsize3 = (2*t) * secsize2

do x1 = 1, r:
  sector1 = (x1 - 1) * secsize3
  do x3 = 1, 2t:
    sector31 = (x3 - 1) * secsize2 + sector1
    do x2 = 0, s:
      y = x2 + sector31
      access spool[y]
```

This requires $(2t)(s+1)r + 3(2t)r + 2r + 3$ operations to compute. Assuming
$2t$, $s$, and $r$ are all similarly large, this is a speedup of approximately
$\frac{20str}{2str}=10$.


# Un-spooling

Suppose we can a single do-loop which addresses a two-dimensional array. How do
we invert the map?

It depends on the access pattern. We could have a row-major access pattern:
```
1 4 7 
2 5 8
3 6 9
```
In which case the mapping is
\begin{align}
x_1 = (y - 1)/s_{x_1} + 1 \\
x_2 = \mod(y-1,s_{x_1}) +1
\end{align}

## Upper triangular

Suppose the desired access pattern is upper triangular:
```
1 2 4 .
  3 5 .
    6 .
      .
```
Then the mapping is:
\begin{align}
j &= \text{ceiling}((\sqrt{8y+1}-1)/2)\\
i &= y - i(i-1)/2
\end{align}
Here, $i$ is fast and $j$ is slow. A nice aspect of this layout is that the
mapping does not depend on the size of the array. However, it does rely on
real-type arithmetic (but there's a way around that).

The compute cost of the $j$ index is at least 5 FLOPS plus the cost of the
ceiling function. The cost of the $i$ index is 4 FLOPS. The former is reduced to
4 FLOPS with:
\begin{align}
j &= \text{ceiling}(\sqrt{2y+0.25}-0.5)\\
i &= y - i(i-1)/2
\end{align}


To see why this seemingly arbitrary map works, notice from the label pattern above
that we are trying to map the first $N$ integers onto the first $n$ columns, where
the $j$-th column has $j$ consecutive labels. The maximum label which $n$ rows
can support is:
\begin{align}
\sum_{j=1}^n j = \frac{n(n+1)}{2}.
\end{align}
The index $y$ maps to the column with at least as many labels:
\begin{align}
y \le \frac{j(j+1)}{2}.
\end{align}
The positive solution for $j$ is:
\begin{align}
j \le \frac{\sqrt{8y+1}-1}{2}.
\end{align}
Finally, by demanding that $j$ be an integer, we find the first part of the mapping:
\begin{align}
j = \text{ceiling}\left (\frac{\sqrt{8y+1}-1}{2}\right ).
\end{align}

Since the label $y$ increases by one when increasing the row index $i$, all we
need is to subtract the maximum label from the previous column from $y$ to get
$i$.  But this is just the sum of all integers up to the previous column number
$j' = j-1$. A simple substitution gives us the final result for the row $i$:
\begin{align}
i = y - \frac{j(j-1)}{2}.
\end{align}

_A word of caution:_ Since this map relies on real numbers, it is
susceptable to rouding errors. In particular, if $1/j$ is small compared to the
precision of the real data type, then the ceiling function may go the wrong way!
