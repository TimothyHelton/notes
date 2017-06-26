# Scikit-Learn

### <a name="toc"></a>Table of Contents


[Data as Table](#data_as_table)

[Estimator API](#estimator_api)


---
### <a name="data_as_table"></a> Data as Table
- It is helpful to think of **Data** as a **Table**
    - the rows are individual elements of the dataset
        - **FEATURES**
        - **X**
    - the columns are quantities related to each element
        - **SAMPLES**

- **Target Array**
    - The target array is the quality of the sample that is being predicted.
        - **y**
    - The target array may be a feature or another metric not contained in 
    the original data table.

[Table of Contents](#toc)


---
### <a name="estimator_api"></a> Estimator API
- Consistency
    - All objects share a common interface drawn from a limited set of 
    methods, wih consistent documentation.
- Inspection
    - All specified parameter values are exposed as public attributes.
- Limited Object Hierarchy
    - Only algorithms are represented by Python classes; datasets are 
    represented in standard formats (NumPY arrays, Pandas DataFrames, SciPy 
    sparse matrices) and parameter names use standard Python strings.
- Composition
    - Many machine learning tasks can be expressed as sequences of more 
    fundamental algorithms, and Scikit-Learn makes use of this wherever 
    possible.
- Sensible Defaults
    - When models require user-specified parameters, the library defines an 
    appropriate default value.
    
#### Estimator API Process
1. Choose a class of model by importing the appropriate estimator class from
 Scikit-Learn
1. Choose model hyperparameters by instantiating this class with desired 
values.
1. Arrange data into a features matrix and target vector.
1. Fit the model to data by calling fit() method.
1. Apply the Model to new data.

- Hyperparameters: parameters that must be set before the model is fit to data.

[Table of Contents](#toc)


