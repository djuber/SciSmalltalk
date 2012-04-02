## How to install SciSmalltalk

* Download the last dev Pharo 1.4: https://ci.lille.inria.fr/pharo/job/Pharo%201.4/lastSuccessfulBuild/artifact/Pharo-1.4.zip

* Bootstrap FileTree into a fresh image:

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
  cd Kendrick
  git clone https://github.com/SergeStinckwich/SciSmalltalk.git
```

* Attach to filetree repository and load latest packages (use correct path to your filetree download/clone):

```Smalltalk
repo := 'Add you repo path here'.
Gofer new
    repository: (MCFileTreeRepository new directory: 
                    (FileDirectory on: repo));
    package: 'Kendrick';
    load.
```