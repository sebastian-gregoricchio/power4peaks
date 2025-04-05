#' @title power4peaks.stats class
#' @name power4peaks.stats
#' @exportClass power4peaks.stats

setClass(Class = "power4peaks.stats",
         slots = list(dba.object = "ANY",
                      contrast = "ANY",
                      design = "ANY",
                      diff.method = "ANY",
                      p.adjust.method = "ANY",
                      diff.object = "ANY",
                      results = "ANY",
                      statistics = "ANY",
                      stat.distribution = "ANY",
                      df1 = "ANY",
                      df2 = "ANY"))



#' @title power4peaks.power class
#' @name power4peaks.power
#' @exportClass power4peaks.power

setClass(Class = "power4peaks.power",
         slots = list(pilot.data = "ANY",
                      sample.size = "ANY",
                      power = "ANY",
                      effect.size.plot = "ANY",
                      power.plot = "ANY"))




######################################################################################

#' @title power4peaks.stats show-method
#' @export
setMethod(f = "show",
          signature = "power4peaks.stats",
          definition =
            function(object) {
              cat(paste0("          Contrast | ", object@contrast[1], ": ", object@contrast[2], " vs ", object@contrast[3], "\n"))
              cat(paste0("            Method | ", object@diff.method, "\n"))
              cat(paste0("Stat. distribution | ", object@stat.distribution, "\n"))
              cat(paste0("               df1 | ", object@df1, "\n"))
              cat(paste0("               df2 | ", object@df2))
            })



#' @title power4peaks.power show-method
#' @export
setMethod(f = "show",
          signature = "power4peaks.power",
          definition =
            function(object) {
              print(patchwork::wrap_plots(object@effect.size.plot, object@power.plot, ncol = 1))})
