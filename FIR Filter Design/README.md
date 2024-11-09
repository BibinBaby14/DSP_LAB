# FIR Filter Design Theory

## Introduction

Finite Impulse Response (FIR) filters are widely used in digital signal processing for their stability and linear phase characteristics. The **Window Method** is a common technique used to design FIR filters. It involves multiplying an ideal filter impulse response by a window function to reduce side lobes and improve the frequency response. This document explains the theory behind designing **lowpass**, **highpass**, **bandpass**, and **bandstop** FIR filters using various window functions: **Rectangular**, **Hanning**, **Hamming**, and **Bartlett**.

---

## 1. FIR Filter General Equation

The output \( y[n] \) of an FIR filter is calculated by the convolution of the input signal \( x[n] \) and the filter's impulse response \( h[n] \):

\[
y[n] = \sum_{k=0}^{M-1} h[k] \cdot x[n-k]
\]

Where:
- \( y[n] \) is the output signal.
- \( x[n] \) is the input signal.
- \( h[k] \) are the filter coefficients (impulse response).
- \( M \) is the number of taps (filter order).

---

## 2. Ideal Impulse Response for Different Filters

### Lowpass Filter:
The ideal impulse response \( h_{\text{LP}}[n] \) for a **lowpass filter** with cutoff frequency \( f_c \) is:

\[
h_{\text{LP}}[n] = \frac{\sin(2\pi f_c (n - (M-1)/2))}{\pi (n - (M-1)/2)}
\]

Where:
- \( f_c \) is the normalized cutoff frequency (0 < \( f_c \) < 1).
- \( M \) is the number of taps.

### Highpass Filter:
The ideal impulse response \( h_{\text{HP}}[n] \) for a **highpass filter** is derived by subtracting the lowpass impulse response from the Dirac delta function \( \delta[n] \):

\[
h_{\text{HP}}[n] = \delta[n] - h_{\text{LP}}[n]
\]

### Bandpass Filter:
For a **bandpass filter**, the ideal impulse response \( h_{\text{BP}}[n] \) is the difference between the lowpass and highpass responses:

\[
h_{\text{BP}}[n] = h_{\text{LP}}[n] - h_{\text{HP}}[n]
\]

### Bandstop Filter:
The ideal impulse response \( h_{\text{BS}}[n] \) for a **bandstop filter** is the sum of the lowpass and highpass responses:

\[
h_{\text{BS}}[n] = h_{\text{LP}}[n] + h_{\text{HP}}[n]
\]

---

## 3. Window Functions

Window functions are applied to the ideal impulse response to obtain the final FIR filter coefficients. Different windows offer different trade-offs between main lobe width and side lobe attenuation.

### Rectangular Window:
The **rectangular window** is the simplest window, defined as:

\[
w[n] = 1 \quad \text{for} \quad 0 \leq n \leq M-1
\]

This window results in the fastest convergence but introduces significant side lobes.

### Hanning Window:
The **Hanning window** is defined as:

\[
w[n] = 0.5 - 0.5 \cos\left( \frac{2\pi n}{M-1} \right)
\]

The Hanning window reduces side lobes more effectively than the rectangular window, improving stopband attenuation.

### Hamming Window:
The **Hamming window** is similar to the Hanning window but with a different constant:

\[
w[n] = 0.54 - 0.46 \cos\left( \frac{2\pi n}{M-1} \right)
\]

It provides better side lobe attenuation and is widely used in practical filter designs.

### Bartlett Window:
The **Bartlett window** (also known as the **triangular window**) is given by:

\[
w[n] = \frac{2}{M-1} \left( \frac{M-1}{2} - |n - (M-1)/2| \right)
\]

This window has a triangular shape and offers moderate side lobe attenuation with a wider main lobe.

---

## 4. FIR Filter Design Process

To design an FIR filter using the window method, follow these steps:

1. **Select the Filter Type**: Choose between lowpass, highpass, bandpass, or bandstop filters based on your application.
2. **Compute the Ideal Impulse Response**: Use the appropriate formula for the desired filter type (e.g., sinc function for lowpass).
3. **Apply the Window Function**: Multiply the ideal impulse response \( h_{\text{ideal}}[n] \) by the chosen window \( w[n] \):

\[
h[n] = h_{\text{ideal}}[n] \cdot w[n]
\]

4. **Evaluate the Frequency Response**: After applying the window, analyze the frequency response \( H(f) \) to ensure the filter meets the design specifications.

---

## 5. Frequency Response of FIR Filters

The frequency response \( H(f) \) of an FIR filter can be computed as the Discrete Fourier Transform (DFT) of the filter's impulse response \( h[n] \):

\[
H(f) = \sum_{n=0}^{M-1} h[n] \cdot e^{-j 2\pi f n}
\]

This frequency response is used to verify that the filter meets the desired performance criteria, such as cutoff frequencies, passband ripple, and stopband attenuation.

---

## Conclusion

The **Window Method** is an effective technique for designing FIR filters. By selecting the ideal impulse response and applying an appropriate window function, you can create filters with desired frequency characteristics. The choice of window determines the trade-off between the sharpness of the filter's transition band and the level of attenuation in the stopband. Understanding these equations and concepts allows you to design FIR filters tailored to your specific signal processing needs.
