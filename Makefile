pull:
	git pull --rebase --prune origin master
	git submodule update --init

push:
	git push origin master
