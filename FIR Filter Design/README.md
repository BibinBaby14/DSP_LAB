# FIR Filter Design Theory

## Introduction

Finite Impulse Response (FIR) filters are a fundamental component in digital signal processing due to their stability and linear phase characteristics. The **Window Method** is commonly used to design FIR filters, where the ideal filter's impulse response is multiplied by a window function to control the frequency characteristics. In this document, we discuss the theory behind designing **lowpass**, **highpass**, **bandpass**, and **bandstop** FIR filters using various window functions, including **Rectangular**, **Hanning**, **Hamming**, and **Bartlett**.

---

## 1. FIR Filter General Equation

The output \( y[n] \) of an FIR filter is the convolution of the input signal \( x[n] \) with the filter's impulse response \( h[n] \):

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
The ideal impulse response \( h_{\text{LP}}[n] \) for a **lowpass filter** with cutoff frequency \( f_c \) is given by:

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

Window functions are used to modify the ideal impulse response to create a realizable FIR filter. The choice of window impacts the filter's frequency response, specifically the trade-off between main lobe width and side lobe attenuation.

### Rectangular Window:
The **rectangular window** is the simplest, defined as:

\[
w[n] = 1 \quad \text{for} \quad 0 \leq n \leq M-1
\]

This window results in the fastest convergence to the desired filter, but with significant side lobes.

### Hanning Window:
The **Hanning window** is defined as:

\[
w[n] = 0.5 - 0.5 \cos\left( \frac{2\pi n}{M-1} \right)
\]

The Hanning window reduces side lobes better than the rectangular window, improving stopband attenuation.

### Hamming Window:
The **Hamming window** is similar to the Hanning window but with a slightly different constant:

\[
w[n] = 0.54 - 0.46 \cos\left( \frac{2\pi n}{M-1} \right)
\]

This provides better side lobe attenuation and is widely used in practical filter designs.

### Bartlett Window:
The **Bartlett window** (or triangular window) is given by:

\[
w[n] = \frac{2}{M-1} \left( \frac{M-1}{2} - |n - (M-1)/2| \right)
\]

It has a triangular shape and offers moderate side lobe attenuation with a wider main lobe.

---

## 4. FIR Filter Design Process

The process of designing an FIR filter using the window method involves the following steps:

1. **Choose the Filter Type**: Decide between lowpass, highpass, bandpass, or bandstop filters based on the application.
2. **Calculate the Ideal Impulse Response**: Use the appropriate formula for the desired filter type (e.g., sinc function for lowpass).
3. **Apply the Window Function**: Multiply the ideal impulse response \( h_{\text{ideal}}[n] \) by the chosen window \( w[n] \):

\[
h[n] = h_{\text{ideal}}[n] \cdot w[n]
\]

4. **Evaluate the Frequency Response**: After applying the window, analyze the frequency response \( H(f) \) to ensure it meets the design specifications.

---

## 5. Frequency Response of FIR Filters

The frequency response \( H(f) \) of an FIR filter can be computed as the Discrete Fourier Transform (DFT) of the filter's impulse response \( h[n] \):

\[
H(f) = \sum_{n=0}^{M-1} h[n] \cdot e^{-j 2\pi f n}
\]

This frequency response is crucial for verifying that the filter meets the desired performance, such as cutoff frequencies, passband ripple, and stopband attenuation.

---

## Conclusion

The **Window Method** is a straightforward and efficient technique for designing FIR filters. By selecting the appropriate window function and filter type, you can design filters with desirable characteristics. The window function chosen determines the trade-offs between the sharpness of the filter's transition and its ability to suppress unwanted frequencies in the stopband. Understanding these concepts and equations will allow you to design and implement FIR filters that meet specific frequency response requirements.

