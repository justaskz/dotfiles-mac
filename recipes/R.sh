#!/usr/bin/env bash

function install {
  brew install homebrew/science/r
}

# essential = c(
#   'assertthat'
#  ,'caret'
#  ,'data.table'
#  ,'dplyr'
#  ,'doMC'
#  ,'e1071'
#  ,'ggplot2'
#  ,'glmnet'
#  ,'lubridate'
#  ,'stringr'
#  ,'plyr'
#  ,'randomForest'
#  ,'reshape2'
#  ,'testthat'
#  ,'tm'
# )

# install.packages(essential)

# various = c(
#   'gbm'
#  ,'klaR'
#  ,'ROCR'
#  ,'doMC'
#  ,'pROC'
#  ,'RSQLite'
#  ,'party'
#  ,'RTextTools'
#  ,'devtools'
# )

# install.packages(various)

$@
