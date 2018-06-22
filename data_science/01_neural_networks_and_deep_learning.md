# Neural Networks and Deep Learning
[deeplearning.ai](https://www.coursera.org/learn/neural-networks-deep-learning/home/welcome)

### <a name="toc"></a>Table of Contents

[Background](#background)

[Convolutional Neural Network (CNN)](#cnn)

[Logistic Regression](#logistic_regression)

[Neuron](#neuron)

[Recurrent Neural Network (RNN)](#rnn)

[Standard Neural Network](#snn)

[Supervised Learning](#supervised_learning)


---
### <a name="background"></a> Background
- Scale drives the accuracy of a neural network.
    - large amounts of ***labeled data*** are required (big data)
        - **n**: variable to denote size of feature vector (rows)
        - **m**: variable to denote size of labeled data (columns)
        - **m_train**: training set
            - {(x^1, y^1), (x^2, y^2), ..., (x^m, y^m)}
        - **X**: matrix of all training inputs
            - X = \[x^1, x^2, ..., x^m]
            - shape: (n, m)
        - **Y**: matrix of all training outputs
            - Y = \[y^1, y^2, ..., y^m]
            - shape: (1, m) for binary classification
        - when only small amounts of data are present a subject matter expert
        could make more accurate output forecasts than a data science model.
    - large amounts of computer ***processing power*** are required

[Table of Contents](#toc)


---
### <a name="cnn"></a> Convolutional Neural Network (CNN)
![Convolutional Neural Network](convolutional_neural_network.jpeg)
#### Common Applications
- Image processing

[Table of Contents](#toc)


---
### <a name="logistic_regression"></a> Logistic Regression
- **x**: input
- **y_hat**: predicted output
    - y_hat = P(y=1 | x)
- **w**: weight parameter
- **b**: intercept parameter
- **sigma**: sigmoid function
- **L**: loss function (applied to a single training example)
- **J**: cost function (applied to all training examples)
    - needs to be a convex function

#### Algorithm
- y_hat = sigma(w.transpose * x + b)
    - y_hat = sigma(z)
    - sigma(z) = 1 / (1 + exp^(z))
        - If z is ***large***: sigma(z) = 1
        - If z is ***small***: sigma(z) = 0
- use loss and cost functions to train parameters **w** and **b**
    - L = -(y * log(y_hat) + (1 - y) * log(1 - y_hat))
        - If y = 1: L = -log(y_hat)
            - so y_hat needs to be large (sigma(large) = 1)
        - If y = 0: L = -log(1 - y_hat)
            - so y_hat needs to be small (sigma(small) = 0)
    - Squared Error results in **poor** results, since gradient decent finding
    local minima
        - L = 1/2 * (y_hat - y)^2
    - **Cost** function is the average of all the parameters predicted using
    the loss function
        - J(w, b) = 1 / m * sum(L(y_hat, y))


[Table of Contents](#toc)


---
### <a name="neuron"></a> Neuron
- Neurons comprise a layer, hidden layer, of a neural network.
- Each neuron accepts an input and performs a mathematical function to produce
an output.

#### Common Functions

##### ReLU (Rectified Linear Unit)
- This function passes any positive value and clips negative inputs to zero.
- Usually outperforms a sigmoid function, since **gradient decent** is better
suited to this function.
    - y = f(x) = max(0, x)

![ReLU](ReLU_function.png)

##### Sigmoid Function
- This function transitions from 0 to 1 about the y-axis using a sinusoidal
shape.
- The portions of the function that are not near x = 0 have a very small slope,
which results in a very small derivative and ***slow*** learning.

![Sigmoid](sigmoid_function.png)

[Table of Contents](#toc)


---
### <a name="rnn"></a> Recurrent Neural Network (RNN)
![Recurrent Neural Network](recurrent_neural_network.png)

- RNN may be trained as a supervised learning problem.

#### Common Applications
- Time Series Problems
- Natural Language Processing

[Table of Contents](#toc)


---
### <a name="snn"></a> Standard Neural Network
![Standard Neural Network](standard_neural_network.png)

[Table of Contents](#toc)


---
### <a name="supervised_learning"></a> Supervised Learning
- **Structured Data**
    - Each feature has a well defined meaning.
        - Data found in a database would be a good example.
- **Unstructured Data**
    - Each feature is defined by a related type of data, but not the actual
    feature itself.
        - Images Identification -> pixel values
        - Word Identification from Audio -> frequency values

[Table of Contents](#toc)

