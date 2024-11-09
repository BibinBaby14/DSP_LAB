1. FIR Filter General Equation
The output 
𝑦
[
𝑛
]
y[n] of an FIR filter is the convolution of the input signal 
𝑥
[
𝑛
]
x[n] and the filter's impulse response 
ℎ
[
𝑛
]
h[n]:

𝑦
[
𝑛
]
=
∑
𝑘
=
0
𝑀
−
1
ℎ
[
𝑘
]
⋅
𝑥
[
𝑛
−
𝑘
]
y[n]= 
k=0
∑
M−1
​
 h[k]⋅x[n−k]
Where:

ℎ
[
𝑘
]
h[k] are the filter coefficients.
𝑥
[
𝑛
]
x[n] is the input signal.
𝑀
M is the number of taps (filter order).
2. Ideal Impulse Response for Different Filters
Lowpass Filter:
The ideal impulse response 
ℎ
LP
[
𝑛
]
h 
LP
​
 [n] for a lowpass filter with cutoff frequency 
𝑓
𝑐
f 
c
​
  is given by:

ℎ
LP
[
𝑛
]
=
sin
⁡
(
2
𝜋
𝑓
𝑐
(
𝑛
−
(
𝑀
−
1
)
/
2
)
)
𝜋
(
𝑛
−
(
𝑀
−
1
)
/
2
)
h 
LP
​
 [n]= 
π(n−(M−1)/2)
sin(2πf 
c
​
 (n−(M−1)/2))
​
 
Where:

𝑓
𝑐
f 
c
​
  is the normalized cutoff frequency (0 < 
𝑓
𝑐
f 
c
​
  < 1).
𝑀
M is the number of taps.
The formula represents the sinc function, which is the ideal lowpass response.
Highpass Filter:
The ideal impulse response 
ℎ
HP
[
𝑛
]
h 
HP
​
 [n] for a highpass filter is derived by subtracting the lowpass impulse response from the Dirac delta function 
𝛿
[
𝑛
]
δ[n]:

ℎ
HP
[
𝑛
]
=
𝛿
[
𝑛
]
−
ℎ
LP
[
𝑛
]
h 
HP
​
 [n]=δ[n]−h 
LP
​
 [n]
Bandpass Filter:
For a bandpass filter, the ideal impulse response 
ℎ
BP
[
𝑛
]
h 
BP
​
 [n] is the difference between the lowpass and highpass responses:

ℎ
BP
[
𝑛
]
=
ℎ
LP
[
𝑛
]
−
ℎ
HP
[
𝑛
]
h 
BP
​
 [n]=h 
LP
​
 [n]−h 
HP
​
 [n]
Bandstop Filter:
The ideal impulse response 
ℎ
BS
[
𝑛
]
h 
BS
​
 [n] for a bandstop filter is the sum of the lowpass and highpass responses:

ℎ
BS
[
𝑛
]
=
ℎ
LP
[
𝑛
]
+
ℎ
HP
[
𝑛
]
h 
BS
​
 [n]=h 
LP
​
 [n]+h 
HP
​
 [n]
3. Window Functions
A window function 
𝑤
[
𝑛
]
w[n] is applied to the ideal impulse response to obtain the final FIR filter coefficients. The different window functions are defined as follows:

Rectangular Window:
The rectangular window is simply:

𝑤
[
𝑛
]
=
1
for
0
≤
𝑛
≤
𝑀
−
1
w[n]=1for0≤n≤M−1
It results in the simplest filter, but with poor frequency characteristics due to significant side lobes.

Hanning Window:
The Hanning window is defined as:

𝑤
[
𝑛
]
=
0.5
−
0.5
cos
⁡
(
2
𝜋
𝑛
𝑀
−
1
)
w[n]=0.5−0.5cos( 
M−1
2πn
​
 )
This window reduces side lobes more effectively than the rectangular window, improving stopband attenuation.

Hamming Window:
The Hamming window is similar to the Hanning window but with a slightly different constant for side lobe attenuation:

𝑤
[
𝑛
]
=
0.54
−
0.46
cos
⁡
(
2
𝜋
𝑛
𝑀
−
1
)
w[n]=0.54−0.46cos( 
M−1
2πn
​
 )
This provides better side lobe attenuation and is commonly used in practical filter designs.

Bartlett Window:
The Bartlett window (or triangular window) is given by:

𝑤
[
𝑛
]
=
2
𝑀
−
1
(
𝑀
−
1
2
−
∣
𝑛
−
(
𝑀
−
1
)
/
2
∣
)
w[n]= 
M−1
2
​
 ( 
2
M−1
​
 −∣n−(M−1)/2∣)
This is a linear ramp function and provides moderate side lobe attenuation with a wider main lobe.

4. FIR Filter Design Process
The process of designing an FIR filter using the window method involves the following steps:

Determine the Filter Type: Choose between lowpass, highpass, bandpass, or bandstop depending on your application.
Calculate the Ideal Impulse Response: Using the appropriate formula for the desired filter type (e.g., sinc function for lowpass).
Apply the Window Function: Multiply the ideal impulse response 
ℎ
ideal
[
𝑛
]
h 
ideal
​
 [n] by the chosen window 
𝑤
[
𝑛
]
w[n] to get the final filter coefficients:
ℎ
[
𝑛
]
=
ℎ
ideal
[
𝑛
]
⋅
𝑤
[
𝑛
]
h[n]=h 
ideal
​
 [n]⋅w[n]
Evaluate the Frequency Response: After applying the window, analyze the frequency response 
𝐻
(
𝑓
)
H(f) to verify that it meets the design specifications, such as cutoff frequencies, passband ripple, and stopband attenuation.
Example Frequency Response:
The frequency response 
𝐻
(
𝑓
)
H(f) of an FIR filter can be computed as the Discrete Fourier Transform (DFT) of the filter's impulse response 
ℎ
[
𝑛
]
h[n]:

𝐻
(
𝑓
)
=
∑
𝑛
=
0
𝑀
−
1
ℎ
[
𝑛
]
⋅
𝑒
−
𝑗
2
𝜋
𝑓
𝑛
H(f)= 
n=0
∑
M−1
​
 h[n]⋅e 
−j2πfn
 
This response is then used to check the filter's behavior in both the passband and stopband.

