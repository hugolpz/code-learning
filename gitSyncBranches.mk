# Script to synchronize Master (or dev) to gh-page.
# make -f ./gitSyncBranches.mk BRANCH_ON=master BRANCH_TO=gh-pages

BRANCH_ON=master
BRANCH_TO=gh-pages

final:
	git checkout $(BRANCH_TO) 		// go to the gh-pages branch
	git rebase $(BRANCH_ON)			// bring gh-pages up to date with master
	git push origin $(BRANCH_TO) 	// commit the changes
	git checkout $(BRANCH_ON)		// return to the master branch


# final:
# 	git checkout gh-pages 		// go to the gh-pages branch
# 	git rebase master			// bring gh-pages up to date with master
# 	git push origin gh-pages 	// commit the changes
# 	git checkout master			// return to the master branch