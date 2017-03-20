# Structured Query Language (SQL)

### <a name="toc"></a>Table of Contents

[K-fold Cross Validation](#k_fold)

[Machine Learning](#machine_learning)

[Types of Data](#types_of_data)

---

### <a name="k_fold"></a> K-fold Cross Validation
- Method to determine if overfitting occurring
- Process:
  - split data into K randomly-assigned segments
  - reserve one segment as your test data
  - train on each of the remaining K-1 segments and measure performance 
  against the test set
  - take the average of the K-1 r-squared scores

[Table of Contents](#toc)

---

### <a name="machine_learning"></a> Machine Learning
- Algorithms that can learn from observational data, and can make 
predictions based on it.

#### Supervised Learning
- Use a training set to teach the model what you are looking for.
  - Use 80% of the training set to develop the model and reserve 20% of the 
  training set to test the model.
   set to test the model
  - Training and Test data sets need to be large enough to contain 
  representatives of all the variation and outliers in the data.
  - The sets must be randomly selected.
  - This is a good method to guard against overfitting.
- Warnings:
  - Make sure the sample sizes are not too small
  - Be cautious of overfitting
  - check if the training data and test data are "remarkably" similar
- Once the model is trained it is applied to data with unknown values.

#### Unsupervised Learning
- The model is not given and "answers" to learn from; it must make sense of 
the data just given the observations themselves.
- Useful when you don't know what you're looking for; looking for latent 
variables.

[Table of Contents](#toc)


---

### <a name="types_of_data"></a> Types of Data 

#### Numerical
- Quantitative Measurements

##### Discrete Data
  - integer based; often counts of some event

##### Continuous Data
  - has infinite number of possible values

#### Categorical
- Qualitative Data that has no inherent mathematical meaning
  - numbers can be assigned to the categories, but the numbers have no 
  mathematical meaning

#### Ordinal
- A mixture of numerical and categorical
- data has mathematical meaning

[Table of Contents](#toc)
