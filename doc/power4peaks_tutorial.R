## ----setup, include=FALSE-----------------------------------------------------
if (Sys.info()[["sysname"]] == "Darwin") {
  knitr::opts_chunk$set(echo = TRUE,
                        collapse = TRUE,
                        comment = ">",
                        warning = FALSE,
                        message = FALSE,
                        fig.align = "center",
                        rows.print = 12,
                        dev = "png",
                        dpi = 96)
} else {
  knitr::opts_chunk$set(echo = TRUE,
                        collapse = TRUE,
                        comment = ">",
                        warning = FALSE,
                        message = FALSE,
                        fig.align = "center",
                        rows.print = 12)
}

## ----include=FALSE------------------------------------------------------------
wd = getwd()

## ----load_p4p_data, eval = FALSE----------------------------------------------
# data("tamoxifen", package = "power4peaks")
# data("endometrium", package = "power4peaks")
# data("atac_mm", package = "power4peaks")

## ----download_tam_data, eval = FALSE------------------------------------------
# ## load DiffBind
# require(DiffBind)
# 
# data_url <- "https://content.cruk.cam.ac.uk/bioinformatics/software/DiffBind/DiffBind_vignette_data.tar.gz"
# file <- basename(url)
# tmpdir <- tempdir()
# options(timeout=600)
# download.file(url, file.path(tmpdir,file))
# untar(file.path(tmpdir,file), exdir = tmpdir)
# 

## ----tam_dba_analysis, eval = FALSE-------------------------------------------
# setwd(file.path(tmpdir,"DiffBind_Vignette"))
# tamoxifen <- dba.analyze(file.path(tmpdir,"DiffBind_Vignette/tamoxifen.csv"))
# 
# tamoxifen

## ----show_tamoxifen_db, echo=FALSE--------------------------------------------
power4peaks::tamoxifen

## ----load_endo_meta-----------------------------------------------------------
## Load endometrium metadata from power4omics
data("endometrium_metadata", package = "power4peaks")
endometrium_metadata

## ----DBA_endometrium, eval = FALSE--------------------------------------------
# require(DiffBind)
# 
# ## Setup DiffBind object/experiment
# dba.endometrium =
#   dba(sampleSheet = endometrium_metadata,
#       config = data.frame(AnalysisMethod = DBA_EDGER,
#                           th = 0.05,
#                           design = TRUE,
#                           cores = 4,
#                           RunParallel = TRUE,
#                           doBlacklist = TRUE,
#                           doGreylist = FALSE))

## ----blacklist_endo, eval = FALSE---------------------------------------------
# # Apply black list
# dba.endometrium = dba.blacklist(dba.endometrium, blacklist = DBA_BLACKLIST_GRCH37)

## ----counts_endom, eval = FALSE-----------------------------------------------
# ## Compute counts at peaks
# dba.endometrium = dba.count(dba.endometrium, bParallel = TRUE, fragmentSize = 200)
# 
# ## Normalize counts
# dba.endometrium = dba.normalize(dba.endometrium)
# 
# ## Define contrast
# dba.endometrium = dba.contrast(dba.endometrium, contrast=c("Condition", "Tumor", "Normal"))
# 
# ## Differential binding
# endometrium = dba.analyze(dba.endometrium, method = DBA_EDGER)
# endometrium

## ----show_endo_dba, echo=FALSE------------------------------------------------
power4peaks::endometrium

## ----atac_get_fastq_info------------------------------------------------------
require(dplyr)

## MM samples to keep
MM_sample_selection = c("022", "025", "059", '069', "027", "009", "054", "073", "033", "013", "028")

## Read and filter runs table
sra = 
  power4peaks::atac_mm_SraRunTable %>%
  dplyr::filter(Sample_Alias %in% paste0("ATAC_seq_tumour_", MM_sample_selection, "_MM") | 
                grepl("MGUS", Sample_Alias)) %>%
  dplyr::select(Run, Sample_Alias)

sra

## ----metadata_atac_diffbind, eval = FALSE-------------------------------------
# ## Get BAM list
# bams <- list.files(path = "./sources/mapping/02_BAM",
#                    pattern = "_sorted_woMT_dedup.bam$",
#                    full.names = TRUE)
# 
# ## Get peak list
# peaks <- list.files(path = "./sources/peak_calling/04_MACS3_peaks",
#                     pattern = "_peaks_chr.narrowPeak",
#                     full.names = TRUE)
# 
# metadata <-
#   data.frame(SampleID = gsub("_mapq20_sorted_woMT_dedup.bam|ATAC_seq_|_MGUS|_MM", "", basename(bams)),
#              Tissue = "bone marrow",
#              Factor = "ATAC-seq",
#              Condition = ifelse(test = grepl("MGUS", basename(bams)), yes = "MGUS", no = "MM"),
#              bamReads = bams,
#              Peaks = peaks,
#              PeakCaller = "narrow")
# 
# metadata

## ----show_atac_metadata, echo=FALSE-------------------------------------------
power4peaks::atac_mm$samples

## ----make_dba, eval=FALSE-----------------------------------------------------
# dba <- dba(sampleSheet = metadata,
#            config = data.frame(AnalysisMethod = DBA_DESEQ2,
#                                th = 0.01, # FDR threshold
#                                design = TRUE,
#                                cores = 8,
#                                RunParallel = TRUE,
#                                doBlacklist = TRUE,
#                                doGreylist = FALSE))

## ----atac_counts, eval=FALSE--------------------------------------------------
# ## Apply black list
# dba <- dba.blacklist(dba, blacklist = DiffBind::DBA_BLACKLIST_HG38)

## ----atac_count_reads, eval=FALSE---------------------------------------------
# ## Counting reads in peaks
# dba <- dba.count(dba, bParallel = TRUE)
# 
# ## Count normalization (library size)
# dba <- dba.normalize(dba)

## ----contrast_atac, eval = FALSE----------------------------------------------
# atac_mm <- dba.contrast(dba, contrast = c("Condition", "MM", "MGUS"))

## ----diff_analyses_atac, eval = FALSE-----------------------------------------
# atac_mm <- dba.analyze(dba_diff, design = "~ Condition")
# atac_mm

## ----show_atac_dba, echo = FALSE----------------------------------------------
power4peaks::atac_mm

## ----load_p4p_data_RUN--------------------------------------------------------
data("tamoxifen", package = "power4peaks")
data("endometrium", package = "power4peaks")
data("atac_mm", package = "power4peaks")

## ----convert_p4p_tam----------------------------------------------------------
library(power4peaks)

p4p_tamoxifen = as.power4peaks(tamoxifen)
p4p_tamoxifen

## ----convert_p4p_endo---------------------------------------------------------
library(power4peaks)

p4p_endometrium = as.power4peaks(endometrium)
p4p_endometrium

## ----convert_p4p_atac---------------------------------------------------------
library(power4peaks)

p4p_atac_mm = as.power4peaks(atac_mm)
p4p_atac_mm

## ----show_curves_tam, fig.width=6, fig.height=3-------------------------------
plot.stat.distribution(p4p_tamoxifen)

## ----show_curves_endo, fig.width=6, fig.height=3------------------------------
plot.stat.distribution(p4p_endometrium)

## ----show_curves_atac, fig.width=6, fig.height=3------------------------------
plot.stat.distribution(p4p_atac_mm)

## ----power_tam, fig.width=6, fig.height=5-------------------------------------
tamoxifen_power <- compute.power(p4p_tamoxifen)
tamoxifen_power

## ----power_endo, fig.width=6, fig.height=5------------------------------------
endometrium_power <- compute.power(p4p_endometrium)
endometrium_power

## ----power_atac, fig.width=6, fig.height=5------------------------------------
atac_mm_power <- compute.power(p4p_atac_mm)
atac_mm_power

## ----session_info, echo=FALSE-------------------------------------------------
session.info = function(return.session = FALSE,
                        print.versions = TRUE,
                        return.versions = FALSE,
                        session.file = NULL) {
  
  session = sessionInfo()
  
  list.v = list(`R version:` = session$R.version$version.string,
                `Base packages:` = sort(session$basePkgs),
                `Other attached packages:` = sort(paste(names(session$otherPkgs),
                                                        installed.packages()[names(session$otherPkgs), "Version"],
                                                        sep = "_")),
                `Loaded via a namespace (and not attached):` = sort(paste(names(session$loadedOnly),
                                                                          installed.packages()[names(session$loadedOnly), "Version"],
                                                                          sep = "_")))
  # Indicating when a section is empty
  for (i in 1:length(list.v)) {
    if (length(list.v[[i]]) == 0) {
      (list.v[[i]] = "No packages loaded in this section")}
  }
  
  versions = list(session = session,
                  versions = list.v)
  
  if (print.versions == TRUE) {print(versions$versions, quote = FALSE)}
  
  if (return.session == TRUE | return.versions == TRUE) {
    if (return.session == TRUE & return.versions == FALSE) {
      return(versions$session)} else if (return.session == FALSE & return.versions == TRUE) {
        return(versions$versions)} else {return(versions)}
  }
  
  
  
  # Export sessionInfo file if required
  if (!is.null(session.file)) {
    session.title = paste("### Session info:", Sys.time(), "###")
    
    write(x = paste0(rep("#", nchar(session.title)), collapse = ""), file = session.file, append = FALSE)
    write(x = session.title, file = session.file, append = TRUE)
    write(x = paste0(paste0(rep("#", nchar(session.title)), collapse = ""), "\n"), file = session.file, append = TRUE)
    
    write(x = "### SESSION INFO\n", file = session.file, append = TRUE)
    capture.output(versions$session, file = session.file, append = TRUE)
    write(x = "\n\n\n", file = session.file, append = TRUE)
    
    write(x = paste0(rep("#", 150), collapse = ""), file = session.file, append = TRUE)
    write(x = "\n", file = session.file, append = TRUE)
    write(x = "### VERSIONS\n", file = session.file, append = TRUE)
    write(x = "\n", file = session.file, append = TRUE)
    capture.output(print(versions$versions), file = session.file, append = TRUE)
  }
} # end function

session.info(print.versions = TRUE)

