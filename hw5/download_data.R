# Run this script from inside the hw5/ folder
# It downloads pendigits.tra and pendigits.tes from UCI

download.file(
  "https://archive.ics.uci.edu/ml/machine-learning-databases/pendigits/pendigits.tra",
  destfile = "pendigits.tra"
)

download.file(
  "https://archive.ics.uci.edu/ml/machine-learning-databases/pendigits/pendigits.tes",
  destfile = "pendigits.tes"
)

cat("Downloaded pendigits.tra and pendigits.tes successfully.\n")
