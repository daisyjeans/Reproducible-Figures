## a function allowing the saving of images, to maximise reproducibility 

save_figure_png <- function(plot_object,
                            filename, size, res, scaling) {
  agg_png(filename, 
          width = size, 
          height = size, 
          units = "cm", 
          res = res, 
          scaling = scaling
  )
  print(plot_object)
  dev.off()
}