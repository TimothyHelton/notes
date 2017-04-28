# Python

### <a name="toc"></a>Table of Contents


[groupby](#groupby)

[Installation](#installation)

[Import Order](#import_order)


---
### <a name="groupby"></a> groupby
```python
from itertools import groupby

groupby(object, key=func)
```

[Table of Contents](#toc)


---

### <a name="installation"></a> Installation

  - Download Python tar ball from [www.python.org](https://www.python.org)
  - open the tar ball
  - navigate to the new source directory
  
```
$ tar -xf <python_tar_ball.tar.gz>
$ cd <pythonSRC>
```

  - Configure the make file

```
./configure --prefix=/home/thelton/usr/local --exec-prefix=/home/thelton/usr/local --enable-shared --with-ensurepip=install
```

  - If gcc will not work include the **--without-gcc** argument
  - Install locally and create link to python

```
$ make altinstall
$ cd ~/usr/local/bin
$ ln -s <python_version> python
```

[Table of Contents](#toc)

---

### <a name="import_order"></a> Import Order

1. Standard Library Modules
1. Third-party Modules
1. User Modules

[Table of Contents](#toc)
