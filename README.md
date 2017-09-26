# drivingAQ
Driving AQ for Visser Lab

## Structure
* `docs/` - Supporting docuemtation directory
* `input/` - static directory, files should be considered part of the package
* `output/` - dynamic directory for output files
* `locations.py` - library functions for generating dot location lists
* `sceparser.py` - procedural script for finding/replacing sce dot locations + times 
* `subjectcall.py` - Contains 'Subject' class which generates a subject randomisation cell + output
* `times.py` -  library functions for randomisation of inter-stimulus interval for PDT

## Summary of Processing Order

Tweaks to the experimental configuration should be relatively straight forward,
though I would speak to [Michael](mailto:michael.wilson@uwa.edu.au). Anything to
do with the actual`.sce` reading and writing should all be contained within the
`.sceparser` file. Any appeared convolution is just a result of having several
dictionaries calling each other. If lookup keys aren't working as intended,
ensure that the keys are strings for lookup dicts or integer for `finaldict`.
`locations.py` is effectively just reading the input of X and Y coordinates from
relevant input files, shuffling them up and assigning each coordinate an ID.
Times has a bunch of functions mostly just for generating the times that dots
appear. The majority of confusing stuff is just regarding sampling the
inter-stimulus intervals. Finally, `subjectcall` contains the class `Subject`.
This requires a name at instantiation (i.e. subject number) and each `Subject`
instance will have a unique order of locations, and unique timings for PDT.
