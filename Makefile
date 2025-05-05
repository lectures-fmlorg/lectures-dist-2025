#
# $FML$
#

all:
	@ echo "make show-status	run \"git status -s\""
	@ echo "make status		same as show-status"
	@ echo "make update		run \"git pull --rebase\""
	@ echo "make pull		run \"git pull --rebase\""
	@ echo "make push		run \"git push\""
	@ echo "make clean		clean up *~ recursively"

show-status: 
	@ git status -s

status: show-status

update: pull
pull:
	@ git pull --rebase

push:
	@ git push

clean:
	find . -name '*~' -type f -exec rm -v {} \;
