# ns_tfl_rfmap package
> The ns_tfl_rfmap package generates B1+ maps for parallel transmit or single transmit coils on Terra systems

## Short description

This package contains a tfl based sequence using a custom ICE reconstruction for B1+ mapping. The sequence has been developed to run on 8 or 16 channel multi-transmit Terra systems as well as on single transmit system. An ICE post-processing performs the slice profile correction for an optimized B1+ measurement.

## Information

- Software versions: VE12U, XA60

- Accessing the package: either using the Siemens C2P platform (https://webclient.eu.api.teamplay.siemens.com/#/c2p) or using a classic Siemens C2P paperwork.

- For a detailed description of the package, see the [ns_tfl_rfmap package documentation](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/ns_tfl_rfmap-package/ns_tfl_rfmap_documentation.pdf)

## Protocols

A list of suggested protocols is available [here](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/ns_tfl_rfmap-package/protocols/)

## Related articles

Amadon A et al, B1-Mapping of an 8-Channel TX-Array Over a HumanHead-Like Volume in Less Than 2 Minutes: the XEP Sequence.
Proceedings of the ISMRM 2010, Stockholm, Sweden, p2828. https://archive.ismrm.org/2010/2828.html 

Amadon A et al, Validation of a very fast B1-mapping sequence for parallel transmission on a human brain at 7T.
Proceedings of the ISMRM 2012,  Melbourne, Australia, p3358. https://archive.ismrm.org/2012/3358.html 

Amadon A et al, Slice profile corrections in the XFL B1-mapping sequence.
Proceedings of the ISMRM 2015, Toronto, ON, Canada, p2377. https://archive.ismrm.org/2015/2377.html 

## Versions

- version 1.6

Support XA60 version

Lookup table for slice profile correction is embedded

- version 1.5

Default protocol in 1Tx was failing, now corrected

Improvements for QA pTx

- version 1.4

Slice profile correction is added to improve B1+ map accuracy

Improve exported B1+ data in custom file

- version 1.3

Sequece and ICE reconstruction are compatible with both single transmit and pTx (8Tx and 16Tx systems)

- Version 1.2

The sequence uses a SLR saturation pulse instead of a sinc pulse

Reconstruction is based on a custom ICE functor

- Version 1.0

Initial release
