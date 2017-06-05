# Jupyter

### <a name="toc"></a>Table of Contents

[Version Control](#version_control)


---
### <a name="version_control"></a> Version Control
- By only tracking the input cells of a notebook Git will perform the diff 
and history commands as expected.
- A Git filter is created to pass the notebooks to before version control is
 implemented.
- install package **nbstripout**

```
pip install nbstripout
```

```
conda install -c conda-forge nbstripout
```

For any repository to use this feature navigate to the directory containing 
the .git file and enter the command.

```
nbstripout --install
```


[Table of Contents](#toc)

