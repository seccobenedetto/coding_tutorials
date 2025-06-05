
data {
  int<lower=0> N;        // Number of observations
  int<lower=0,upper=1> y[N]; // Binary outcomes (0 or 1)
}
parameters {
  real<lower=0,upper=1> theta; // Probability of success
}
model {
  theta ~ beta(1, 1);         // Prior for theta
  y ~ bernoulli(theta);       // Likelihood
}

