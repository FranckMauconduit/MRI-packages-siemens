# QA pTx package
> Quality Assurance package for UHF MRI pTx coils

## Short description

The QA pTx package contains a custom B1+ map sequence (based on tfl_rfmap) to map individual channels of a pTx coil. A QA assessment is performed based on a reference acquisition to detect trends or abnormal situation of the transmit elements. It also contains a scatterring matrix acquisition and follow-up. All results are immediatelly displayed in DICOM images. Graphs showing results of consecutive QA are automatically created for an easy follow-up of the pTx coil performance. 

## Information

- Softawre versions: VE12U (all subversions), XA60

- Accessing the package: either using the Siemens C2P platform (https://webclient.eu.api.teamplay.siemens.com/#/c2p) or using a classic Siemens C2P paperwork.

- For a detailed description of the package, see the [QA pTx package documentation](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/QA-pTx-package/QA-pTx_documentation.pdf)

<!--
- For a detailed description of the package, see the [current draft documentation](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/QA-pTx-package/QA_pTx.pdf)
-->


## Protocols

A list of suggested protocols is available [here](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/QA-pTx-package/protocols/)

## Versions

- Version 1.3

XA release available in this version
Gradient whisper mode to minimize ghosting signal
Distribute slice acquisition over the TR
