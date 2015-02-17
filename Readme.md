wMicrotracker Scoring
=====================

## Food Optimization

- [X] Specify entire columns to exclude 
- [X] Specify individual wells to exclude
  - [ ] Add ability to remove only after a specific day (may require nlm() tweeking)
- [X] Comment code
- [X] Move all library loads to the same file
- [ ] Move functions to separate file
- [ ] Add normalizing to the number of worms per well
- [ ] Add ability to specify number of worms per well that deviate from the ideal
- [ ] CHANGE PARSING OF DATA FILES FROM PLYR TO DPLYR
- [ ] Handle case where all activity for a group is 0, causes issue with nlm()
- [ ] Add preceeding top of curve values per well and per strain



## Curve Fits

- [X] `nlm` for regression
- [X] Graph `nlm` fits per strain
- [X] Graph `nlm` fits per well
- [ ] Fit curves for median data per well and per strain
- [ ] Fit curves to setting top of curve per well and per strain
- [ ] Fit curves to adding preceeding top of curve values per well and per strain