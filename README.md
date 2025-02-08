# Exploring Blood-Based Biosurveillance, Part 3: The Blood Virome (Code)

This repository contains the code and analysis for the blog post "[Exploring Blood-Based Biosurveillance, Part 3: The Blood Virome](https://naobservatory.org/blog/exploring-blood-biosurveillance-part3)."
  
# Prerequisites

- R (version 4.0.0 or higher)
- AWS CLI
- Quarto (latest version)
- Required R packages (will be automatically installed using pacman):
  - tidyverse
  - RColorBrewer
  - scales
  - ggbeeswarm
  - ggpubr
  - grid
  - gridExtra
  - ggforce
  - extrafont
  - cowplot
  - pacman

# Analysis Scripts

- `main.qmd`: Main Quarto document containing the analysis code and figure generation
- `scripts/aux_plot-theme.R`: Helper script for consistent ggplot2 theme settings
- `scripts/download_data.sh`: Bash script to download required data from AWS S3

# Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/naobservatory/the-blood-virome.git
   cd the-blood-virome
   ```

2. Download the data from AWS S3:
   ```bash
   mkdir mgs-analysis
   cd mgs-analysis
   chmod +x ../scripts/download_data.sh
   ../scripts/download_data.sh
   ```

   Hence your directory structure should look like this:
   ```
    ├── the-blood-virome (this repo)
        ├── figures/           # Generated figures
        ├── scripts/           # Helper scripts
        ├── resources/         # Additional resources
        ├── main.qmd           # Main Quarto document
        ├── mgs-analysis/      # Source data directories
            ├── aydillo2022
            ├── cebriamendoza2021
            ├── mengyi2023
            ├── oconnell2023
            ├── thijssen2023
            └── thompson2023
    ```

3. Install required R packages:
   ```R
   install.packages("pacman")
   pacman::p_load(tidyverse, RColorBrewer, scales, ggbeeswarm, ggpubr, grid, gridExtra, ggforce, extrafont, cowplot)
   ```

4. Render the analysis document (this will take a while):
   ```bash
   quarto render main.qmd
   ```
   alternatively, you can open the document in VSCode or another IDE that supports Quarto and interactively run the code chunks (this is what we recommend).

The analysis will generate multiple figures in the `figures/` directory and create an HTML document with the complete analysis.

# Citation

If you use this analysis in your work, please cite:
```
Bhasin, H., McLaren, M., & Justen, L. (2025, February 7). Exploring Blood-Based Biosurveillance, Part 3: The Blood Virome. Nucleic Acid Observatory Blog. https://naobservatory.org/blog/exploring-blood-biosurveillance-part3
```

## Contact

For questions or feedback, please contact Lennart Justen at lenni@securebio.org or Harmon Bhasin at harmon@securebio.org.
