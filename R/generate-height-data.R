#' 富山県の17歳男性身長から身長のデータを生成
#' 学校保健統計調査 令和6年度 都道府県表
#' https://www.e-stat.go.jp/stat-search/files?stat_infid=000040248433

# パラメータ
height_mean <- 171.1 # 平均
height_sd <- 5.52 # 標準偏差
n <- 25 # 標本数

# ランダムシードの設定
set.seed(123)

# 身長データの生成
height <-
  rnorm(n, mean = height_mean, sd = height_sd) |>
  round() |> # 四捨五入
  sort() # 昇順にソート

# 身長データをデータフレームに変形
height_data <- dplyr::tibble(
  id = 1:n,
  height
)

# 身長データの書き込み
readr::write_csv(height_data, "data/height_data.csv")
