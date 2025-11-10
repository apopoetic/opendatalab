# load packages -----------------------------------------------------------
library(AmesHousing)
library(dslabs)
library(dplyr)
library(ggplot2)
library(rsample)
library(caret)
#library(h2o)
library(tidymodels)


# setting up h2o package --------------------------------------------------

h2o.no_progress() #turning of h2o progress bars
h2o.init()
#h2o.shutdown(prompt = TRUE)


# access data -------------------------------------------------------------

ames <- AmesHousing::make_ames()


# initial dimensions -------------------------------------------------------

dim(ames)

# not going with h2o
#using tidymodels package instead

set.seed(501)

#saving the 80/20 split of the data 
ames_split <- rsample::initial_split(ames, prop = 0.80) #this function is from rsample package
ames_split #2344 in training, 586 in test and total sample size is 2930

#initial split only gives us a fraction of the split. We need to create separate datasets now

ames_training <- training(ames_split)
ames_test <- testing(ames_split)

# if the data is not uniform and is greatly skewed then we need to run stratified split
set.seed(501)
ames_split <- initial_split(ames, prop = 0.80, strata = Sale_Price)
ames_training <- training(ames_split)
ames_test <- testing(ames_split)

# Some people may have a validation set, in addition to training and testing

set.seed(52)
ames_val_split <- initial_validation_split(ames, prop = c(0.6, 0.2))
# in the above code we have provided proportion for training and validation (not testing, the balance is taken for testing)
ames_val_split
ames_training <- training(ames_val_split)
ames_test <- testing(ames_val_split)
ames_val <- validation(ames_val_split)

#the validation step with a small amount of data may not always be a good choice
# instead we can use k-fold cross validation or bootstrapping method

# fitting the model using parsnip package that comes with the tidymodels
lm_model <- linear_reg() |> set_engine("lm")

lm_form_fit <- lm_model |> 
  fit(Sale_Price ~ Longitude + Latitude, data = ames_training)
