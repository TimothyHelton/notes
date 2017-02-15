# Pandas

### <a name="toc"></a>Table of Contents

[Import](#import)

[Binning](#binning)

[Data Frames](#data_frames)

[Excel](#excel)

[Index](#index)

[Input Output](#io)

[Multiple Indices](#multiple_indices)

[Outliers](#outliers)

[Read Files](#read_files)

[Read HTML](#read_html)

[read_from_clipboard](#read_from_clipboard)

[Series](#series)

---

### <a name="import"></a> Import

```
import pandas as pd
```

  - if using plotting functions in a Jupyter notebook adding the 
  following imports is helpful.
   
```
import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd

from IPython.core.interactiveshell import InteractiveShell
InteractiveShell.ast_node_interactivity = "all"
%matplotlib inline
```

[Table of Contents](#toc)

---

### <a name="binning"></a> Binning
Binning is capable of placing the count of one list into the spans of 
another list.  This technique is useful for generating histograms.

```
years = [1900, 1991, 1992, 2008, 2012, 2015, 1987, 1969, 2013, 2008, 1999]
bins = list(range(1960, 2021, 10))
decade_bins = pd.cut(years, bins)

# View the bins
decade_bins.categories

# View the values
pd.value_counts(decade_bins)

# State the number of bins
pd.cut(years, 2, precision=1)
```

[Table of Contents](#toc)

---

### <a name="data_frames"></a> Data Frames

#### add
Use this method to add two data frames together

  - use the **fill_value=0** argument to replace NaN with 0

#### astype
Change the view data type of a column. 

#### combine_first
Replace null values in the first DataFrame with values from the second 
DateFrame.

  - **NOTE**: If the first DataFrame is missing a row that exists in the 
  second DataFrame that row will be added as well.

```
df_1.combine_first(df_2)
```

#### columns
List the column names

  - access the column data by using attribute notation (handle.name) or 
  dictionary notation (handle['name'])
  - **If the column name is more than one word you must use the dictionary 
  notation.**
  
#### concat
Combine DataFrames

  - if the axis argument is set to 1 the data frames will be combined as 
  columns. 
```
pd.concat([df_1, df_2], ignore_index=True)
```

#### cumsum
Returns a cumulative sum for each column

  - to return the cumulative sum for each row add the argument **axis=1**

#### columns.names
*list* Add column header names to displayed output

#### count
Counts the number of times a field is found. This method works well in 
conjunction with the groupby method.

```python
data.groupby(data.field).count()
```

#### corr
Return the correlation of the data columns.

#### describe
Returns summary statistics for the data frame.

#### drop
Remove an index (row or column)

  - Operation is not done in place by default.
    - use the argument **inplace=True** to change original DataFrame
  - Add the argument **axis=1** to drop a column instead of a row.

  - Example: remove row named "b"

```
df = df.drop['b']
```

  - Example: remove column named "b"
   
```
df = df.drop['b', axis=1]
```

#### dropna
Returns a DataFrame with all rows containing any null values removed.

  - argument **how='all'** will only remove the rows that contain all null 
  values
  - argument **axis=1** will remove the null columns in lieu of the rows
  - argument **thresh** set to an integer n, will remove rows or columns 
  with less than n null values
  
#### drop_duplicates
Remove all duplicates

  - calling the method without arguments will drop duplicates based on all 
  columns

```
df.drop_duplicates()
```

  - calling the method with the argument of a column name will only drop the
   duplicate rows based on that column keeping the first instance.

```
df.drop_duplicates(['key_1'])
```

  - providing a column name and the argument **keep** equal to 'last' 
  will remove the duplicate rows and keep the last instance.
  
```
df.drop_duplicates(['key_1', keep='last'])
```

#### duplicated
Returns a boolean Series stating if the rows are duplicates or not keeping 
the first instance.

```
df.duplicated()
```

#### fillna
fills all the null values with the given value.

  - If a **dictionary** is passed to fillna it is possible to assign 
  different fill values based on column.
  - argument **inplace=True** will permanently alter the original DataFrame.

#### groupby
replaces the index by a given column

```python
data.groupby(data.new_field)
```

#### head
Returns the first n rows

#### idxmin
Returns the index of each column maximum value

  - to find index of the maximum values for each of the rows enter the 
  argument **axis=1**
  
#### idxmin
Returns the index of each column minimum value

  - to find index of the minimum values for each of the rows enter the 
  argument **axis=1**
  
#### index.names
*list* Add index header names to the displayed output

#### ix
Returns the row data (handle.ix[3])

  - **If additional rows and columns are added using this command it will 
  hae the same effect as calling reindex.**

#### loc
Used to find or replace values in place.

```python
data.loc[rows, columns]

# All rows one column
data.loc[:, column]

# All rows with a column value of '-'
data.loc[column == '-', 'column'] = None
```
#### map
Allows columns to be added to a DataFrame and the values to be matched to 
another column instead of the index.

#### max
Find the maximum value of each column

  - to find the maximum value for the rows enter the argument axis=1
  
#### median
Return the median value

#### merge

  - combines two data frames common elements
  - the column used to merge must exist in each DataFrame
  - to merge on a specific column use the **on** argument
  - to specify how the merge is completed use the **how** argument
    - **left**: use only keys from the left frame
    - **right**: use only keys from the right frame
    - **inner**: use union of keys from both frames
    - **outer**: use intersection of keys from both frames
  - if multiple columns have the sme name in both DataFrames you may define 
  the suffix to use with the **suffixes** argument

#### min
Find the minimum value of each column
  
  - to find the minimum value for the rows enter the argument **axis=1**
  
#### pct_change
Returns the item by item percent change along the columns for each row.

  - to view the percent change across the rows enter the argument **axis=1**

#### Pivoting
Create new views of the data.

```
df.pivot(<index>, <column>, <value>)
```

#### plot
Uses matplotlib to plot each column of the data frame.

  - **make sure to import matplotlib before calling this method**
  - to see the graph call **plt.show()**
  - if using Jupyter notebooks call **%matplotlib inline**

#### reindex
Allows rows or columns to be reindexed

  - **if no arguments are passed the rows will be reindexed, and if the 
  columns argument is passed the columns will be reindexed.
  
#### sign
Return a 1 or -1 depending on the sign of the DataFrame value

#### slicing

  - slice a DataFrame like a numpy array
  - for multiple conditions use an &
  
```
df{(df.key1 > value) & (df.key2 <= value)]
```

#### stack
This method will turn a DataFrame into a hierarchical *Series*

  - **NOTE**: the null values will be removed

```
df.stack()
```

#### sum
Returns the sum of the columns

  - to sum the rows enter the argument **axis=1**

#### swaplevel
If multiple indices are used this method will swap their order

  - to swap the columns indices add the argument **axis=1**
  
#### tail
Returns the last n rows

#### take
Reorder an index based on a list of integers.

```
df.take(new_index_list)
```

#### transpose
Swap the index with the columns.

#### unstack
Turn a hierarchical Series into a DataFrame.

[Table of Contents](#toc)

---

### <a name="excel"></a> Excel

#### Required Installs

```
pip install xlrd
pip install openpyxl
```

#### Open Excel File

```
xls_file = pd.ExcelFile('file_name.xlsx')
data_frame = xls_file.parse('Sheet1')
```

[Table of Contents](#toc)

---

### <a name="index"></a> Index
If the Index class is used to define the index or columns then the name may 
be defined in one line.

```
df = pd.DataFrame(np.arange(8).reshape(2, 4),
                  index=pd.Index(['LA', 'SF'], name='city'),
                  columns=pd.Index(list('ABCD'), name='letter'))
```

[Table of Contents](#toc)

---

### <a name="io"></a> Input Output 

  - data
    - pd.io.data.get_data_yahoo() may be used to get stock prices from yahoo
     finance
     
[Table of Contents](#toc)

---

### <a name="multiple_indices"></a> Multiple Indices
 
#### Multi-Index Series

  - Assigning multiple indices to a Series will cause it to act like a 
  DataFrame.
  - **unstack** Returns a DataFrame of the multi-index Series
  
```
group = sorted([1, 2] * 3)
idx = ['a', 'b', 'c'] * 2
ser = pd.Series(np.random.randn, index=[group, idx])
df = ser.unstack()
```

[Table of Contents](#toc)

---

### <a name="outliers"></a> Outliers
Find values greater than a prescribed number.  In the example 3 was chosen.

```
df[(np.abs(df) > 3).any(1)]
```

[Table of Contents](#toc)

---

### <a name="read_files"></a> Read Files

```
df = pd.read_csv()
```

[Table of Contents](#toc)

---

### <a name="read_html"></a> Read HTML

#### Dependencies

```
pip install beautifulsoup4
pip install html5lib
```

#### Import Read HTML

```
from pandas import read_html
```

#### Create List of Data Frames

```
url = 'string_address_here'
df_list = pd.io.html.read_html(url)
```

[Table of Contents](#toc)

---

### <a name="read_from_clipboard"></a> Read from Clipboard
This function will take anything on the system clipboard and attempt to 
convert it into a DataFrame.

```
pd.read_clipboard()
```

[Table of Contents](#toc)

---

### <a name="series"></a> Series

#### combine_first
Replace null values in one Series with the corresponding values from another
 Series.
 
```
ser_1.combine_first(ser_2)
```

#### concat
Combine two Series

```
# Combine two Series into a single Series
pd.concat([ser_1, ser_2], axis=0)

# Combine two Series into a single Series with hierarchial index
pd.concat([ser_1, ser_2], axis=0, key=['cat_1', 'cat_2'])

# Combine two Series into a DataFrame
pd.concat([ser_1, ser_2], axis=1)
```

#### drop
Remove an index row

  - Operation is not done in place.
    - use the **inplace=True** argument to save 
  - Example drop row "b"
  
```
ser.drop['b']
```

#### dropna
Removes all null values.

#### isnull
Returns boolean array based on null value.

#### rank
Return the value rank with respect to index.

#### reindex
Will assign a new index list to the series.

  - **fill_value** argument will insert a specific value for missing data.
  - **method** argument allows functions to define the reindex
    - **ffill** Forward Fill will propagate a known value for missing data 
    until a new known value is found.  Then the new value is propagated for 
    missing data until the next known value is found.
    - **bfill** Backward Fill is the same as Forward Fill only the 
    propagation goes backward.
    - **nearest** Uses the nearest value to propagate unknown values.

#### replace
Where loc is useful for replacing values based on index this method works 
based on value.  The following code would replace all values of 10 with 100 
and 40 with 400.

```
ser.replace([10, 40], [100, 400])
```

#### sort_index
Will sort the series based on index when no arguments are provided.

#### sort_values
Will sort the series based on value when no arguments are provided.

#### to_frame
Method will turn Series into a DataFrame.

#### unique
Returns the unique values of a series.

#### value_counts
Returns the number of times each value occurs in the series.

[Table of Contents](#toc)

