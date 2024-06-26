# Predictions on the stellar-to-halo mass relation in the dwarf regime using the empirical model for galaxy formation EMERGE...the notebook!

This repository/notebook is intended to reproduce the key results from the paper [Predictions on the stellar-to-halo mass relation in the dwarf regime using the empirical model for galaxy formation EMERGE](https://ui.adsabs.harvard.edu/abs/2023MNRAS.520..897O/abstract)

## Getting started

First you will need to install my python library `galaxybox`, which can be found [here](https://github.com/jaoleary/galaxybox)
Additionally this notebook assumes that you have installed Emerge and created your own galaxy merger trees. The code can be accessed [here](https://github.com/bmoster/emerge). If you don't want to run emerge yourself, you could instead use the galaxy trees that we have generated, located [here](http://www.usm.uni-muenchen.de/emerge/data/galtrees/hdf5/).

If you are utilizing our premade trees and don't plan to download emerge, you will need to reproduce some of the emerge directory structure. The files show be organized as:

```bash
emerge
├── build
├── data
├── output
│   └── P200
│       └── trees
│           ├── tree.0.h5
│           ├── tree.1.h5
│           ├── ...
│           └── tree.26.h5
├── parameterfiles
│   ├── emerge.param
│   └── P200.param
├── src
├── tools
├── trees
├── ...
└── Config.sh
```

The most important part of this is the parameterfile folder, and the output folder. Everything *should* work if you just recreate those. From there you should be able to shift+enter your way through the notebook.

If you find this notebook helpful please cite these papers:

[Here be dragons: exploring the stellar mass-halo mass relation in the dwarf regime with Emerge](https://ui.adsabs.harvard.edu/abs/2020arXiv201105341O/abstract)\
[EMERGE - an empirical model for the formation of galaxies since z~10](https://ui.adsabs.harvard.edu/abs/2018MNRAS.477.1822M/abstract)

**Disclaimer:**
This notebook relies on publicly available data and codes, I cannot guarantee that updates to either of these won't result in a change to the results shown in this notebook or the associated paper. The publicly available galaxy merger trees will be updated as the Emerge code evolves. I have included the config file and the parameter file I used when I produced the paper in this repository. **If you want to reproduce the results as they appeared in the paper you should run emerge with those settings.**

**Note:**
To make the notebook easier to follow I have the sections laid out roughly the same way as in the paper. Using [notebook extensions](https://github.com/ipython-contrib/jupyter_contrib_nbextensions) for collapsable headings makes it much easier to find what you're looking for.
