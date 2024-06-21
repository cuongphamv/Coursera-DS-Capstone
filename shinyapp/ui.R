# ui.R
# Author: Cuong Pham V
# Date: June 21, 2024
# Description: Shiny UI, Coursera Data Science Capstone Final Project
# GitHub: https://github.com/cuongphamv/Coursera-DS-Capstone

library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
    navbarPage("Next Word Predictor",
               theme = shinytheme("cerulean"),
               tabPanel("Home",
                        fluidPage(
                            titlePanel("Home"),
                            sidebarLayout(
                                sidebarPanel(
                                    textInput("userInput",
                                              "Enter a word or phrase:",
                                              value =  "",
                                              placeholder = "Enter text here"),
                                    br(),
                                    sliderInput("numPredictions", "Number of Predictions:",
                                                value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                                ),
                                mainPanel(
                                    h4("Input text"),
                                    verbatimTextOutput("userSentence"),
                                    br(),
                                    h4("Predicted words"),
                                    verbatimTextOutput("prediction1"),
                                    verbatimTextOutput("prediction2"),
                                    verbatimTextOutput("prediction3")
                                )
                            )
                        )
               ),
               tabPanel("About",
                        h3("Next Word Predictor"),
                        br(),
                        div("Next Word Predictor is a Shiny app that harnesses text prediction algorithm 
                            to anticipate the next word(s) from user-entered text",
                            br(),
                            br(),
                            "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                            br(),
                            br(),
                            "Use the slider tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                            br(),
                            br(),
                            "The source code for this application can be found
                            on GitHub:",
                            br(),
                            br(),
                            # img(src = "git.png"),
                            a(target = "_blank", href = "https://github.com/cuongphamv/Coursera-DS-Capstone",
                            "Next Word Predictor code")),
                        br(),
                        h3("About Me"),
                        br(),
                        div("My name is Cuong Pham V, a Public Health researcher from Hanoi Vietnam,
                            with a keen focus on improving community health outcomes.", 
                            br(),
                            br(),
                            "Currently, I am  expanding my expertise by studying data science, 
                            merging analytical skills with my passion for public health. 
                            I have a particular interest in R, utilizing this powerful statistical 
                            programming language to uncover insights and drive impactful research")
               )
               
    )
)

