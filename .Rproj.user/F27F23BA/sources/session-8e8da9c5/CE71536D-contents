# 富山県の17歳男性身長の平均・分散
# 学校保健統計調査 令和6年度 都道府県表
# https://www.e-stat.go.jp/stat-search/files?stat_infid=000040248433
height_mean <- 171.1
height_sd   <-  5.52

# 標本数
n <- 25

# ランダムシードの設定
set.seed(123)

# 身長データの生成
height <- rnorm(n, mean = height_mean, sd = height_sd)

# 四捨五入
height_rounded <- round(height)

# 昇順にソート
sort(height_rounded)
