# generating-variable-accuracy-battery-models
In the electronic design automation field, the most popular battery model is circuit equivalent model written by high description level programming language, e.g. SystemC-AMS. The Matlab codes for deriving, in a semi-automatic way, circuit equivalent battery models solely from data available in a battery datasheet. 

## Electrical energy systems (EESs) are systems which consume, generate, distribute and store energy.

### Modeling and simulation crucial to validate and estimate the behavior of single components and of the overall system beforehand.
### Especially important for batteries - non-idealities

## Battery models
Various types of models depending on accuracy/level of detail required to populate. If you use the tool we provided, please feel free to reference anyone of our papers in your work:

Petricca M, Shin D, Bocca A, Macii A, Macii E, Poncino M. An automated framework for generating variable-accuracy battery models from datasheet information. InLow Power Electronics and Design (ISLPED), 2013 IEEE International Symposium on 2013 Sep 4 (pp. 365-370). IEEE.

Bocca, A., Macii, A., Macii, E. and Poncino, M., 2017. Composable Battery Model Templates Based on Manufacturers’ Data. IEEE Design & Test.

Chen, Y., Macii, E. and Poncino, M., 2017, March. A circuit-equivalent battery model accounting for the dependency on load frequency. In 2017 Design, Automation & Test in Europe Conference & Exhibition (DATE) (pp. 1177-1182). IEEE.


### Electrical circuit battery models

#### -Most popular
#### -Develop an equivalent circuit that models all the detailed characteristics
#### -Populated with specifications or measurements of the specific battery

## HOW TO 

In the code folder, run the assignment file. Before run the script, please use the digitizer toolbox in another folder get two different files related to two different discharging currents voltage vs. capacity profiles. Such two files shoulf be in .txt format, then read by the Matlab code, specially in the iamXXXX.m files which one is for high discharge current and the other one for low discharge current. 



