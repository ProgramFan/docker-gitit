# docker-gitit

Docker builder for gitit

This is adpated from [Gitit-Bigger](https://github.com/menduo/gitit-bigger). I changed the base image to debian testing (debian 9) so that gitit-0.12 is available.

This image tries hard to be small and simple. It contains only gitit related tools and is intended to be used as a base image for real gitit applications.  See [gitit-templates-enhanced](https://github.com/ProgramFan/gitit-templates-enhanced) for an example.

`utils` contains some interesting utilities for solving integrating problems.
