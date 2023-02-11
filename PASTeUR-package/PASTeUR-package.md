# PASTeUR package
> Package of Anatomical Sequences using parallel Transmission UniveRsal pulses

## Short description

The PASTeUR package contains 3D anatomical sequences – a GRE3d, a SPACE (with FLAIR and DIR preparations) and a MP(2)RAGE sequence – that use Universal RF pulses to mitigate B1+ inhomogeneity. These Universal Pulses are based on an offline pulse design performed on a database of different subject field maps to be robust with respect to inter-subject variability. The PASTeUR package provides a plug and play solution for pTx systems that suppress the ubiquitous B1+ artefacts observed with the CP excitation mode. This current release is based on Classic MAGNETOM 7T Universal Pulse solutions that have been adapted to fit MAGNETOM Terra specifications (channel ordering, phase shifts, table position and scaling).

## Information

- Availability: Ultra high field Siemens MRI systems (7T and above)

- Softawre versions: VE12U, VE12U-AP01, VE12U-SP01, VE12U-AP04 and VB17 (pTx Step 2.3)

- Limitations: This package of sequences is meant to be used with the Nova pTx coil for which the Universal Pulses have been designed.

- Accessing the package: either using the Siemens C2P platform (https://webclient.eu.api.teamplay.siemens.com/#/c2p) or using a classic Siemens C2P paper work.

- Link to documentation: [PASTeUR_package](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/PASTeUR-package/PASTeUR_documentation.pdf)

## Related articles

Gras V et al, Homogeneous non-selective and slice-selective parallel-transmit excitations at 7 Tesla with universal pulses: A validation study on two commercial RF coils.
PLOS ONE. 2017;12(8). https://dx.plos.org/10.1371/journal.pone.0183562

Gras V et al, Design of universal parallel-transmit refocusing k(T)-point pulses and application to 3D T(2)-weighted imaging at 7T.
Magn Reson Med. 2018 Jul;80(1):53-65. https://doi.org/10.1002/mrm.27001.

Gras V et al, Robust nonadiabatic T(2) preparation using universal parallel-transmit k(T)-point pulses for 3D FLAIR imaging at 7T.
Magn Reson Med. 2019 May;81(5):3202-3208. https://doi.org/10.1002/mrm.27645. Open access : https://hal.archives-ouvertes.fr/hal-02103512.

Gras V et al, A new concept for calibration free parallel transmission.
Magn Reson Med. 2017; 77(2):635-643. https://onlinelibrary.wiley.com/doi/10.1002/mrm.26148

Van Damme L et al, Universal non-selective excitation and refocusing pulses with improved robustness to off-resonance for Magnetic Resonance Imaging at 7 Tesla with parallel transmission.
Magn Reson Med. 2020. https://doi.org/10.1002/mrm.28441.

Wu X et al, The travelling pulses: multicenter evaluation of universal pulses at 7T.
Proceedings of the ISMRM 2018, Paris, France, p1133. https://archive.ismrm.org/2018/1133.html 

## Version

- Version: 1.4

In preparation, release planned for June 2023.

- Version: 1.3

This version contains GRE3D, MPRAGE, MP2RAGE SPACE, FLAIR and DIR sequences

