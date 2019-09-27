ui <- fluidPage(
  
  titlePanel(
    fluidRow(
      column(8, h2("AsdMonitor")),
      column(2, img(src = "LogCirad_Eng.jpg", width = "140px"))
      )), 

  tabsetPanel(
   
    tabPanel("Control chart", 
    
      fluidRow(
        
        column(8, 
          fileInput(inputId = "files.asd", label = h4("Asd files"), multiple = TRUE, 
            accept = ".asd")
          ),
 
        column(4, 
          fileInput(inputId = "file.eqa", label = h4("Equation file"),
            accept = c(".xls", ".xlsx", ".csv"))
          )
        
        ),
      
      fluidRow(
        column(12, plotOutput(outputId = "plot.pred")),
        tableOutput(outputId = "tabfit")
        )
      
      ),
    
    tabPanel("Data",
      
      fluidRow(
        
        column(8, 
          plotOutput(outputId = "plot.X"),
          tableOutput(outputId = "tabasd")
          ),
 
        column(4, 
          tableOutput(outputId = "eqa")
          )
        
        )
      
      ),
   
    tabPanel("About", 
      fluidRow(
        includeMarkdown("asdmonitor.rmd")
        )
      )


    )

  )


  






