

# Directories of Data sources
## Test directory
test_dir ="C:/Users/deleoe/Desktop/Coursera_GettingCleaningData/data/UCI HAR Dataset/test"
## Train directory
train_dir = "C:/Users/deleoe/Desktop/Coursera_GettingCleaningData/data/UCI HAR Dataset/train"


# Data files
  ## "Test" data files
setwd(test_dir)
test_basic_files <- dir(test_dir)[c(grep(".txt$",dir()))]

 ## Read "Test" files
len_test_b= length(test_basic_files)
Te = as.list(rep(0,len_test_b))

for (i in 1:len_test_b) {
  Te[[i]] = read.csv(test_basic_files[i],header=FALSE) 
  names(Te[[i]]) = c(strsplit(test_basic_files[i],"\\.")[[1]][1])
}
Te <- as.data.frame(Te)

 ## "Test" inertial signal (is) data files 
setwd("./Inertial Signals")
test_is_dir = getwd()
test_is_files <- dir(test_is_dir)[c(grep(".txt$",dir()))]

 ## Read "Test" inertial signal (is) data files 
len_test_is= length(test_is_files)
Te_is = as.list(rep(0,len_test_is))
for (i in 1:len_test_is) {
  Te_is[[i]] = read.csv(test_is_files[i],header=FALSE)
  names(Te_is[[i]]) = c(strsplit(test_is_files[i],"\\.")[[1]][1])
}
Te_is <- as.data.frame(Te_is)

## "Test" data frame compiled
TEST <- data.frame(Te,Te_is)




  ## "Train" data files
setwd(train_dir)
train_basic_files <- dir(train_dir)[c(grep(".txt$",dir()))]

len_train = length(train_basic_files)
Tr = as.list(rep(0,len_train))

  ## Read "Train" data files
for (j in 1:len_train) {
  Tr[[j]] = read.csv(train_basic_files[j],header = FALSE)
  names(Tr[[j]]) = c(strsplit(train_basic_files[j],"\\.")[[1]][1])
}
Tr <- as.data.frame(Tr)


  ## "Train" inertial signal data files

setwd("./Inertial Signals")
train_is_dir = getwd()
train_is_files <- dir(train_is_dir)[c(grep(".txt$",dir()))]

 ## Read "Train" inertial signal data files
len_train_is = length(train_is_files)
Tr_is = as.list(rep(0,len_train_is))
for (j in 1:len_train_is) {
  Tr_is[[j]] = read.csv(train_is_files[j],header=FALSE)
  names(Tr_is[[j]]) = c(strsplit(train_is_files[j],"\\.")[[1]][1])
}
Tr_is <- as.data.frame(Tr_is)

## "Train" data frame compiled
TRAIN <- data.frame(Tr,Tr_is)

















