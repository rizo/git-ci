# Git CI

> Simple git-based CI tool for automated builds, as Unixy as it can get.

The build process is directly integrated with the git's ability to add action hooks. In particular by running `make enable-git-ci` a `post-receive` hook is enabled, which is run by git whenever some clone pushes to the remote. The actual build process is delegated to `make`, the `make ci` action is invoked every time the hook is fired.

**TL;DR**: Add whatever you wish to the `make ci` action and it will run.

During the execution all the output is saved in `build/log` directory.

The entire work is done in 33 LOC of shell code!

## Instructions

1. Clone this repository on the machine where the builds will run.
2. Add your build intructions to the makefile under the `ci` action.
2. Run `make enable-git-ci`.
3. Clone this repository on you local machine.
4. Add the build remote pointing to the repository cloned at step 1.
5. Push the changes to the build remote and check the logs.
