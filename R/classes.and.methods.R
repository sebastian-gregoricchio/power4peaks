#' @title power4omics.stats class
#' @name power4omics.stats
#' @exportClass power4omics.stats

setClass(Class = "power4omics.stats",
         slots = list(dba.object = "ANY",
                      contrast = "ANY",
                      design = "ANY",
                      diff.method = "ANY",
                      p.adjust.method = "ANY",
                      results = "ANY",
                      statistics = "ANY",
                      stat.distribution = "ANY",
                      df = "ANY"))



#' @title power4omics.power class
#' @name power4omics.power
#' @exportClass power4omics.power

setClass(Class = "power4omics.power",
         slots = list(pilot.data = "ANY",
                      sample.size = "ANY",
                      power = "ANY",
                      effect.size.plot = "ANY",
                      power.plot = "ANY"))




######################################################################################


#' @title power4omics.power show-method
#' @export
setMethod(f = "show",
          signature = "power4omics.power",
          definition =
            function(object) {
              print(patchwork::wrap_plots(object@effect.size.plot, object@power.plot, ncol = 1))})
