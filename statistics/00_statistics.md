# Statistics

### <a name="toc"></a>Table of Contents

[Definitions](#definitions)

[Bivariate Relationships](#bivariate_relationships)

[Correlation](#correlation)

[Linear Regression](#linear_regression)

[Mean](#mean)

[Median](#median)

[Mode](#mode)

[Probability Density Function](#prob_density_func)

[Standard Deviation](#standard_deviation)

[Variance](#variance)

---

### <a name="definitions"></a> Definitions

| Term | Definition |
| ---- | ---------- |
| ![alt text](average_population.png)| average value for a population |
| ![alt text](average_sample.png) | average value for sample |
| N | population size |
| n | sample size |
| r | Pearson correlation coefficient |
| ![alt text](std_dev.png) | Standard Deviation of x |
| covariance | a descriptive measure of the linear association between two variables |
| negative relationship | multiple variables which have opposite trends |
| population | all specimens in a set |
| positive relationship | multiple variables which follow the same trends |
| sample | a subset of the population specimens |
| sampling error | the difference between corresponding parameters and statistics |
| statistic | a characteristic of a sample |

[Table of Contents](#toc)

---

### <a name="bivariate_relationships"></a>Bivariate Relationships

#### Covariance

  - a descriptive measure of the linear association between two variables
  - only describes **direction** not magnitude
  - has no upper or lower boundary
  - covariance is **POSITIVE**, **NEGATIVE** or **ZERO**
  - positive covariance would be in quadrants I and III
  - Negative covariance would be in quadrants II and IV
  - When there is not a relationship between two variables the covariance 
  would be equal or near zero
  
##### Sample Covariance

![alt text](sample_covariance.png)

##### Population Covariance

![alt text](population_covariance.png)

[Table of Contents](#toc)

---

### <a name="correlation"></a>Correlation

  - Describes the **magnitude** and **direction** of an association
  - Denoted by the lowercase variable r
  - standardized measure of an association (-1 to 1)
  - only applicable to **LINEAR** relationships
  - **Correlation is NOT causation**
  - correlation strength does not necessarily mean the correlation is 
  statistically significant related to sample size
  - correlation is the covariance between the two variables divided by the 
  product of each variables standard deviation
 
![alt text](correlation_long.png)

![alt text](correlation_short.png)

#### Rule of Thumb for Causation

If the following relationship is true then causation exists.

![alt text](causation_rule.png)

[Table of Contents](#toc)

---

### <a name="linear_regression"></a>Linear Regression

  - If you only have data for one variable then the best predictor for 
  future samples would be the mean value of the data.
  - **residuals** or **error** is the measure between individual data points
  to the best fit model.

[Table of Contents](#toc)

---

### <a name="mean"></a> Mean 
- Average of a population
  - sum / number of samples

[Table of Contents](#toc)

---

### <a name="median"></a> Median
- Sort all the values and select the midpoint
- If there is an even number of values then average the two located at the 
midpoint
- **Median is less susceptible to outliers than the mean**
  - whenever you present a mean value also show the median

[Table of Contents](#toc)

---

### <a name="mode"></a> Mode
- most common value in a data set
  - not relevant to continuous numerical data

[Table of Contents](#toc)

---

### <a name="prob_density_func"></a> Probability Density Function
- Probably of data point falling within a range of values.
- If the data is **discrete** then it would be referred to as a 
**Probability Mass Function**
  - Histograms are Probability Mass Functions

- Gaussian Distribution
    - 1 STD: 68.2%
    - 2 STD: 95.4%
    - 3 STD: 99.8%

[Table of Contents](#toc)


---

### <a name="standard_deviation"></a> Standard Deviation
- Standard deviation is the square root of the variance.
- Values outside one standard deviation are considered to be outliers.

```python
import numpy as np

a = np.array([1, 2, 3, 4, 2, 1])
std_dev = a.std()
```

[Table of Contents](#toc)


---

### <a name="variance"></a> Variance
- The average of the squared differences from the mean.
- Population Variance: ![alt text](population_variance.png)
- Sample Variance: ![alt text](sample_variance.png)



1. Find the mean
1. Find differences from the mean
1. Square the differences
1. Average the differences
    - Population: divide by all N samples
    - Sampled Data: divide by N - 1

```python
import numpy as np

a = np.array([1, 4, 5, 4, 8])
population_variance = a.var()
sample_variance = a.var(ddof=1)
```

[Table of Contents](#toc)

