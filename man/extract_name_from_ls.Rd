% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_md_fields.R
\name{extract_name_from_ls}
\alias{extract_name_from_ls}
\title{Extract first or last name from Name field}
\usage{
extract_name_from_ls(list, var = "Name", which)
}
\arguments{
\item{list}{output from \code{convert_md_tibble_to_list()}}

\item{var}{character, name field (Name/Creator)}

\item{which}{character denoting which part of name to extract (first/last)}
}
\value{
vector of length 1 containing first or last name
}
\description{
Extract first or last name from Name field
}
\examples{
path_to_md_template <- system.file("markdown/westerband_template.md", package = "galaxias")
scan_output <- read_metadata_md(path_to_md_template)
metadata_tibble <- extract_md_contents(scan_output)
convert_md_tibble_to_list(metadata_tibble) |> extract_name_from_ls(which = "last")
}
\keyword{internal}
