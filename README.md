# Kardan

> Simple git-based CI tool, as Unixy as it can get.

The build process is directly integrated with the git's ability to add hooks for some of its actions. In particular by running `make enable-git-build` a `post-receive` hook is enabled, which is run by git whenever some clone pushes to this remote. The actual work is done by `make`, the `make build` action is invoked every time the hook is fired.

Add whatever you wish to the `make build` action and it will be run.

During the execution all the output is saved in `build/log` directory.

The entire work is done by 33 LOC of shell code.

