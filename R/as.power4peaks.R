#' @title as.power4peaks
#'
#' @description Convert a DiffBind analyses object (class \code{DBA}) into an object of class \code{power4peaks}.
#'
#' @param dba.object An object of class \code{DBA} obtained from DiffBind.
#' @param contrast Numeric value indicating the index corresponding to a contrast stored in the dba.object. Default: \code{1}.
#' @param p.adjust.method String indicating the method to use to correct the p-values. One among: "holm", "hochberg", "hommel", "bonferroni", "BH", "BY", "fdr", "none". Default: \code{BH}.
#'
#' @return An object of class \code{power4peaks.stats}.

#' @export as.power4peaks


as.power4peaks =
  function(dba.object,
           contrast = 1,
           p.adjust.method = "BH") {

    ## libraries
    # require(DiffBind)
    # require(edgeR)
    # require(DESeq2)

    ## verify object
    if (!("DBA" %in% class(dba.object))) {
      warning("The input must be an object of class 'DBA', as generated by diffBind.")
      return(dba.object)

    } else if (!("DESeq2" %in% names(dba.object) | "edgeR" %in% names(dba.object))) {
      warning("The input must be an object of class `DBA` in which differential analyses have been already performed.\nThe current object does not contain any differential analyses.")
      return(dba.object)

    }

    ## check if contrast is available
    if (!(contrast %in% 1:length(dba.object$contrasts))) {
      warning(paste0("The contrast provided (", contrast, ") is not avilable.\n",
                     "Chose a contrast from 1 to ", length(dba.object$contrasts)))
      return(dba.object)
    }

    contrast_list = dba.object$contrasts[[contrast]]$contrast




    # ----------------------
    # DESeq2
    if (length(dba.object$DESeq2) != 1) {

      #require(DESeq2, quietly = T)
      diff.method = "DESeq2"
      stat.distribution = "norm"

      ## Collect degrees of freedom
      design_matrix = model.matrix(object = BiocGenerics::design(dba.object$DESeq2$DEdata), data = SummarizedExperiment::colData(dba.object$DESeq2$DEdata))
      df1 = ncol(design_matrix)
      df2 = NULL

      ## Get results
      results = as.data.frame(DESeq2::results(dba.object$DESeq2$DEdata, contrast = contrast_list, pAdjustMethod = p.adjust.method))
      statistics = results$stat


    # ----------------------------
    # edgeR
    } else {

      diff.method = "edgeR"
      stat.distribution = "chisq"

      ## Collect design
      design_matrix = dba.object$edgeR$design


      ## Collect results and statistics
      edgeR_DEG = edgeR::glmLRT(glmfit = dba.object$edgeR$DEdata, coef = 2)

      ## Collect degrees of freedom
      df1 = median(edgeR_DEG$df.test)
      df2 = NULL

      results = as.data.frame(edgeR::topTags(object = edgeR_DEG, n = nrow(edgeR_DEG$table), adjust.method = p.adjust.method))
      statistics = results$LR
    }



    # ----------------------------------
    ## Export power4peaks object
    power4peaks.stats =
      new(Class = "power4peaks.stats",
          dba.object = dba.object,
          contrast = contrast_list,
          design = design_matrix,
          diff.method = diff.method,
          p.adjust.method = p.adjust.method,
          diff.object = dba.object$DESeq2,
          results = results,
          statistics = statistics,
          stat.distribution = stat.distribution,
          df1 = df1,
          df2 = df2)

    return(power4peaks.stats)

  } # END function
