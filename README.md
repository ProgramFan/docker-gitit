# docker-gitit

Docker builder for gitit

This is adpated from [Gitit-Bigger](https://github.com/menduo/gitit-bigger). I changed the base image to debian testing (debian 9) so that gitit-0.12 is available.

This image tries hard to be small and simple. It contains only gitit related tools and is intended to be used as a base image for real gitit applications.  See [gitit-templates-enhanced](https://github.com/ProgramFan/gitit-templates-enhanced) for an example.

`utils` contains some interesting utilities for solving integrating problems.

## Update 2017-06-18

I made a big switch from debian stretch to debian jessie, and use ghc to build latest published gitit. I also enabled runtime options of gitit so one can reduce the CPU time of gitit from 1% to 0%. The dockerfile is carefully organized such that the resultant image is slim, where all intemediate libs and tools are removed. The image is even smaller than the previous approach.

The switch brings the latest gitit (currently gitit-0.12.2.1).
