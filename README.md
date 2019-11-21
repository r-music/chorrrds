
**Author:** [Bruna Wundervald](http://brunaw.com/) **License:** [MIT](https://opensource.org/licenses/MIT)<br/>

[![CRAN status](http://www.r-pkg.org/badges/version/chorrrds)](https://cran.r-project.org/package=chorrrds) [![CRAN downloads](http://cranlogs.r-pkg.org/badges/grand-total/chorrrds)](https://cran.r-project.org/package=chorrrds) [![Rdoc](http://www.rdocumentation.org/badges/version/chorrrds)](http://www.rdocumentation.org/packages/chorrrds) [![Travis-CI Build Status](https://travis-ci.org/r-music/chorrrds.svg?branch=master)](https://travis-ci.org/r-music/chorrrds) 


`chorrrds`: A package for music chorrrds extraction. 
========================================

`chorrrds` is a package for `R` that scrapes the [Cifraclub](https://www.cifraclub.com.br/) website to
download and organize music chords. It can be considered a package for 
MIR (Music Information Retrieval), a broad area of computational
music which extracts and processes music data, from the unstructured ones, as sound waves, to structured, like sheet music or chords.

**If you enjoy this work, consider [buying me a coffee in Ko-Fi](https://ko-fi.com/brunawundervald), or Paypal:**

<p align="center">
  <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=89DH4WYL2M7XW&source=url">
    <img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" />
  </a>
</p>

**so I can keep developing and maintaining this package :)**

Installation
------------------------

You can install chorrrds from your favorite CRAN mirror, simply running:

``` r
install.packages("chorrrds")
```

You can also install the latest version of chorrrds from the R-Music GitHub organization with:
``` r
# install.packages("devtools")
devtools::install_github("r-music/chorrrds")
```

Functionalities
------------------------

The package currently has as its main functions: 

  - A function to extract the name of the songs of an artist:
  `get_songs()`; 
  - A function that extracts the chords of the song: `get_chords()`. 
  
There are also some accessory objects and functions, that provides useful too use
in combination with the music chords:

  - The `deg_maj` and `deg_min` dataframes, that contains all of the 
  minor and major main scales and its respective degrees; 
  - The `dist` dataframe, that contains the distance from C in the
  [circle of fifths](https://en.wikipedia.org/wiki/Circle_of_fifths), 
  by semitones and by steps in the circle, for each tonic chord; 
  - The `genre` dataframe, that contains the musical genre information
  for many Brazilian artists;
  - The `all` dataframe, that contains the chords data for many 
  Brazilian artists; 
  - The `search_data()` function, that looks for an artist in the
  available data; 
  - The `clean_data()` function, that cleans the chords in case
  something weird (such as lyrics) were wrongly scraped. 
  - The `feature_extraction()` function, that extracts useful features to 
  represent the characteristics of the chords. 
  
All of the functions and documentation can be found with:

``` r
library(chorrrds)
packageVersion("chorrrds")
ls("package:chorrrds")
help(package = "chorrrds")
```
  
To be implemented
------------------------

  - [ ] Standardization of the chords formats. 
  - [X] Link the package to the syntax provided by the 
  [`tabr`](https://leonawicz.github.io/tabr/index.html)
  package.
  - [X] Functions to perform the feature extraction of the chords. 
  - [ ] The official `pkgdown` for `chorrrds`. 
  
Examples and Resources
------------------------

A tutorial about how to extract & analyze the data with the 
`chorrrds` package is available at: 

https://r-music.rbind.io/posts/2018-08-19-chords-analysis-with-the-chorrrds-package/
  
### R-Music <img src="https://raw.githubusercontent.com/r-music/site/master/img/logo.png" style="float:left;margin-right:20px;" width=120>

<h4 style="padding:0px;margin:10px;">
R for music data extraction and analysis
</h4>

See the [R-Music](https://github.com/r-music) organization on GitHub for 
more `R` packages related to music data extraction and analysis. The [R-Music blog](https://r-music.rbind.io/) provides package introductions and examples.


`tabr` connection
------------------------

The usability of this package can be highly increased when in combination with 
other MIR tools, such as the [`tabr`](https://leonawicz.github.io/tabr/) package, which
offers a music notation syntax converter for the packages. Please 
find more information at: https://leonawicz.github.io/tabr/reference/to_tabr.html

Besides its many other functions, the `tabr` package has a chord chart rendering, that 
might be especially interesting for users of the `chorrrds` package: https://leonawicz.github.io/tabr/articles/tabr-chordchart.html


Citation
------------------------

To cite this package in publications, please use: 

```
Bruna Wundervald (2019). chorrrds: Music
Chords Extraction. R package version
0.1.8.
https://CRAN.R-project.org/package=chorrrds
```

A BibTeX entry for LaTeX users is

```
@Manual{,
title = {chorrrds: Music Chords Extraction},
author = {Bruna Wundervald},
year = {2019},
note = {R package version 0.1.8},
url = {https://CRAN.R-project.org/package=chorrrds},
}
```

This citation format can be obtained at any moment in `R` with:

``` r
citation('chorrrds')
```

Contributing 
------------------------

Contributions to this project are always highly incentivized. To do
so, please be aware that `git` is our main tool for version control. 
The minimal steps for a contribution are:

   1. Fork this repository into your `GitHub` account and clone it
  the way you prefer. 
   2. Do the changes, making sure everything is well documented, 
  examples are provided and checking if the package still correctly builds. 
   3. Push your changes to `git` and create a new pull request in
  `GitHub`, explaining why and what are the changes made. 
   4. Done! Wait for review & acceptance of the pull request :) 
  
To contributors who are new to writing R packages, we recommend
the ['R Packages' book](http://r-pkgs.had.co.nz/), by Hadley 
Wickham. To those who are new to `git`/`GitHub`, we recommend
[this tutorial](http://brunaw.com/talk/git/). Many contributing
resources to open source projects can be found at 
[this repository](https://github.com/freeCodeCamp/how-to-contribute-to-open-source). 



