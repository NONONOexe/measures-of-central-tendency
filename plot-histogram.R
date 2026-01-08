# ggplot2のテーマ読み込み
source("ggplot-theme.R")

# データの読み込み
height_data <- readr::read_csv("height-data.csv")

# ヒストグラムのパラメータ
boundary <- 160.5
binwidth <- 5
bins <- 5

histogram <-
  ggplot2::ggplot(height_data, ggplot2::aes(x = height)) +
  ggplot2::geom_histogram(
    boundary = boundary,
    binwidth = binwidth,
    colour = "black",
    fill = "lightgray"
  ) +
  ggplot2::scale_x_continuous(
    breaks = seq(
      from = boundary + binwidth / 2,
      by = binwidth,
      length.out = bins
    ),
    labels = function(x) paste0(x - binwidth / 2, "～", x + binwidth / 2)
  ) +
  ggplot2::theme(
    axis.text.x = ggplot2::element_text(angle = 45, hjust = 1)
  )

ggplot2::ggsave(
  filename = "height-histogram.pdf",
  plot = histogram,
  width = 10,
  height = 10,
  dpi = 300
)
