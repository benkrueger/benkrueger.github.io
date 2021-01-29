# Statistics Module 1 Notes
### Statistics it the study of and practice of doing studies to get data to find insight about some thing. 

## Population and Sample
- population - collection of all items under a study
- Sample - the part of a population from which data is obtained

## Inferential Statistics
- Methods for drawing and measuring reliability of conclusions about a population based on information obtained from a sample of the population
- Simple random sampling
    - Simple rand sampling is a procescure where for each possible sample of a given size every sample is equally likely to be obtained

## Variables:
- Variables are the thing you are measuring
- Variables can be either categorable or quantitative
#### Categorical Variables:
    - Two types: Ordinal and nominal
        - Ordinal variables have a logical ordering (like letter grades)
        - Nominal Variables have no logical ordering

#### Quantitative Variables:
- Can be discrete or continuous

## Statistical Studies:
### Observational:
- Only observe subjects
- Can be retrospective, Cross sectional or Prospective
- Prospective studies observe data over time
### Experiments
- Involve modifying a group somehow
- Must be designed to:
1. Control effects of variables
2. Be repeatable

### Frequency and Probablility distributions
- Frequency is the measured about of some outcome
- Probability is the statistical chance that outcome will happen

EX: Imagine you have a 4 sided dice that you can roll, one would imagine each side would have a equal outcome of 1 in 4.
Now imagine you rolled said dice and recorded the outcome in a table like this:

|Outcome|Probability|Frequency|Frequency(%)|
|---|---|---|---|
|1|.25|1|25%|
|2|.25|3|75%|
|3|.25|0|0|
|4|.25|0|0|

So theoretically the frequency distribution should match the probability as the number of rolls N increases
If that is not the case, there may be something wrong with your assumption about probability

---
# Chapter 3

## Measures of Center
- Measures of center are statistics about a dataset like:
- Mean 
- Median
- Mode

### Sample Mean
- Sample mean or $\bar{x} = (x1 +...+xn)/n$
- Can also be written $(\sum_{ }x_i/n)$
- Upsides: Very easy to compute
- Susceptible to outliers

### Median
- Order all data and take mid value in order
- take average of 2 midpoints if even number of data
- Less susceptible to outliers
    - useful in salary metrics

### Modes
- The most frequently occuring value in a dataset
- Not hugely useful
- Makes qualitative sense sometimes

### Skew in data
![](./skewed.png)

- Data is said to have a Positive or "Right" skew if the Medians < Mean
- Data is said to be "Symetric" if Median = Mean
- Data is said to be "Negative" or "Left" skewed if Mean < Median


### Sample Mean
$\bar{x} = \sum{x_i}/n$

###### Range: largest value minus smallest value

### Sample Standard Deviation
$ s = \sqrt{{\sum{x_i-\bar{x_i}}}/n-1}$

- Upsides: uses all datapoints
- Downsides: hard to compute by hand

---

### Five Number summary
- Quartiles
    - Split up data into 4 equal blocks
- The five number summary is $Min,Q_1,Q_2,Q_3,Q_4, Max$

### Lower and upper limit
 - $IQR = Q_3 - Q_1$
 - $Lower limit = Q_1 - 1.5*IQR$
 - $Upper Limit = Q_3 + 1.5*IQR$

### Boxplots
###### Look like this:
![](./boxplots.png)

### Descriptive terms for Populations and Samples:
- Sample size: $n$
- Population: $N$
- Sample Mean: $\bar{x}$
- Population mean: $\sum{x_i}/N = \mu$
- Standard Deviation for sample Size: $s = \sqrt{(\sum{x_i - \mu}/n)^2}$
- Standard Deviation for population: $\sigma = \sqrt{(\sum{x_i})^2/N}$
- Parameter: Descriptive measure for a population
- Statistic - Descriptive measure of a sample

---
## Probability
---

$P = f/N$
#### Where $f$ = frequency of outcomes
#### And $N$ = possible outcomes

$P(E) = f/N$

Probability of Event $E$ as a function of $f$ and $N$

Law of large numbers
- As you increase the number of iterations the permutations change but trend towards the probability

### Basic Properties of Probabilities:
1. The probability of an event is always between 1 and 0
2. if $p=0$ it is known as an *impossible event*
3. The probability of an event where $p=1$ is a *certain event*


### The Special Addition Rule:
#### If the event A and B are *mutually exclusive*:
 $P(A or B) = P(A) + P(B)$

 ### The Complementation Rule:
 #### For any event E:
 - $P(E) = 1-  P(not E)$
 - $P(E) + P(not E) = 1$

### The General Addition rule
$P(A or B) = P(A) + P(B) - P(AandB)$
 - The last part subtracting $P(AandB)$ is due to the double counting of members in A and B

 ### Conditional Probability Rule:
 ##### If A and B are any two events with $P(A) > 0$ then:
 ##### $P(A|B) = P(AandB)/P(A)$
 
  