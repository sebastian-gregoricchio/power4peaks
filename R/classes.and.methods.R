#' @title power4peaks.stats class
#'
#' @slot dba.object original DBA object derived from \code{DiffBind}
#' @slot contrast contrast that has been used
#' @slot design design matrix obtained from the analyses
#' @slot diff.method differential peaks analyses method used (DEseq2 or edgeR)
#' @slot p.adjust.method p-value adjustment method used
#' @slot diff.object differential peak analyses object obtained from the DBA object
#' @slot results differential peak analyses results
#' @slot statistics values of the statistics obtained from the differential peak analyses
#' @slot stat.distribution type of distribution of the statistics (e.g., normal, chi-squared, t, ...)
#' @slot df1 values of the first degree of freedom
#' @slot df2 values of the second degree of freedom
#'
#' @export

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
#'
#' @slot pilot.data output of \href{https://rdrr.io/bioc/SSPA/man/pilotData.html}{\code{SSPA:::pilotData}}, collects the info relative to statistics, p-value and sample size
#' @slot sample.size output of \href{https://rdrr.io/bioc/SSPA/man/sampleSize.html}{\code{SSPA:::sampleSize}}, contains the estimation of the proportion of non-differentially expressed genes and the density of the effect sizes
#' @slot power output of \href{https://rdrr.io/bioc/SSPA/man/predictpower.html}{\code{SSPA:::predictpower}}
#' @slot effect.size.plot ggplot object depicting the effect as function of the group size
#' @slot power.plot ggplot object depicting the power as function of the group size
#'
#' @export

setClass(Class = "power4peaks.power",
         slots = list(pilot.data = "ANY",
                      sample.size = "ANY",
                      power = "ANY",
                      effect.size.plot = "ANY",
                      power.plot = "ANY"))



######################################################################################

#' @title power4peaks.stats show-method
#' @param object Object of class \code{power4peaks.stats}.
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
#' @param object Object of class \code{power4peaks.power}.
#' @importFrom patchwork wrap_plots
#' @export
setMethod(f = "show",
          signature = "power4peaks.power",
          definition =
            function(object) {
              print(patchwork::wrap_plots(object@effect.size.plot, object@power.plot, ncol = 1))})
