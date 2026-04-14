# HW 5 — Tree-Based Methods
**Course:** Math 4041/5041

## Quickstart

### 1. Install R packages
```r
install.packages(c("rpart", "rpart.plot", "randomForest", "xgboost",
                   "knitr", "ggplot2", "rmarkdown", "tinytex"))
tinytex::install_tinytex()  # only needed once — installs LaTeX for PDF rendering
```

### 2. Set working directory to `hw5/`
In RStudio: Session → Set Working Directory → To Source File Location

### 3. Download pendigits data
```r
source("download_data.R")
```

### 4. Copy Auto dataset
Place `Auto (1).csv` into this `hw5/` folder.

### 5. Knit to PDF
Open `hw5_tree_methods.Rmd` and click **Knit → Knit to PDF**, or run:
```r
rmarkdown::render("hw5_tree_methods.Rmd")
```

---

## File descriptions

| File | Description |
|---|---|
| `hw5_tree_methods.Rmd` | Main analysis — knits to a formatted PDF |
| `download_data.R` | Downloads `pendigits.tra` and `pendigits.tes` from UCI |
| `Auto (1).csv` | Auto MPG dataset — add manually |
| `pendigits.tra` | Pendigits training set (created by `download_data.R`) |
| `pendigits.tes` | Pendigits test set (created by `download_data.R`) |

---

## Methods covered

**Problem 1 — Regression (y = 1/mpg)**
- Single regression tree (cp tuned by 10-fold CV)
- Random Forest (mtry tuned by test RMSE scan)
- XGBoost (nrounds tuned by 10-fold CV with early stopping)
- Linear regression (OLS baseline)

**Problem 2 — Classification (digit 0–9)**
- Single classification tree (cp tuned by 10-fold CV)
- Random Forest (mtry tuned by test misclassification scan)
- XGBoost multiclass (nrounds tuned by 5-fold CV with early stopping)
