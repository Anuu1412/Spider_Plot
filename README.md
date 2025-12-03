# Spider / Radar Plot
### This repository provides a complete guide to generating Spider (Radar) Plots for visualizing multi-parameter comparisons between two conditions (e.g., Pre vs Post) .
## Overview
A Spider Plot, also known as a Radar Chart, is a circular visualization method used to display multivariate numerical data.

Each variable is represented as an axis that starts from the center and radiates outward.

Each group (e.g., Pre or Post) forms a polygon whose shape reflects its performance across all variables.

This visualization helps in interpreting patterns, differences, and distribution of values across several parameters simultaneously.

## Dataset Requirements
To generate a radar (spider) plot using the fmsb package, your dataset must follow a specific structure. The fmsb radar chart requires four rows arranged in this order:

- max – highest possible values for all variables
- min – lowest possible values for all variables
- Pre (or Group 1) – actual measurement before treatment
- Post (or Group 2) – actual measurement after treatment

This structure is essential because the fmsb package uses the first two rows to define the scale of the radar plot. Without these max/min reference rows, the plot will not scale correctly.

Required Columns

Five numeric columns, one for each pathway:

- Immune Response
- Energy Metabolism
- Inflammation
- Lipid Metabolism
- Gut Barrier Function
All values must be numerical.


## Step-by-Step Tutorial

1. Install and Load Required Packages

   Install and load the fmsb and tibble packages for plotting and data preparation.

2. Import Your Dataset

   Use a file-chooser window to select your CSV file.

   Load it into R and ensure the first column that contains max, min, Pre, Post is set as the row names.

3. Prepare the Data

   Convert the first column (e.g., X) to row names.

   Ensure remaining columns contain only numeric values suitable for plotting.

4. Generate a Basic Radar Chart

   Plot the radar chart using:

   radarchart(data)

   This creates a simple radar plot with default settings.

5. Customize the Radar Chart

   Customize the plot by adjusting colors, fill, line width, grid style, and label size using parameters like pcol, pfcol, plwd, cglcol, cglty, and vlcex.

   Add a legend to distinguish groups, such as Pre and Post.

## Use Cases
1. Comparing Biological Scores

   Useful for visualizing changes in immunological, metabolic, or clinical scores before and after treatment.
2. Multi-Parameter Evaluation

   Allows simultaneous comparison of multiple variables within a single, easy-to-interpret plot.
3. Profile Analysis

   Helps identify how two conditions differ across various domains such as energy, inflammation, or immune response.
4. Effect of Intervention

   Shows overall improvement or decline following a drug, therapy, lifestyle change, or environmental exposure.



