
EXPORT_DIR=./export

help:
	@echo "=-=- Kardan Build System -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	@echo
	@echo "    enable-git-build   - enable automatic git build system"
	@echo "    enable-git-build   - disable automatic git build system"
	@echo


enable-git-build:
	git config --bool core.bare true
	cp builder/scripts/post-receive .git/hooks/

disable-git-build:
	git config --bool core.bare false
	rm .git/hooks/post-receive



