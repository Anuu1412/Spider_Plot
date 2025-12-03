install.packages("fmsb")
library(fmsb)
library(tibble)
data <- choose.files()
data <- read.csv(data)

data <- column_to_rownames(data, var = "X")

radarchart(data)

# Radar chart with custom colors
radarchart(
  data,
  pcol = c("green", "brown"),       # Line colors for Pre and Post
  pfcol = c(rgb(0,1,0,0.3),         # Fill colors with transparency
            rgb(0.6,0.3,0,0.3)),
  plwd = 2,                         # Line width
  cglcol = "grey",                  # Grid line color
  cglty = 1,                        # Grid line type
  axistype = 1,
  vlcex = 0.8                       # Variable label size
)

legend("topright",
       legend = c("Pre", "Post"),
       col = c("green", "brown"),
       lty = 1,
       pch = 16,
       bty = "n")



