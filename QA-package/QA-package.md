# QA package
> Quality Assurance package (Noise, SNR, noise correlation matrix, fBIRN: tSNR, Peak-to-peak, Weisskoff analysis)

## Short description

The package is designed to acquire the data in a fast manner on a spherical fantom (we recommend a fBIRN like fantom). All results are immediatelly displayed in DICOM images. Graphs showing results of consecutive QA are automatically created for an easy follow-up of the system performance. The content of the package consist of an ep2d based sequence and a dedicated ICE reconstruction pipeline.

## Information

- Softawre versions: VB17, VE11C, VE11E, VE12U-AP01, VE12U-SP01

- Accessing the package: either using the Siemens C2P platform (https://webclient.eu.api.teamplay.siemens.com/#/c2p) or using a classic Siemens C2P paperwork.

- For a detailed description of the package, see the [QA package documentation](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/QA-package/Documentation_QualityAssurance-Sequence_Neurospin_202301.pdf)

## Protocols

A list of suggested protocols is available [here](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/QA-package/protocols/)

## Related articles

Mauconduit F et al, A fast quality assessment and follow-up of transmit and receive coil paths.
Proceedings of the ISMRM 2018, Paris, France, p4221. https://archive.ismrm.org/2018/4221.html 

Mauconduit F et al, Fully automated fBIRN-like stability assessment: follow-up and case report at 7T.
Proceedings of the ISMRM 2020, Virtual Conference, p4005. https://archive.ismrm.org/2020/4005.html 

## Versions

- Version 2.5

XA release available in this version


- Version 2.4

Radius of decorrelation obtained from the weisskoff analysis is plotted on a follow-up graph.
