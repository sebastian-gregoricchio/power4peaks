#' @docType data
#' @name tamoxifen
#' @title \code{tamoxifen} differential binding results
#' @description DiffBind differential analyses of ERa ChIP-seq data performed in breast cancer primary tumors derived from human patients responsive or not to tamoxifen treatment (estrogen receptor inhibitor), from Ross-Innes et al. (Nature, 2012).
#' @format A DBA object (7 responsive patients and 4 resistant)
#' @source Ross-Innes et al. (Nature, 2012) \url{https://doi.org/10.1038/nature10730}
"tamoxifen"


#' @docType data
#' @name endometrium_metadata
#' @title \code{endometrium} metadata table for dba object preparation
#' @description DiffBind differential analyses of ERa ChIP-seq data performed in breast cancer primary tumors derived from human patients responsive or not to tamoxifen treatment (estrogen receptor inhibitor), from Ross-Innes et al. (Nature, 2012).
#' @format data.frame (8 rows x 5 columns)
#' \describe{
#'   \item{\code{SampleID}}{id assigned to each sample, H stands for 'healthy' while T for 'tumor'}
#'   \item{\code{Tissue}}{tissue from which the samples derive}
#'   \item{\code{Factor}}{The factor for which the ChIP was performed, in this case estrogen receptor alpha (ERa)}
#'   \item{\code{Treatment}}{treatment applied to the cells or patients, in this case none, equivalent ot the 'Condition' column}
#'   \item{\code{Condition}}{condition applied to the cells or patients, in this case none, equivalent ot the 'Treatment' column}
#'   \item{\code{Replicate}}{id of the biological replicate, in this case each tissue is considered an indipendent biological replicate}
#'}
#' @source Gregoricchio et al. (Genome Biology, 2025) \url{https://doi.org/10.1186/s13059-025-03596-5}
"endometrium_metadata"


#' @docType data
#' @name endometrium
#' @title \code{endometrium} differential binding results
#' @description DiffBind differential analyses of ERa ChIP-seq data performed in normal and tumor endometrium from human patients, Gregoricchio et al. (Genome Biology, 2025).
#' @format A DBA object (4 normal samples and 4 tumor samples)
#' @source Gregoricchio et al. (Genome Biology, 2025) \url{https://doi.org/10.1186/s13059-025-03596-5}
"endometrium"
