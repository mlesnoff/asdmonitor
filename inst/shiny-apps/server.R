server <- function(input, output) {
  
  rv <- reactiveValues(asd = NULL, X = NULL)

  observeEvent(
    
    input$files.asd, {
    
    db <- input$files.asd
    
    n <- nrow(db)
    for(i in 1:n) {
      z <- get_metadata(db$datapath[i])$when
      if(i == 1) tim <- z else tim <- c(tim, z)
      }
    z <- data.frame(File = db$name, Time = tim, path = db$datapath)    #
    z <- z[order(z$Time), ]
    z$Time <- as.character(z$Time) 
    z$path <- as.character(z$path)
    z$Index <- 1:n
    asd <- z
    
    rv$asd <- asd
    
    z <- get_spectra(asd$path)
    X <- log(1 / z, base = 10)
    
    rv$X <- X
    
    z <- asd[order(asd$Time, decreasing = TRUE), ]
    z <- z[, c("Index", "File", "Time")]
    output$tabasd <- renderTable(z)
    
    output$plot.X <- renderPlot(
      plotsp(X, xlab = "Wawelength (nm)", ylab = "log(1/R)", main = "Input spectra")
      )
    
    }
    
  )
  
  observe({       
      
    # With 'observe', all the reactive objects in {} are observed,
    # except when using isolate: e.g. isolate(rv$X) 
    # With 'observeEvent', only one is observed
    
    if(!is.null(input$file.eqa)) {

      db <- input$file.eqa
      zdb <- as.character(db$datapath)
      z <- read_excel(path = zdb)
      eqa <- data.frame(z)
      nam <- excel_sheets(zdb)[1]

      asd <- rv$asd
      X <- rv$X
      
      n <- nrow(X)
      u <- which(colnames(X) %in% eqa[, 2])
      zX <- X[, u, drop = FALSE]
      fit <- cbind(rep(1, n), zX) %*% eqa[, 1]
      ind <- 1:n 
      mu <- mean(fit) ; sigma <- sd(fit)
      dat <- data.frame(ind = 1:n, fit = fit)
      p <- ggplot(data = dat, aes(x = ind, y = fit))
      p <- p + geom_point(alpha = .5) + geom_line(col = 1)
      p <- p + geom_hline(yintercept = mu, col = "blue") 
      p <- p + geom_hline(yintercept = mu + 2 * sigma, col = "orange", lty = 2) 
      p <- p + geom_hline(yintercept = mu - 2 * sigma, col = "orange", lty = 2)
      p <- p + geom_hline(yintercept = mu + 3 * sigma, col = "red", lty = 2) 
      p <- p + geom_hline(yintercept = mu - 3 * sigma, col = "red", lty = 2)
      alpha <- 1.01
      p <- p + annotate("text", x = .8, y = alpha * mu, label = "Mean", col = "blue")
      p <- p + annotate("text", x = .8, y = alpha * c(mu + 2 * sigma, mu - 2 * sigma), label = "2xSigma", col = "orange")
      p <- p + annotate("text", x = .8, y = alpha * c(mu + 3 * sigma, mu - 3 * sigma), label = "3xSigma", col = "red")
      p <- p + scale_x_continuous(breaks = 1:n)
      #p <- p + ylim(.9 * min(fit), 1.1 * max(fit))
      p <- p + xlab("Spectrum index") + ylab("Prediction")
      p <- p + ggtitle(paste("Control chart of the predictions:  ", nam, sep = ""))

      output$eqa <- renderTable(eqa)
      
      output$plot.pred <- renderPlot(p)
      
      z <- asd[order(asd$Time, decreasing = TRUE), ]
      z <- z[, c("Index", "File", "Time")]
      z$Prediction <- fit[n:1]
      output$tabfit <- renderTable(z)
      
      }
      
    })

  }




