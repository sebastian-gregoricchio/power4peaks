#' @docType data
#' @name tamoxifen
#' @title \code{tamoxifen} differential binding results
#' @description DiffBind differential analyses of ERa ChIP-seq data performed in human breast cancer cell lines responsive or not to tamoxifen treatment (estrogen receptor inhibitor), from Ross-Innes et al. (Nature, 2012).
#' @format A DBA object (7 responsive patients and 4 resistant, 2795 sites)
#' @references Ross-Innes et al. (Nature, 2012) \doi{https://doi.org/10.1038/nature10730}
"tamoxifen"


#' @docType data
#' @name endometrium_metadata
#' @title \code{endometrium} metadata table for dba object preparation
#' @description Metadata table for differential analyses of ERa ChIP-seq data performed in normal and tumor endometrium from human patients, Gregoricchio et al. (Genome Biology, 2025).
#' @format data.frame (8 rows x 5 columns)
#' \describe{
#'   \item{\code{SampleID}}{id assigned to each sample, H stands for 'healthy' while T for 'tumor'}
#'   \item{\code{Tissue}}{tissue from which the samples derive}
#'   \item{\code{Factor}}{The factor for which the ChIP was performed, in this case estrogen receptor alpha (ERa)}
#'   \item{\code{Treatment}}{treatment applied to the cells or patients, in this case none, equivalent ot the 'Condition' column}
#'   \item{\code{Condition}}{condition applied to the cells or patients, in this case none, equivalent ot the 'Treatment' column}
#'   \item{\code{Replicate}}{id of the biological replicate, in this case each tissue is considered as an indipendent biological replicate}
#'}
#' @source \href{https://ega-archive.org/studies/EGAS00001007240}{EGAS00001007240} and \href{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE253900}{GSE253900}.
#' @references Gregoricchio et al. (Genome Biology, 2025) \doi{https://doi.org/10.1186/s13059-025-03596-5}
"endometrium_metadata"


#' @docType data
#' @name endometrium
#' @title \code{endometrium} differential binding results
#' @description \code{DiffBind} differential analyses of ERa ChIP-seq data performed in normal and tumor endometrium from human patients, Gregoricchio et al. (Genome Biology, 2025).
#' @format A DBA object (4 normal samples and 4 tumor samples, 30044 sites)
#' @source \href{https://ega-archive.org/studies/EGAS00001007240}{EGAS00001007240} and \href{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE253900}{GSE253900}.
#' @references Gregoricchio et al. (Genome Biology, 2025) \doi{https://doi.org/10.1186/s13059-025-03596-5}
"endometrium"


#' @docType data
#' @name atac_mm
#' @title \code{atac_mm} differential binding results
#' @description \code{DiffBind} differential analyses of ATAC-seq data from 11 Monoclonal Gammopathy of Undetermined Significance (MGUS) and 11 Multiple Myeloma (MM) human samples obtained from T. Bruno, M.C. Cappelletto, C. Cortile et al. (Blood, 2025).
#' @format A DBA object (11 MGUS samples and 11 MM tumor samples, 65114 sites)
#' @source \href{https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1174220}{PRJNA1174220} (\href{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE279761}{GSE279761})
#' @references T. Bruno, M.C. Cappelletto, C. Cortile et al. (Blood, 2025) \doi{https://doi.org/10.1182/blood.2025028441}
"atac_mm"


#' @docType data
#' @name atac_mm_SraRunTable
#' @title \code{atac_mm_SraRunTable} metadata table
#' @description metadata table for the download of the fastq ATAC-seq data from T. Bruno, M.C. Cappelletto, C. Cortile et al. (Blood, 2025).
#' @format data.frame (66 rows x 35 columns)
#' @source \href{https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1174220}{PRJNA1174220} (\href{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE279761}{GSE279761})
#' @references T. Bruno, M.C. Cappelletto, C. Cortile et al. (Blood, 2025) \doi{https://doi.org/10.1182/blood.2025028441}
"atac_mm_SraRunTable"






