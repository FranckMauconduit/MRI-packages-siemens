# pTx library
> A pTx library to include external pTx pulses into sequences for Terra systems

## Short description

The pTx library can be used to easily insert a pTx pulse into any sequence. It uses the standard Siemens framework for pTx pulses that needs an ini file. This ini file contains the
gradient and RF informations, as well as the pulse duration, the nominal flip angle and several other informations. It was initially developped to be used in the PASTeUR package which currently contains different anatomical sequences such as 3D GRE, MP(2)RAGE and SPACE sequences.

## Information

- Softawre versions: VE12U, VE12U-AP01, VE12U-SP01, VE12U-AP04

- Accessing the library: either using the Siemens C2P platform (https://webclient.eu.api.teamplay.siemens.com/#/c2p) or using a classic Siemens C2P paperwork.

- For a detailed description of the library, see the [pTx library documentation](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/pTx-library/library_pTx_documentation.pdf)

## Related articles

Gras V et al, Homogeneous non-selective and slice-selective parallel-transmit excitations at 7 Tesla with universal pulses: A validation study on two commercial RF coils.
PLOS ONE. 2017;12(8). https://dx.plos.org/10.1371/journal.pone.0183562

Gras V et al, Design of universal parallel-transmit refocusing k(T)-point pulses and application to 3D T(2)-weighted imaging at 7T.
Magn Reson Med. 2018 Jul;80(1):53-65. https://doi.org/10.1002/mrm.27001.

Gras V et al, Robust nonadiabatic T(2) preparation using universal parallel-transmit k(T)-point pulses for 3D FLAIR imaging at 7T.
Magn Reson Med. 2019 May;81(5):3202-3208. https://doi.org/10.1002/mrm.27645. Open access : https://hal.archives-ouvertes.fr/hal-02103512.

Gras V et al, A new concept for calibration free parallel transmission.
Magn Reson Med. 2017; 77(2):635-643. https://onlinelibrary.wiley.com/doi/10.1002/mrm.26148

Mauconduit F et al, Traveling pulses visit 7t terra sites: Getting ready for parallel transmission in routine use.
Proceedings of the ISMRM 2022, London, United Kindom, p2091. https://archive.ismrm.org/2022/2091.html 

Van Damme L et al, Universal non-selective excitation and refocusing pulses with improved robustness to off-resonance for Magnetic Resonance Imaging at 7 Tesla with parallel transmission.
Magn Reson Med. 2020. https://doi.org/10.1002/mrm.28441.

Wu X et al, The travelling pulses: multicenter evaluation of universal pulses at 7T.
Proceedings of the ISMRM 2018, Paris, France, p1133. https://archive.ismrm.org/2018/1133.html 
