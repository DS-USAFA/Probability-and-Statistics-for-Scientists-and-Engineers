# Objectives {-}


## Descriptive Statistical Modeling  

### 1 - Data Case Study  

1) Use R for basic analysis and visualization.  

2) Compile a report using `knitr`.  


### 2 - Data Basics  

1) Define and use properly in context all new terminology to include, but not limited to, case, observational unit, variables, data frame, associated variables, independent, and discrete and continuous variables.   

2) Identify and define the different types of variables.  

3) Given a study description, explain the research question.  

4) Create a scatterplot in `R` and determine the association of two numerical variables from the plot.  


### 3 - Overview of Data Collection Principles  

1) Define and use properly in context all new terminology.  

2) From a description of a research project, at a minimum be able to describe the population of interest, the generalizability of the study, the response and predictor variables, differentiate whether it is observational or experimental, and determine the type of sample.  

3) Explain in the context of a problem how to conduct a sample for the different types of sampling procedures.  


### 4 - Studies  

1) Define and use properly in context all new terminology.  

2) Given a study description, be able to identify and explain the study using correct terms.  

3) Given a scenario, describe flaws in reasoning and propose study and sampling designs.  


### 5 - Numerical Data  

1) Define and use properly in context all new terminology.  

2) Generate in `R` summary statistics for a numeric variable including breaking down by cases.  

3) Generate in `R` appropriate graphical summaries of numerical variables.  

4) Be able to interpret and explain output both graphically and numerically.  


### 6 - Categorical Data  

1) Define and use properly in context all new terminology.  

2) Generate in `R` tables for categorical variable(s).   

3) Generate in `R` appropriate graphical summaries of categorical and numerical variables.  

4) Be able to interpret and explain output both graphically and numerically.  


## Probability Modeling  

### 7 - Probability Case Study  

1) Use R to simulate a probabilistic model.  

2) Use basic counting methods.  


### 8 - Probability Rules  

1) Define and use properly in context all new terminology related to probability to include but not limited to: outcome, event, sample space, probability.  

2) Apply basic probability and counting rules to find probabilities.  

3) Describe the basic axioms of probability.  

4) Use `R` to calculate and simulate probabilities of events.  


### 9 - Conditional Probability  

1) Define conditional probability and distinguish it from joint probability.  

2) Find a conditional probability using its definition.   

3) Using conditional probability, determine whether two events are independent.   

4) Apply Bayes' Rule mathematically and via simulation.  


### 10 - Random Variables  

1) Define and use properly in context all new terminology.  

2) Given a discrete random variable, obtain the pmf and cdf, and use them to obtain probabilities of events.  

3) Simulate random variable for a discrete distribution.  

4) Find the moments of a discrete random variable.  

5) Find the expected value of a linear transformation of a random variable.  


### 11 - Continuous Random Variables  

1) Define and properly use the new terms to include probability density function (pdf) and cumulative distribution function (cdf) for continuous random variables.  

2) Given a continuous random variable, find probabilities using the pdf and/or the cdf.  

3) Find the mean and variance of a continuous random variable.  


### 12 - Named Discrete Distributions  

1) Recognize and setup for use common discrete distributions (Uniform, Binomial, Poisson, Hypergeometric) to include parameters, assumptions, and moments.   

2) Use `R` to calculate probabilities and quantiles involving random variables with common discrete distributions.  


### 13 - Named Continuous Distributions  

1) Recognize when to use common continuous distributions (Uniform, Exponential, Gamma, Normal, Weibull, and Beta), identify parameters, and find moments.   

2) Use `R` to calculate probabilities and quantiles involving random variables with common continuous distributions.  

3) Understand the relationship between the Poisson process and the Poisson & Exponential distributions.   

4) Know when to apply and then use the memory-less property.  


### 14 - Multivariate Distributions  

1) Define (and distinguish between) the terms joint probability mass/density function, marginal pmf/pdf, and conditional pmf/pdf.  

2) Given a joint pmf/pdf, obtain the marginal and conditional pmfs/pdfs.  

3) Use joint, marginal and conditional pmfs/pdfs to obtain probabilities.  


### 15 - Multivariate Expectation  

1) Given a joint pmf/pdf, obtain means and variances of random variables and functions of random variables.  

2) Define the terms covariance and correlation, and given a joint pmf/pdf, obtain the covariance and correlation between two random variables.  

3) Given a joint pmf/pdf, determine whether random variables are independent of one another.   

4) Find conditional expectations.  


### 16 - Transformations  

1) Given a discrete random variable, determine the distribution of a transformation of that random variable.  

2) Given a continuous random variable, use the cdf method to determine the distribution of a transformation of that random variable.   

3) Use simulation methods to find the distribution of a transform of single or multivariate random variables.  


### 17 - Estimation Methods  

1) Obtain a method of moments estimate of a parameter or set of parameters.    

2) Given a random sample from a distribution, obtain the likelihood function.   

3) Obtain a maximum likelihood estimate of a parameter or set of parameters.  

4) Determine if an estimator is unbiased.  


## Inferential Statistical Modeling  

### 18 - Hypothesis Testing Case Study  

1) Define and use properly in context all new terminology: *point estimate*, *null hypothesis*, *alternative hypothesis*, *hypothesis test*, *randomization*, *permutation test*, *test statistic*, and *$p$-value*.  

2) Conduct a hypothesis test using a permutation test to include all 4 steps.


### 19 - Hypothesis Testing with Simulation  

1) Know and properly use the terminology of a hypothesis test: *null hypothesis*, *alternative hypothesis*, *test statistic*, *$p$-value*, *randomization test*, *one-sided test*, *two-sided test*, *statistically significant*, *significance level*, *type I error*, *type II error*, *false positive*, *false negative*, *null distribution*, and *sampling distribution*.  

2) Conduct all four steps of a hypothesis test using randomization.  

3) Discuss and explain the ideas of decision errors, one-sided versus two-sided tests, and the choice of a significance level.  


### 20 - Hypothesis Testing with Known Distributions  

1) Know and properly use the terminology of a hypothesis test: *permutation test*, *exact test*, *null hypothesis*, *alternative hypothesis*, *test statistic*, *$p$-value*, and *power*.   

2) Conduct all four steps of a hypothesis test using probability models.  


### 21 - Hypothesis Testing with the Central Limit Theorem  

1) Explain the central limit theorem and when it can be used for inference.   

2) Conduct hypothesis tests of a single mean and proportion using the CLT and `R`.   

3) Explain how the $t$ distribution relates to the normal distribution, where it is used, and how changing parameters impacts the shape of the distribution.   


### 22 - Additional Hypothesis Tests  

1) Conduct and interpret a goodness of fit test using both Pearson's chi-squared and randomization to evaluate the independence between two categorical variables.  

2) Explain how the chi-squared distribution relates to the normal distribution, where it is used, and how changing parameters impacts the shape of the distribution.   

3) Conduct and interpret a hypothesis test for equality of two means and equality of two variances using both permutation and the CLT.   
 
4) Know and check assumptions for the tests in the reading.  


### 23 - Analysis of Variance  

1) Conduct and interpret a hypothesis test for equality of two or more means using both permutation and the $F$ distribution.   

2) Know and check assumptions for the tests in the reading.  


### 24 - Confidence Intervals  

1) Using asymptotic methods based on the normal distribution, construct and interpret a confidence interval for an unknown parameter.   

2) Describe the relationships between confidence intervals, confidence level, and sample size.  

3) Describe the relationships between confidence intervals and hypothesis testing.  

4) Calculate confidence intervals for proportions using three different approaches in `R`.  


### 25 - Bootstrap  

1) Use the bootstrap to estimate the standard error of the sample statistic.  

2) Using bootstrap methods, obtain and interpret a confidence interval for an unknown parameter, based on a random sample.   

3) Describe the advantages, disadvantages, and assumptions behind bootstrapping for confidence intervals.  


## Predictive Statistical Modeling  

### 26 - Linear Regression Case Study  

1) Using `R`, generate a linear regression model and use it to produce a prediction model.  

2) Using plots, check the assumptions of a linear regression model.  


### 27 - Linear Regression Basics  

1) Obtain parameter estimates of a simple linear regression model given a sample of data.   

2) Interpret the coefficients of a simple linear regression.  

3) Create a scatterplot with a regression line.  

4) Explain and check the assumptions of linear regression.   

5) Use and be able to explain all new terms.  


### 28 - Linear Regression Inference  

1) Given a simple linear regression model, conduct inference on the coefficients $\beta_0$ and $\beta_1$.  

2) Given a simple linear regression model, calculate the predicted response for a given value of the predictor.  

3) Build and interpret confidence and prediction intervals for values of the response variable.  


### 29 - Regression Diagnostics  

1) Obtain and interpret $R$-squared and the $F$-statistic.  

2) Use `R` to evaluate the assumptions of a linear model.  

3) Identify and explain outliers and leverage points.  


### 30 - Simulated-Based Linear Regression  

1) Using the bootstrap, generate confidence intervals and estimates of standard error for parameter estimates from a linear regression model.  

2) Generate and interpret bootstrap confidence intervals for predicted values.  

3) Generate bootstrap samples from sampling rows of the data or sampling residuals. Explain why you might prefer one over the other.   

4) Interpret regression coefficients for a linear model with a categorical explanatory variable.   


### 31 - Multiple Regression  

1) Create and interpret a model with multiple predictors and check assumptions.   

2) Generate and interpret confidence intervals for estimates.  

3) Explain adjusted $R^2$ and multi-collinearity.  

4) Interpret regression coefficients for a linear model with multiple predictors.   

5) Build and interpret models with higher order terms.  


### 32 - Logistic Regression  

1) Using `R`, conduct logistic regression and interpret the output and perform model selection.  

2) Write the logistic regression model and predict outputs for given inputs.  

3) Find confidence intervals for parameter estimates and predictions.  

4) Create and interpret a confusion matrix.  




