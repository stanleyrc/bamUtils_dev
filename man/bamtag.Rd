% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bamUtils.R
\name{bamtag}
\alias{bamtag}
\title{Outputs a tag to identify duplicate reads in GRanges input}
\usage{
bamtag(reads, secondary = FALSE, gr.string = FALSE)
}
\arguments{
\item{reads}{GenomicRanges or GappedAlignments or data.frame holding the reads}

\item{secondary}{boolean including secondary alignment(s) (default = FALSE)}

\item{gr.string}{boolean input reads into gr.string() (default = FALSE)}
}
\description{
Outputs a tag that cats 'qname', first vs first second mate +/- secondary alignment +/- gr.string
to give an identifier for determine duplicates in a read pile
}
