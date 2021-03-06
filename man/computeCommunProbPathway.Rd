% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modeling.R
\name{computeCommunProbPathway}
\alias{computeCommunProbPathway}
\title{Compute the communication probability on signaling pathway level by summarizing all related ligands/receptors}
\usage{
computeCommunProbPathway(object, thresh = 0.05)
}
\arguments{
\item{object}{CellChat object}

\item{thresh}{threshold of the p-value for determining significant interaction}
}
\value{
A CellChat object with updated slot 'netP':

object@netP$prob is the communication probability array on signaling pathway level; USER can convert this array to a data frame using the function 'reshape2::melt()',

e.g., `df.netP <- reshape2::melt(object@netP$prob, value.name = "prob"); colnames(df.netP)[1:3] <- c("source","target","pathway_name")` or access all significant interactions using the function \code{\link{subsetCommunication}}

object@netP$pathways list all the signaling pathways with significant communications
}
\description{
Compute the communication probability on signaling pathway level by summarizing all related ligands/receptors
}
