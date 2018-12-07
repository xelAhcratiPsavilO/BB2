# Learning Objective

### Initialize and push a git project

Once you have [set up a project](setup.md), you can push that project to GitHub.

If you have remotely started a repository you will only need to make use of the following commands:

```sh
$ git remote add origin git@github.com:[user name]/[repo name].git
$ git push -u origin master
```

If (as per the set up instructions) there is a README.md file created, you can easily push it to GitHub by making use of the following commands:

```sh
$ git add .
$ git commit -m "Initial commit"
$ git push -u origin master
```

Remember that, you can always check the status of your progress by running the command:
```sh
$ git status
```
