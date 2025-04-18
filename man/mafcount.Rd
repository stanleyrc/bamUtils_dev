% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bamUtils.R
\name{mafcount}
\alias{mafcount}
\title{Wrapper around varcount adapted to tumor and normal "paired" bams}
\usage{
mafcount(
  tum.bam,
  norm.bam = NULL,
  maf,
  chunk.size = 100,
  verbose = TRUE,
  mc.cores = 1,
  ...
)
}
\arguments{
\item{tum.bam}{string path to tumor sample, input to Bamfile()}

\item{norm.bam}{optional string path to normal sample, input to Bamfile() (optional) (default = NULL)}

\item{maf}{GRanges of imported MAF (e.g. output of read.delim or dt2gr(fread(MAF)))}

\item{chunk.size}{integer Number of variants to extract from bam file at each iteration (default = 100)}

\item{verbose}{logical Flag whether to print verbose output (default = TRUE)}

\item{mc.cores}{integer Number of cores in mclapply (default = 1)}

\item{...}{additional pparams to pass to varcount}
}
\value{
GRanges of MAF annotated with fields $alt.count.t, $ref.count.t, $alt.count.n, $ref.count.n
}
\description{
Returns base counts for reference and alternative allele for an input tumor (and normal bam) and import MAF as a GRanges specifying substitutions

maf is a single width GRanges describing variants and field 'ref' (or 'Reference_Allele'), 'alt' (or 'Tum_Seq_Allele1') specifying reference and alt allele.
maf is assumed to have width 1 and strand is ignored.
}
\author{
Marcin Imielinski
}
