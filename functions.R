# Libraries

library("ggplot2")
library("reshape2")
library("ggfortify")
library("tidyverse")

numberFormatter <- function(x) {
  format(x, big.mark = ".")
}

isCurrentQuarter <- function(x, current) {
  x %in% current
}

revenuePlot <- function(df) {
  last <- length(df$Dt)
  current <- c(as.character(df$Dt[last]), as.character(df$Dt[last - 4]))
  
  isHighlighted <- function(x) {
    isCurrentQuarter(x, current)
  }
  
  breaks <- pretty(melt(df, id = "Dt")$value, n = 20)
  
  ggplot(data = df) +
    geom_bar(stat = "identity", aes(x = Dt, y = Revenue, fill = "Revenue"), col = I("black"), position = "dodge") +
    geom_bar(stat = "identity", aes(x = Dt, y = Net.Profit, fill = factor(ifelse(isHighlighted(Dt), "Net.Profit.Last", "Net.Profit"))), col = I("black"), position = "dodge") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5, color = "#000000")) +
    theme(axis.text.y = element_text(color = "#000000")) +
    scale_y_continuous(breaks = breaks, labels = numberFormatter) +
    geom_text(aes(x = Dt, y = Revenue, label = numberFormatter(Revenue)), size = 4, position = position_stack(vjust = 1.2), angle = 90, color = "#003366") +
    labs(y = "Revenue, Net Profit", title = "Revenue/Net Profit")
}