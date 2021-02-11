# KNN Classification

#### If it walks like a duck, quacks like a ducck then its probably a duck

#### Basically, just do what your K-nearest neighbors do
#### Use training data to classify a new record by its neighbors
- Form of supervised learning

### NN classifiers
- Require 3 things:
    - Set of labeled records
    - Distance to compute between records
    - Value of k, number of nearest neighbors
- To classify an unknown record:
    - Compute distance to other records
    - Identify k nearest neighbors
    - use class labels to determine the class lable of unkown record(eg majority vote)

### Caveats:
- Supervised Learning needs a dataset to exist already
- K and Distance are extremely important metrics
- If the k then the classification will weigh heavily on its few neighbors
- Larger K is better for classification 
- Distance is measurment of similarity, increasing K increases Distance of points being considered for classification
- Higher K can balance out noise
- Larger K also increases computational complexity

### Choice of distance measure in KNN:
- Euclidean Distance is most common measure
- Determine class from nearest neighbor list
    - Take the majority vote of class labels among knearest negihbors
    - Weight the vote according to distance
        - weight factor $w = 1/d^2$
    - Further a point is away, less of a weight
    - Ideally you want decreasing weight as distance increases
- If k is to small it will be noise sensitive
- For documents, cosine is better than correlation or euclidean
- Data preprocessing is often required
    - Attributes may have to be scaled numerically to prevent measures by being dominated by one attribute
    - EX Height, Weight and Income are not scaled to each other
- Time series are often standardized to have 0 means a standard deviation of 1

### Few other classification notes
- Nearest Neighbor classifiers are local
- Produces decision boundaries of arbitrary shapes
- a 1-nn decision boundary is a voronoi diagram

## KNN Regression:
- Given a dimension, x and a function y(x) given data x, y(x) as a training set, estimate  y(x) for an unseen x
- or the regression of y on x
- for a linear function of y, its actually a parametric regression
- Ordinary least squares can be used to determine a linear regression
- Non-Parametric: We will not come up with a formula, instead we will just come up with an estimate for any x not in the training set
- Regression depends on the training set being statistically related
- iid: identical distribution
- If the distribution changes, regression will not work
- the *real* distribution is never knonw but we make the best possible estimate

### KNN Regression Approach:
- We have K amounts of points within distance 
- $y(x_0) = 1/k \sum{y(x_j)} j\in Q$
- Simple average 
- But, account for distance and use an average weighted by distance
