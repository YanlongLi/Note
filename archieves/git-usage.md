
# Git Usage

## Some Links

- [Git Book][]
- [git 操作详解][git remote]
- [GitHub Mark][]

## Some Concepts

![git flow](_git_img/git-flow.jpg)

- 仓库
- 提交
- 分支
- 日志
- **HEAD**?

###  Frequently Used Commands

```git
$ git remote add origin some-url #设置仓库
$ git commit --amend -m "commit message." #修补提交（修补最近一次的提交而不创建新的提交）
$ git push -u origin master #将代码从本地传回到仓库
$ git branch checkout master # 切换到主分支

$ git log # 查看提交信息
$ git log --pretty=oneline # 以整洁的单行形式显示提交信息
$ git log --stat # 查看提交信息及更新的文件

$ git archive --format tar --output /path/to/file.tar master # 将 master 以 tar 格式打包到指定文件
```

### Usage Rules

当要commit/提交patch时：

- 使用 git diff --check 检查行尾有没有多余的空白
- 每个 commit 只改一件事情。如果一个文档有多个变更，使用 git add --patch 只选择文档中的部分变更进入 stage
- 写清楚 commit message

### Git Branch Model

两个branch of infinite lifetime:

- origin/master: code of `HEAD` always reflect the `product-ready` state
- origin/develop: code of `HEAD` always relect the latest changes for next release

principle of `master` and `develop`:

> When the source code in the develop branch reaches a stable point and is ready to be released, all of the changes should be merged back into master somehow and then tagged with a release number. 

Under this condition, a `git hook script` can be used to generate software of new version.

article [git branch model][] gives three type of support branches

#### 1. feature branch

- branch off from `develop` and merged back into `develop` eventually

```bash
$ git checkout -b myfeature develop #Switched to a new branch "myfeature"
(do something)
$ git checkout develop #Switched to branch 'develop'
$ git merge --no-ff myfeature #Updating
(Summary of changes)
$ git branch -d myfeature #Deleted branch myfeature
$ git push origin develop 
```

#### 2. release branch

- branch off from `develop` and merged back into `develop` and `master` eventually
- when `develop` branch is in a desired state for next release and the version number is decided.
	
```bash
$ git checkout -b release-1.2 develop #Switched to a new branch "release-1.2"
(modify files to the new version number)
$ git commit -a -m "Bumped version number to 1.2"
(apply bug fixes)
(...)
$ git checkout master #Switched to branch 'master'
$ git merge --no-ff release-1.2 #Merge made by recursive.
(Summary of changes)
$ git tag -a 1.2
```
**why use tags?**

```bash
$ git checkout develop #Switched to branch 'develop'
$ git merge --no-ff release-1.2
```

```bash
$ git branch -d release-1.2
```
			
#### 3. hotfix branch
- branch off from `develop` and merged back into `develop` and `master` eventually

![hot fix branch](_git_img/hotfix-branches.png)

## Usage

### Reset current HEAD to the specified state

```bash
git reset HEAD@{1}
git reflog ### view the log of all ref updates (e.g., checkout, reset, commit, merge)
```

### delete branch in remote repo

```bash
git push origin --delete <branchName> ## or
git push origin :<branchName>
```

### Delete files in remote repo **ONLY**?

```bash
git rm --cached filelist
```

>  --cached  
Use this option to unstage and remove paths only from the index.
Working tree files, whether modified or not, will be left alone.

then commit the change and push change to remote repo.


[Git Book]: http://git-scm.com/book/en/v2
[git branch model]: http://nvie.com/posts/a-successful-git-branching-model/
[git remote]: http://www.ruanyifeng.com/blog/2014/06/git_remote.html
[GitHub Mark]: https://github.com/github/markup
