
help:
	@echo "Git CI"
	@echo "======"
	@echo
	@echo "    ci              - build, test and deploy the project"
	@echo "    enable-git-ci   - enable automatic git build system"
	@echo "    enable-git-ci   - disable automatic git build system"
	@echo

ci:
	@echo "starting the ci pipeline..."
	sleep 5

enable-git-build:
	git config --bool core.bare true
	cp ./scripts/post-receive ./.git/hooks/

disable-git-build:
	git config --bool core.bare false
	rm ./.git/hooks/post-receive



