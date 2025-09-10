.onAttach =
  function(libname, pkgname){
    msg = paste0("Loading required package: ", pkgname,"\n\n",
                 "If you are using `power4peaks` in your work please cite:\n",
                 "'XYZ. XXJournal. 20XX.'")
    packageStartupMessage(msg)


    # Check internet connection
    if (isFALSE(curl::has_internet())) {return(invisible(NULL))}

    # Store power4peaks package versions
    check = suppressMessages(rvcheck::check_github("sebastian-gregoricchio/power4peaks"))
    # When up-to-date == NA it means that it is a developmental version higher then the last release
    if (is.na(check$up_to_date)) {return(invisible(NULL))}

    # Check if power4peaks is up-to-date and print a message if not up-to-date
    if (check$up_to_date == F) {
      message = paste("| The `power4peaks` package is not up-to-date. Installed version v",
                      check$installed_version, " --> v", check$latest_version,
                      " available.", sep="")
      command = '| To update power4peaks type: remotes::install_github("sebastian-gregoricchio/power4peaks", build_manual = TRUE, build_vignettes = TRUE)'

      packageStartupMessage(paste("\033[0;37;44m",
                                  paste(rep("-", nchar(command)+2), collapse = ""),
                                  "\n", paste0(message, paste(rep(" ", nchar(command) - nchar(message)),  collapse = "")), " |\n",
                                  command, " |",
                                  "\n", paste(rep("-", max(c(nchar(message),nchar(command)))+2), collapse = ""),
                                  "\033[0m",
                                  sep = ""))
    }
  }
