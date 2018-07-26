# Neural Networks and Deep Learning
[deeplearning.ai](https://www.coursera.org/learn/neural-networks-deep-learning/home/welcome)

### <a name="toc"></a>Table of Contents


[Bias and Variance](#bias_variance)

[Data Splits](#data_splits)

[Exponentially Weighted Average](#exponentially_weighted_average)

[Mini-Batch Sizes](#minibatch_sizes)


---
### <a name="bias_variance"></a> Bias and Variance
Bias Error
- Simplifying assumptions made by a model
- Parametric Algorithms have a high bias
    - Fast to learn
    - Easy to understand
    - Less flexible
    - Low performance on complex problems
- High Bias
    - Linear Regression
    - Logistic Regression
    - Linear Discriminant Analysis
- Low Bias
    - Decision Trees
    - k-Nearest Neighbors
    - Support Vector Machines

Variance Error
- Amount that the estimate will change if different training data was used
- All algorithms will have some variance error
- Nonparametric algorithms have high variance
    - slow to learn
    - not easy to understand
    - lots of flexibility
    - high performance on complex problems
- High Variance
    - Decision Trees
    - k-Nearest Neighbors
    - Support Vector Machines
- Low Variance
    - Linear Regression
    - Logistic Regression
    - Linear Discriminant Analysis

Model may be underfit, overfit, or "just right".
To measure the state of the model use:
- Training set error
- Validation set error

| Training Set Error | Validation Set Error | Model State          |
|--------------------|----------------------|----------------------|
| Low (1%)           | High (15%)           | High Variance        |
| High (11%)         | High (16%)           | High Bias            |
| High (15%)         | High (30%)           | High Bias & Variance |
| Low (0.5%)         | Low (1%)             | Low Bias & Variance  |

#### Recipe
1. Does model have high bias? (evaluate training set performance)
    - Increase network size (always works)
    - Train longer (never hurts)
    - Change network architecture (may not work)
1. Does the model have high variance? (evaluate validation set performance)
    - Get more data
    - Regularize data
    - Change network architecture (may not work)

**With Big Data there is no longer a Bias Variance trade off.**
- Methods exist to alter the bias or variance independently using deep
learning.

[Table of Contents](#toc)


---
### <a name="data_splits"></a> Data Splits
Dataset are divided into **training**, **validation**, and **test** sets.
- Traditional datasets with less than 10,000 samples use split ratios:
    - 70, 15, 15
    - 60, 20, 20
- Big Data with over 1,000,000 samples have better performance with different
ratios:
    - 98, 1, 1
    - 99, 0.5, 0.5
    - 99.5, 0.25, 0.25

**Make sure the validation and test sets come from the same distribution.**
- It is ok if the training set has augmented samples.

[Table of Contents](#toc)


---
### <a name="exponentially_weighted_average"></a> Exponentially Weighted Average
$$v_t = \beta * v_{t-1} + (1 - \beta) * \sigma_t$$

- Represents the average over time units:
$$\frac{1}{1 - \beta}$$

[Table of Contents](#toc)


---
### <a name="minibatch_sizes"></a> Mini-Batch Sizes
- Data < 2000 samples: just use batch gradient decent and evaluate the entire
dataset for each iteration of gradient decent.
- Big Data:
    - use a mini-batch size that is a power of 2
        - common choices 64, 128, 256, 512
    - ensure the each batch will fit in memory (cpu or gpu)

[Table of Contents](#toc)


