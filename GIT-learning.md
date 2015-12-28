#GIT-LEARNING
Tips on git, github, gitlab.

# GENERAL
## HOW TO: CANCEL LAST PUSH TO GITHUB

```
git push -f origin HEAD~1:master
```

## HOW TO: REMOVE FOLDER svg FROM GIT HISTORY

```
git filter-branch --tree-filter 'rm -rf svg' --prune-empty HEAD
echo svg/ >> .gitignore
git add .gitignore
git commit -m 'Removing svg from git history'
git gc
git push origin master --force
```

## HOW TO: REMOVE FROM GITHUB AND LOCAL

```
git rm -r File-or-FolderName
```

## HOW TO: REMOVE FROM GIT REPOS BUT NOT FROM LOCAL

```
git rm -r --cached File-or-FolderName
git commit -m "Removed folder from repository"
git push origin master
```

## HOW TO: MERGE SEVERAL (minor) COMMITS ? --rebase ?

## HOW TO: SYNCHROMIZE TWO BRANCHES

```
	git checkout gh-pages 		// go to the gh-pages branch
	git rebase master			// bring gh-pages up to date with master
	git push origin gh-pages 	// commit the changes
	git checkout master			// return to the master branch
```

# GIT SUBMODULES