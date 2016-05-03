
help:
	@echo "Git CI"
	@echo "======"
	@echo
	@echo "    enable-git-build   - enable automatic git build system"
	@echo "    enable-git-build   - disable automatic git build system"
	@echo


enable-git-build:
	git config --bool core.bare true
	cp ./scripts/post-receive ./.git/hooks/

disable-git-build:
	git config --bool core.bare false
	rm ./.git/hooks/post-receive



