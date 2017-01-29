# Linux

### <a name="toc"></a>Table of Contents

[Access Control Lists](#access_ctr_lists)

[Kill Process](#kill_process)

[Replace](#replace)

[sed](#sed)

[Search for Large Files](#search_large_files)

[Symbolic Links](#symbolic_links)

[tar](#tar)

---

### <a name="access_ctr_lists"></a> Access Control Lists 

#### getfacl
Display the access controls.

```
$ getfacl directory_or_file
```

#### setfacl
Set file access controls.

```
$ setfacl -d -m g:group_name:rwX dirctory
```

[Table of Contents](#toc)

---

### <a name="kill_process"></a> Kill Process
  
  - u: user
  
```
$ skill -KILL -u userName
```

[Table of Contents](#toc)

---

### <a name="replace"></a> Replace
Replace multiple pairs of strings in multiple files

  - **from_n**: old text
  - **to_n**: new text
  - **target**: file(s) to replace text

```
$ replace from_1 to_1 from_2 to_2 ... from_n to_n -- target
```

[Table of Contents](#toc)

---

### <a name="sed"></a> sed
Replace text in files

  - **i**: in place (this option will overwrite the existing file)
  - **from**: string to be replaced
  - **to**: string that will be added
  - **g**: apply globally in file
  - **file**: where files are located

```
$ sed -i 's/from/to/g' file
```

[Table of Contents](#toc)

---

### <a name="search_large_files"></a> Search for Large Files

```
$ find -user userName -size +1G -print0 | xargs -0 -n 1 dirname | sort | sed /output_/d | uniq | xargs du -hs | sort -h
```

[Table of Contents](#toc)

---

### <a name="symbolic_links"></a> Symbolic Links

  - create symbolic link

```
$ ln -s target link
```

  - update symbolic link

```
$ ln -sfn target link
```

  - unlink

```
$ unlink link
```

[Table of Contents](#toc)

---

### <a name="tar"></a> tar

  - **c**: create
  - **v**: verbose
  - **f**: archive file
  - **z**: gzip files
  - **tarName.tar**: archive name
  - **Name**: file to be archived
  
```
$ tar -cvfz tarName.tar Name
```

  - **x**: extract

```
$ tar -xvf tarName.tar
```

[Table of Contents](#toc)
