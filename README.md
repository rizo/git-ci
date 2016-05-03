# Kardan

> Simple git-based build tool, as Unix as it can get.

The build process is directly integrated with the git's ability to add hooks for some of its actions. In particular by running `make enable-git-build` a `post-receive` hook is enabled, which is run by git whenever some clone pushes to this remote. The actual work is done by the `scripts/build.sh` script that is invoked every time the hook is fired.

