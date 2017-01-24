# Profiling

### <a name="toc"></a>Table of Contents

[Dependencies](#dependencies)

[Ipython Profiling](#ipython)

[Line Profiling](#line_profiling)

[Memory By Line](#memory_by_line)

[Memory Profiling Verses Time](#memory_vs_time)

---

### <a name="dependencies"></a> Dependencies

```
pip install line_profiler
pip install memory_profiler
```

[Table of Contents](#toc)

---

### <a name="ipython"></a> Ipython Profiling

#### Configuration Files
Add the following lines to the file /.ipython/profile_default/ipython_config.py

```
c.TerminalIPythonApp.extensions = [
    'line_profiler',
    'memory_profiler',
]
```

#### Profile Memory of a Function
Use the -f argument, then state the function name and lastly call the function.

```
%mprun -f func func()
```

#### Profile Memory of a Statement
Here n is the number of cycles to be executed.

```
%memit -r n statement
```

#### Time a Statement

```
%lprun statement
```

#### Profile Time of a Function
Use the -f argument, then state the function name and lastly call the function.

```
%lprun -f func func()
```

#### Profile Time of a Script

```
%prun script()
```

[Table of Contents](#toc)

---

### <a name="line_profiling"></a> Line Profiling
This module will return the individual times required for each line of code.

  - add the LineProfiler to the \_\_builtins\_\_ namespace

```
$ kernprof -l script_to_profile.py
```

  - place a decorator above the function or method to be profiled

```
@profile
def slow_function(a, b, c):
    ...
```

  - view the results

```
$ python -m line_profiler script_to_profile.py.lprof
```

[Table of Contents](#toc)

---

### <a name="memory_by_line"></a> Memory By Line 
This module will return the individual memory usage for each line of code.

**NOTE: This utility may only be run against a file saved to disk.**

  - place a decorator above the function or method to be profiled

```
@profile
def memory_hog_function(a, b, c):
    ...
```

  - measure a file

```
$ python -m memory_profiler script_to_profile.py
```

[Table of Contents](#toc)

---

### <a name="memory_vs_time"></a> Memory Profiling Verses Time
This procedure will produce a graph of the memory usage with respect to time.

  - run the profiler

```
$ mprof run script_to_profile.py
```

  - display the plot
  
```
$ mprof plot
```

  - clean up the temporary files

```
$ mprof clean
```


[Table of Contents](#toc)
