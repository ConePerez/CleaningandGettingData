## File run_analysis.R
## The file contains code to implement one function: create_TidyData.
## Usage: The file must be loaded into an R workspace with the source function.
## Example: source(run_analysis.R)
## The example assumes that the R file is saved in the working directory of the active session of R

## Function create_TidyData()
## Usage: x <- create_TidyData()
## The function doesn't require any parameter, all the input data is hard coded inside the function. It returns
## a data frame object. The data frame is the result of the transformations implemented based on a specific set of
## requirements which can be read in the Readme.md file in the github repository.
## Within the file a text file is created in the working directory represents the data of the data fram that is returned.
## The columns of the text file are described in the code book file located in this github repository.

create_TidyData <- function () {
  train_x <- read.table("X_train.txt")
  train_y <- read.table("Y_train.txt")
  test_x <- read.table("X_test.txt")
  test_y <- read.table("Y_test.txt")

  activities_labels <- read.table("activity_labels.txt")
  features_labels <- read.table("features.txt")

  colnames(train_x) <- features_labels[,2]
  colnames(test_x) <- features_labels[,2]
  
  train_data <- cbind(train_X, activity = factor(train_y[,1], activity_labels[,1], activity_labels[,2]))
  test_data <- cbind(test_x, activity = factor(test_y[,1], activity_labels[,1], activity_labels[,2]))
  
  project_data <- rbind(train_data, test_data)
  project_data <- project_data %>% select(matches("mean\\(\\)|std\\(\\)|activity")) %>% group_by(activity) %>% summarise_all(mean)
  write.table(project_data, file = "courseproject_tidydata.txt", row.names = FALSE)
  columns <- colnames(project_data)
  project_data <- data.frame(project_data)
  colnames(project_data) <- columns
  project_data
}  

