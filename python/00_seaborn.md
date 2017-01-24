# Seaborn

### <a name="toc"></a>Table of Contents

[Dependencies](#dependencies)

[Imports](#imports)

[Box Plot](#box_plot)

[Carpet Plot (Rug Plot)](#carpet_plot)

[Clustermap](#clustermap)

[Combining Plot Styles](#combining_plot_styles)

[Correlation Plot](#correlation_plot)

[Heatmaps](#heatmaps)

[Histograms](#histograms)

[Kernel Density Estimation Plots (KDE)](#kde_plots)

[Regression Plots](#regression_plots)

[Sample Datasets](#sample_datasets)

[Violin Plot](#violin_plot)

---

### <a name="dependencies"></a> Dependencies 

```
pip install matplotlib
pip install numpy
pip install pandas
pip install patsy
pip install scipy
pip install statsmodels
```

[Table of Contents](#toc)

---

### <a name="imports"></a> Imports

```
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from scipy import stats
import seaborn as sns
```

[Table of Contents](#toc)

---

### <a name="box_plot"></a> Box Plot

  - Box plot where whiskers include all points
  
```
sns.boxplot([data1, data2], whis=np.inf)
```

  - Box plot on the horizontal axis

```
sns.boxplot([data1, data2], vert=False)
```

[Table of Contents](#toc)

---

### <a name="carpet_plot"></a> Carpet Plot
Places a stick for every entry in the dataset

```
sns.rugplot(dataset)
plt.ylim(0, 1)
```
  - Add histogram to carpet plot

```
sns.rugplot(dataset)
plt.ylim(0, 1)
plt.hist(dataset, alpha=0.3)
```

[Table of Contents](#toc)

---

### <a name="clustermap"></a> Clustermap
This is a heatmap that combines like values.

  - col_cluster
    - If False the **column** will not be clustered.
  - row_cluster
    - If False the **row** will not be clustered.
  - standard_scale
    - If 0 the rows will be used to set the scale and if 1 the columns will 
    be used.
  - z_score
    - If True the data will be standardized by the Z score.
      - Z score subtracts the mean and divides by the standard deviation.

```
sns.clustermap(dataset)
```

[Table of Contents](#toc)

---

### <a name="combining_plot_styles"></a> Combining Plot Styles
Use dictionary arguments to define the different styles of multiple plots.

```
sns.distplot(dataset, bins=25, rug=True,
             kde_kws={'color': 'indianred', 'label': 'KDE'},
             hist_kws={'color': 'blue', 'label': 'HIST'},
             rug_kws={'color': 'green', 'label': 'RUG'})
```

[Table of Contents](#toc)

---

### <a name="correlation_plot"></a> Correlation Plot
This plot will make a heat map like plot displaying the correlation values 
between variables.

```
sns.corrplot(pandas_dataframe)
```

[Table of Contents](#toc)

---

### <a name="heatmaps"></a> Heatmaps

  - annot
    - This argument will annotate the values used to calculate the heatmap 
    to the map.
  - center
    - This argument sets the location on the heatmap where the location will
     be zero for the color bar.
  - fmt
    - This argument will set the format of the annotation.

```
fig, (ax1, ax2) = plt.subplots(2, 1)

sns.barplot('field1', 'field2', dataset, ax=ax1)
sns.heatmap(dataset, cmap='Blues', cbar_kws={'orientation': 'horizontal'},
            ax=ax2)
sns.heatmap(dataset, annot=True, fmt='d')
```

[Table of Contents](#toc)

---

### <a name="histograms"></a> Histograms

  - Matplotlib
  
```
plt.hist(data_set1, normed=True, alpha=0.5, bins=20)
plt.hist(data_set2, normed=True, alpha=0.5, bins=20)
```

  - Seaborn

```
sns.jointplot(data_set1, data_set2, kind='hex')
```

[Table of Contents](#toc)

---

### <a name="kde_plots"></a> Kernel Density Estimation Plots (KDE)

  - Long Way
  
```
sns.rugplot(dataset)
x_min = dataset.min() − 2
x_max = dataset.max() + 2

x_axis = np.linspace(x_min, x_max, 100)
bandwidth = ((4 * dataset.std()**5) / 3 * len(dataset)))**0.2
     
kernel_list = []
for data_point in dataset:
    # Create a kernel for each point
    kernel = stats.norm(data_point, bandwidth).pdf(x_axis))
    kernel_list.append(kernel)
  
    # Scale for plotting
    kernel = kernel / kernel.max()
    kernel = kernel * 0.4
 
    plt.plot(x_axis, kernel, alpha=0.5)

plt.ylim(0, 1)
kde_sum = np.sum(kernel_list, axis=0)
 
fig = plt.plot(x_axis, kde_sum)
sns.rugplot(dataset)

plt.yticks([])
plt.suptitle(”Sum of the basis functions”)
```

  - Short Way

```
sns.rugplot(dataset)
sns.kdeplot(dataset, bw=bandwidth, label=label, shade=True)
```

  - Cumulative Distribution Function

```
sns.kdeplot(dataset, cumulative=True)
```

[Table of Contents](#toc)

---

### <a name="regression_plots"></a> Regression Plots
Plots fields of a dataset against each other.

  - hue
    - Allows the markers to be different symbols based on another variable.
  - fit_reg
    - If this argument is False the regression line will be excluded.
  - lowess
    - If this argument is True a local regression will be applied.
  - order
    - This argument is the polynomial fit order for the regression line.
  - reg_plot
    - This is the cor function used by lmplot, and can be used like any 
    other plot in seaborn to add regression lines to the figure.

```
fig, (ax1, ax2) = plt.subplots(1, 2, sharey=True)

sns.regplot('field1', 'field2', dataset, ax=ax1)
sns.violinplot(dataset['field2'], dataset['field3'], color='Reds_r', ax=ax2)
```

  - x_jitter or y_jitter
    - Set this argument to a float to slightly space the points around the 
    true value.  This allows ease of visualization.
  - x_estimator
    - This argument will be used to calculate the "estimation" value of each
     bin.
      - Example: x_estimator=np.mean

```
sns.lmplot('field_1', 'field_2', dataset, order=4, x_jitter=0.1,
           scatter_kws={'marker': 'o', 'color': 'indianred'},
           line_kws={'linewidth': 1, 'color': blue')
```

[Table of Contents](#toc)

---

### <a name="sample_datasets"></a> Sample Datasets

```
dataset = sns.load_dataset('tips')
```

[Table of Contents](#toc)

---

### <a name="violin_plot"></a> Violin Plot
Combine a KDE Plot with a Box Plot.  This type of plot will distinguish 
between data that is symmetric about zero or centered on zero.

```
sns.violinplot([data1, data2], inner='stick')
```

[Table of Contents](#toc)

