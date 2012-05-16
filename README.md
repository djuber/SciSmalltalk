## How to install SciSmalltalk

SciSmalltalk code is also available on this Monticello repository: http://ss3.gemstone.com/ss/SciSmalltalk.html

* Download the last dev Pharo 1.4: https://ci.lille.inria.fr/pharo/job/Pharo%201.4/lastSuccessfulBuild/artifact/Pharo-1.4.zip

* Bootstrap FileTree:

```Smalltalk
  Gofer new
    url: 'http://ss3.gemstone.com/ss/FileTree';
    package: 'ConfigurationOfFileTree';
    load.
  ((Smalltalk at: #ConfigurationOfFileTree) project version: '1.0') load.
```

* Clone this repository:

```shell
  mkdir SciSmalltalk
  cd SciSmalltalk
  git clone https://github.com/SergeStinckwich/SciSmalltalk.git
```

* Attach to filetree repository and load latest packages (use correct path to your filetree download/clone):

```Smalltalk
repo := 'Add you repo path here'.
Gofer new
    repository: (MCFileTreeRepository new directory: 
                    (FileDirectory on: repo));
    package: 'Math';
    load.
```
## How to contribute to SciSmalltalk

We welcome submissions!

* A google group exists for this project at http://groups.google.com/group/scismalltalk

* Fork this repository, then clone your copy (instead of cloning from above). When you have made changes, commit, and make a Pull Request.
```shell
  mkdir SciSmalltalk
  cd SciSmalltalk
  git clone https://github.com/YourUserName/SciSmalltalk.git
```

* A Metacello package ConfigurationOfSciSmalltalk is in progress. It will load the latest packages from http://ss3.gemstone.com/ss/SciSmalltalk

