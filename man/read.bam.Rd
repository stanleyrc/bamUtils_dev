% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bamUtils.R
\name{read.bam}
\alias{read.bam}
\title{Read BAM file into GRanges or data.table}
\usage{
read.bam(
  bam,
  intervals = NULL,
  gr = intervals,
  all = FALSE,
  bai = NULL,
  pairs.grl = TRUE,
  stripstrand = TRUE,
  what = scanBamWhat(),
  unpack.flag = FALSE,
  verbose = FALSE,
  tag = NULL,
  tagFilter = list(),
  isPaired = NA,
  isProperPair = NA,
  isUnmappedQuery = NA,
  hasUnmappedMate = NA,
  isNotPassingQualityControls = NA,
  isDuplicate = FALSE,
  isValidVendorRead = TRUE,
  pairs.grl.split = TRUE,
  as.data.table = FALSE,
  ignore.indels = FALSE,
  size.limit = 1e+06,
  ...
)
}
\arguments{
\item{bam}{string Input BAM file. Advisable to make BAM a BamFile instance instead of a plain string, so that the index does not have to be reloaded.}

\item{intervals}{GRanges of intervals to retrieve. If left unspecified with 'all = TRUE', will try to pull down entire BAM file}

\item{gr}{Granges (default = intervals)}

\item{all}{boolean Flag to read in all of BAM as a GRanges via `si2gr(seqinfo())` (default = FALSE)}

\item{bai}{string Input BAM index file.}

\item{pairs.grl}{boolean Flag if TRUE will return GRangesList of read pairs in which at least one read falls in the supplied interval (default = FALSE)}

\item{stripstrand}{boolean Flag to ignore strand information on the query intervals (default = TRUE)}

\item{what}{vector What fields to pull down from BAM. (default = \code{scanBamWhat()})}

\item{verbose}{boolean verbose flag (default = FALSE)}

\item{tag}{vector Additional tags to pull down from the BAM (e.g. 'R2')}

\item{isPaired}{boolean Flag indicates whether unpaired (FALSE), paired (TRUE), or any (NA) read should be returned. See documentation for Rsamtools::scanBamFlag(). (default = NA)}

\item{isProperPair}{boolean Flag indicates whether improperly paired (FALSE), properly paired (TRUE), or any (NA) read should be returned. A properly paired read is defined by the alignment algorithm and might, e.g., represent reads aligning to identical reference sequences and with a specified distance. See documentation for Rsamtools::scanBamFlag(). (default = NA)}

\item{isUnmappedQuery}{boolean Flag indicates whether unmapped (TRUE), mapped (FALSE), or any (NA) read should be returned. See documentation for Rsamtools::scanBamFlag(). (default = NA)}

\item{hasUnmappedMate}{boolean Flag indicates whether reads with mapped (FALSE), unmapped (TRUE), or any (NA) mate should be returned. See documentation for Rsamtools::scanBamFlag(). (default = NA)}

\item{isNotPassingQualityControls}{boolean Flag indicates whether reads passing quality controls (FALSE), reads not passing quality controls (TRUE), or any (NA) read should be returned. See documentation for Rsamtools::scanBamFlag(). (default = NA)}

\item{isDuplicate}{boolean Flag indicates that un-duplicated (FALSE), duplicated (TRUE), or any (NA) reads should be returned. 'Duplicated' reads may represent PCR or optical duplicates. See documentation for Rsamtools::scanBamFlag(). (default = FALSE)}

\item{pairs.grl.split}{boolean Return reads as GRangesList. Controls whether get.pairs.grl() does split (default = TRUE)}

\item{as.data.table}{boolean Return reads in the form of a data.table rather than GRanges/GRangesList (default = FALSE)}

\item{ignore.indels}{boolean Flag messes with cigar to read BAM with indels removed. Useful for breakpoint mapping on contigs (default = FALSE)}

\item{...}{futher arguments passed to Rsamtools::scanBamFlag()}
}
\value{
Reads in one of GRanges, GRangesList or data.table
}
\description{
Wrapper around Rsamtools BAM scanning functions
By default, returns GRangesList of read pairs for which <at least one> read lies in the supplied interval
}
