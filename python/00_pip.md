# Python Package Index pip

### <a name="toc"></a>Table of Contents

[Installation](#installation)

[Configuration](#configuration)

[Site Packages Installation Directory](#site_pkgs_dir)

[Install Packages](#install_packages)

[List Outdated Packages](#list_outdated_packages)

[Change Version of an Installed Package](#change_version)

[Create Wheel](#create_wheel)

[Package Configuration](#package_configuration)

---

### <a name="installation"></a> Installation

#### Dependencies

```
pip install wheel
```

#### Install Without Internet Connection

  1. Download get-pip.py
  1. On a computer with an internet connection create the following wheels.
    - pip
    - setuptools
  1. Move the wheels to the computer without an internet connection.
  1. Call the following command
  
```
$ python get-pip.py --no-index --find-links=WheelHouseDirectory
```
  
[Table of Contents](#toc)

---

### <a name="configuration"></a> Configuration

#### List Format
Add a file named **pip.conf** with the following lines to the virtual 
environment to define the list format.

```
[global]
format = columns  
```

[Table of Contents](#toc)

---

### <a name="site_pkgs_dir"></a> Site Packages Installation Directory

```
$ python -c "from distutils.sysconfig import get_python_lib; print get_python.lib()"
```

[Table of Contents](#toc)

---

### <a name="install_packages"></a> Install Packages

#### Install a Single Package

```
pip install PackageName
```

#### Install Packages From requirements.txt File

```
pip install -r requirements.txt
```

#### Install a Package from a Wheel

  - If you do not want to use the cached wheel then add the following argument.
  
```
--no-cache-dir
```

```
pip install --no-index --find-links=WheelHouseDirctory PackageName
```

#### Install Package in Developer Mode
This option allows a package to be actively developed while being installed 
in a Python interpreter.

```
pip install -e .
```

[Table of Contents](#toc)

---

### <a name="list_outdated_packages"></a> List Outdated Packages

```
pip list -o
```

[Table of Contents](#toc)

---

### <a name="change_version"></a> Change Version of an Installed Package

#### Upgrade to the Latest Version

```
pip install --upgrade PackageName
```

#### Install a Previous Version

```
pip install --upgrade PackageName==Version
```

[Table of Contents](#toc)

---

### <a name="create_wheel"></a> Create Wheel

#### Create Wheel for a Single Package

```
pip wheel --wheel-dir=WheelHouseDirectory PackageName
```

#### Create Wheel for Multiple Packages

```
pip wheel --wheel-dir=WheelHouseDirectory -r requirements.txt
```

[Table of Contents](#toc)

---

### <a name="package_configuration"></a> Package Configuration
The package configuration may be maintained by a single text file, which is 
commonly called "requirements.txt".  Boolean operations may also be used in 
these configuration files.  To create a snapshot of the current interpreter 
use the following command.

```
pip freeze > requirements.txt
```

[Table of Contents](#toc)

