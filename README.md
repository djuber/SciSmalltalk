##How to install SciSmalltalk in Pharo

The simplest way to install in Pharo is via Metacello and Gofer. 
* Bootstrap SciSmalltalk

```Smalltalk
Gofer new
    url: 'http://ss3.gemstone.com/ss/SciSmalltalk';
    package: 'ConfigurationOfSciSmalltalk';
    load.
(Smalltalk at: #ConfigurationOfSciSmalltalk) loadBleedingEdge.
```

All packages load into the Math-* package names.


##How to install SciSmalltalk for GitHub

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