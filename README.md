Data Science Coursera Specialization Capstone Project

The goal of the Data Science Capstone Project from Johns Hopkins University (JHU) is to create a usable application on natural language processing. This capstone project is offered in collaboration with SwiftKey.

The objective of the project is to build a functioning predictive text model. The data is from a corpus called HC Corpora, and, for this application, only the english datasets have been utilized.

Prediction Model

For this project, the Text Mining packages tm and text2vec were used, along with the data manipulation package dplyr and the package doParallel. The app was created using the shiny package.

To build the predictive model, 1.000.000 lines from all twitter, blogs and news datasets were sampled. The sample dataset was then cleaned, by removing all non-ascii characters, like emoji, being converted to lowercase letters and then by removing all contractions, punctuation, numbers, profanities, leftout letters and extra whitespaces.

The data was then tokenized to form Maximum Likelihood Estimation (MLE) matrices of various n-grams. For the sake of accuracy, all frequencies up to 6-grams were computed.

Finally, the top 3 predictions, using a simple back-off model, are being calculated as predictions to the user input. The reason for having 3 predictions instead of 1 is that the accuracy the user experiences is substantially increased.

Additional Information

Next word prediction app is hosted on shinyapps.io here.

You can find all the code, the milestone report, the presentation etc. in this Github repo 

Although there has been a lot of deviation from that, the milestone report can be found at [here](https://rpubs.com/cuongpham/1152496).
