% Generated by roxygen2 (4.0.1): do not edit by hand
\name{renderDataTable}
\alias{renderDataTable}
\title{Table output with the JavaScript library DataTables}
\usage{
renderDataTable(expr, options = NULL, searchDelay = 500,
  callback = "function(oTable) {}", env = parent.frame(), quoted = FALSE)
}
\arguments{
\item{expr}{An expression that returns a data frame or a matrix.}

\item{options}{A list of initialization options to be passed to DataTables,
or a function to return such a list.}

\item{searchDelay}{The delay for searching, in milliseconds (to avoid too
frequent search requests).}

\item{callback}{A JavaScript function to be applied to the DataTable object.
This is useful for DataTables plug-ins, which often require the DataTable
instance to be available (\url{http://datatables.net/extensions/}).}

\item{env}{The environment in which to evaluate \code{expr}.}

\item{quoted}{Is \code{expr} a quoted expression (with \code{quote()})? This
is useful if you want to save an expression in a variable.}
}
\description{
Makes a reactive version of the given function that returns a data frame (or
matrix), which will be rendered with the DataTables library. Paging,
searching, filtering, and sorting can be done on the R side using Shiny as
the server infrastructure.
}
\details{
For the \code{options} argument, the character elements that have the class
\code{"AsIs"} (usually returned from \code{\link{I}()}) will be evaluated in
JavaScript. This is useful when the type of the option value is not supported
in JSON, e.g., a JavaScript function, which can be obtained by evaluating a
character string.
}
\examples{
# pass a callback function to DataTables using I()
renderDataTable(iris,
  options = list(
    pageLength = 5,
    initComplete = I("function(settings, json) {alert('Done.');}")
  )
)
}
\references{
\url{http://datatables.net}
}

