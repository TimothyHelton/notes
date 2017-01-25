# Numpy

### <a name="toc"></a>Table of Contents

[Import](#import)

[Broadcast Matrix Multiplication](#broadcast_matrix_mult)

[Concatenate](#concatenate)

[Generate From Text](#generate_from_text)

[Load Text](#load_text)

[Record Array](#record_array)

---

### <a name="import"></a> Import

```
import numpy as np
```

[Table of Contents](#toc)

---

### <a name="broadcast_matrix_mult"></a> Broadcast Matrix Multiplication 
This is slower than looping

```
u = np.arange(10 * 3).reshape(10, 3)
v = np.arange(10 * 9).reshape(10, 3, 3)
np.einsum('ij, ijk->ik', u, v))
```

[Table of Contents](#toc)

---

### <a name="concatenate"></a> Concatenate 
Use this command to combine arrays.

```
arr = np.arange(9).reshape(3, 3)

# Create new array doubling the rows by adding two instances of arr
arr_rows = np.concatenate([arr, arr], axis=0)

# Create new array doubling the columns by adding two instances of arr
arr_cols = np.concatenate([arr, arr], axis=1)
```

[Table of Contents](#toc)

---

### <a name="generate_from_text"></a> Generate From Text

```
import numpy as np
data = np.genfromtxt(file_name)
```

[Table of Contents](#toc)

---

### <a name="load_text"></a> Load Text

  - Use loadtxt when there is no missing data fields in the text to be 
  imported.
    - If some of the fields are missing use numpy genfromtxt.

| Data Type Formats | String Representation |
| ----------------- | --------------------- |
| boolean | b |
| 32 bit signed integer | i4 |
| unsigned integer | u |
| 64 bit floating-point number | f8 |
| 128 bit complex floating-point number | c16 |
| Python Object | O |
| string | S or a |
| unicode | U |
| raw data (void) | V |

```
import numpy as np

# Get header from file
with open(file_name, 'r') as f:
    header = f.readline().split()

# Generate numpy array with data
variables = ['header_name_1', 'header_name_2']
cols = [header.index(x) for x in variables]
formats = ['f8' for variable in variables]
data = np.loadtxt(file_name, skiprows=2, usecols=cols,
                  dtype={'names': variables, 'formats': formats})
```

[Table of Contents](#toc)

---

### <a name="record_array"></a> Record Array

  - Create from a list of tuples
    - First create an ndarray from a list of tuples
      - Must be a list of tuples (**list of lists will not work**).
      - The data type is very import in this case.  Each item in the dype 
      corresponds to the item in the tuple.
      - The last field of the dtype for each column is the size of the data.
        Without this argument the conversion to an array will create 
        multiple empty columns in the array.
    - After the ndarray is created make a view as a recarray.

```
arr = np.ndarray(list_of_tuples,
                 dtype=[(col1_name, dtype1, (1,)),
                        (col2_name, dtype2, (1,))])
rec_arr = arr.view(np.recarray)
```

[Table of Contents](#toc)

