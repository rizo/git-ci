# Git CI

> Simple Git CI plugin for automated builds, as Unixy as it can get.

The build process is directly integrated with the git's ability to add action hooks. In particular by running `git ci enable` a `post-receive` hook is enabled in your current repository, which will run by git whenever some clone pushes to the remote. The actual build process is delegated to `make`, the `make ci` action is invoked every time the hook is fired.

**TL;DR**: Add whatever you wish to the `make ci` action and it will run.

During the execution all the output is saved in `log/` directory.

The entire work is done in 99 LOC of shell code for the git plugin and the `post-receive` hook!

## Installation

Get the `git-ci` and install it somewhere in your `$PATH` with execution permissions.

```bash
$ curl -L https://raw.githubusercontent.com/rizo/git-ci/master/git-ci > /usr/local/bin/git-ci
$ chmod +x /usr/local/bin/git-ci
```

## Instructions

1. Go to the remote repository which you want to use for builds.
2. Add the `ci` action in the Makefile with your build process.
2. Run `git ci enable` to setup your repository as bare and ready for builds.
5. Push the changes to the remote repository and check the logs in `./log/git-ci`.

