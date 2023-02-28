# ns_gre_arb
> A gre based sequence to play an arbitrary gradient readout defined in an external file for 2D or 3D acquisitions.

## Short description

The ns_gre_arb sequence provide a tool to play out a readout gradient using an arbitrary waveform that would be feasible by the scanner. In 2D acquisitions, the sequence runs the same n shots to fill in the 2D k-space of each slice. In 3D acquisitions, the sequence runs n shots to fill in a complete 3D k-space.

## Information

- Softawre versions: VB17, VE11C

- Accessing the sequence: either using the Siemens C2P platform (https://webclient.eu.api.teamplay.siemens.com/#/c2p) or using a classic Siemens C2P paperwork.

- For a detailed description of the sequence, see the [ns_gre_arb documentation](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/ns_gre_arb/ns_gre_arb_documentation.pdf)

## Related articles

Lazarus C et al, 3D variable-density SPARKLING trajectories for high-resolution T2*-weighted magnetic resonance imaging.
NMR Biomed. 2020 Jul 1:e4349. https://doi.org/10.1002/nbm.4349

Lazarus C et al, SPARKLING: variable-density k-space filling curves for accelerated T2*-weighted MRI
Magn Reson Med. 2019 Jun;81(6):3643-3661. https://doi.org/10.1002/mrm.27678