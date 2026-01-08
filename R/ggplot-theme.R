# 原ノ味ゴシックをフォントに追加
sysfonts::font_add(
  family = "HaranoAjiGothic",
  regular = file.path(
    "C:/Users",
    Sys.info()[["user"]],
    "AppData/Local/Microsoft/Windows/Fonts/",
    "HaranoAjiGothic-Regular.otf"
  )
)
showtext::showtext_auto()

# ggplot2のテーマを設定
ggplot2::theme_set(
  ggplot2::theme_bw(
    base_family = "HaranoAjiGothic",
    base_size = ggplot2::unit(24, "pt")
  ) +
    ggplot2::theme(
      axis.title = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = "black", rotation = 10),
      axis.ticks = ggplot2::element_line(linewidth = 1),
      panel.grid = ggplot2::element_blank()
    )
)
