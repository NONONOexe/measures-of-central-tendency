# データの読み込み
height_data <- readr::read_csv("data/height-data.csv")

# 平均値
height_mean <- mean(height_data$height)

# 中央値
height_median <- median(height_data$height)

# 最頻値
height_mode <- height_data$height |>
  table() |>
  which.max() |>
  names() |>
  as.numeric()

# 結果の表示
cat("Mean:   ", height_mean, "\n")
cat("Median: ", height_median, "\n")
cat("Mode:   ", height_mode, "\n")
