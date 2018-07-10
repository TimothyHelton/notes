# Git Flow Version Control Model

## Create Repository
```bash
mkdir foobar && cd foobar
git init
```

## Create and Commit README File
```bash
touch README
git add README
git commit -m "Initial commit"
```

## Add GitHub Remote Origin
```bash
git remote add origin git@github.com:TimothyHelton/foobar.git
```

## Push Local Master Branch Upstream
```bash
git push -u origin master
```

## Create Develop Branch
```bash
git checkout -b develop
git push -u origin devlop
```

## Feature Branches
- Always branch new features off of the develop branch.
- Name format: feature/name
```bash
git checkout -b feature/foo develop
```

### Merge Feature
- Rebase onto develop to move to the front of the branch.
- When feature is complete create a pull request to the develop branch.
```bash
git rebase develop
```

## Create Release Branch
- Do this after a feature is merged into develop branch.
    1. Merge to master branch.
    1. Create a Tag for all releases.
    1. Delete local feature branch.
- Name format: release/version
```bash
git checkout -b release/1.0 develop
git push -u origin release/1.0
git checkout master
git merge release/1.0
git push
git tag v1.0.0
git push origin v1.0.0
git branch -d feature/foo
```