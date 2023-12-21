# ns_fid_calib package
> Voltage calibration for X-nucleus

## Short description
The ns_fid_calib package contains a modified fid sequence and a custom ICE reconstruction to acquire and assess reference voltage based on several fid measurements at different voltages. The signal is fitted to extract a reference voltage. This package is well suited for X-nuclei experiments for which there are no automatic voltage calibration.

## Information

- Softawre versions: VB17, VE11C, VE11E, VE12U-AP01, VE12U-SP01, VE12U-AP04

- Accessing the package: either using the Siemens C2P platform (https://webclient.eu.api.teamplay.siemens.com/#/c2p) or using a classic Siemens C2P paperwork.


- For a detailed description of the package, see the [ns_fid_calib package documentation](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/ns_fid_calib/ns_fid_calib_documentation.pdf)


<!--
## Related articles

Amadon A and Boulant N, Simultaneous measurement of B0- and B1-maps with modified Actual Flip Angle Imaging sequence.
Proceedings of the ISMRM 2008, Toronto, Canada, p1248. https://cds.ismrm.org/protected/08MProceedings/PDFfiles/01248.pdf 

Boulant N, Cloos M and Amadon A, A simple and analytical way to
correct for ∆B0 inhomogeneity in the evaluation of B1 maps relying on flip angle measurements and non-selective square pulses.
Proceedings of the ISMRM 2010, Stockholm, Sweden, p4918. https://archive.ismrm.org/2010/4918.html
-->


## Versions

- Version 1.1

In case of multi-receive coils, the signal was not averaged over the channels. Now corrected.

- Version 1.0

Initial release
