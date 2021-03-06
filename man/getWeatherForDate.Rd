\name{getWeatherForDate}
\alias{getWeatherForDate}
\title{Getting data for a range of dates}
\usage{
getWeatherForDate(station_id, start_date, end_date = NULL,
  station_type = "airportCode", opt_detailed = FALSE,
  opt_write_to_file = FALSE, opt_temperature_columns = TRUE,
  opt_all_columns = FALSE, opt_custom_columns = FALSE,
  custom_columns = NULL, opt_verbose = FALSE, daily_min = FALSE,
  daily_max = FALSE)
}
\arguments{
  \item{station_id}{is a valid 3- or 4-letter Airport code
  or a valid Weather Station ID (example: "BUF", "ORD",
  "VABB" for Mumbai).  Valid Weather Station "id" values:
  "KFLMIAMI75" or "IMOSCOWO2" You can look these up at
  wunderground.com}

  \item{start_date}{string representing a date in the past
  ("YYYY-MM-DD", all numeric)}

  \item{end_date}{If an interval is to be specified,
  end_date is a string representing a date in the past
  ("YYYY-MM-DD", all numeric) and greater than the
  \code{start_date} (Optional)}

  \item{station_type}{= "airportCode" (3- or 4-letter
  airport code) or "ID" (Wx call Sign)}

  \item{opt_detailed}{Boolen flag to indicate if detailed
  records for the station are desired. (default FALSE). By
  default only one records per date is returned.}

  \item{opt_verbose}{Boolean flag to indicate if verbose
  output is desired}

  \item{daily_min}{A boolean indicating if only the Minimum
  Temperatures are desired}

  \item{daily_max}{A boolean indicating if only the Maximum
  Temperatures are desired}

  \item{opt_write_to_file}{If TRUE, the resulting dataframe
  will be stored in a CSV file.  Default is FALSE}

  \item{opt_temperature_columns}{Boolen flag to indicate
  only Temperature data is to be returned (default TRUE)}

  \item{opt_all_columns}{Boolen flag to indicate whether
  all available data is to be returned (default FALSE)}

  \item{opt_custom_columns}{Boolen flag to indicate if only
  a user-specified set of columns are to be returned.
  (default FALSE) If TRUE, then the desired columns must be
  specified via \code{custom_columns}}

  \item{custom_columns}{Vector of integers specified by the
  user to indicate which columns to fetch.  The Date column
  is always returned as the first column. The column
  numbers specfied in \code{custom_columns} are appended as
  columns of the data frame being returned (default NULL).
  The exact column numbers can be found by visiting the
  weatherUnderground URL, and counting from 1. Note that if
  \code{opt_custom_columns} is TRUE, then
  \code{custom_columns} must be specified.}
}
\value{
A data frame with each row containing: \itemize{ \item Date
and Time stamp (for each date specified) \item Temperature
and/or other weather columns sought }
}
\description{
This function will return a (fairly large) data frame. If
you are going to be using this data for future analysis,
you can store the results in a CSV file by setting
\code{opt_write_to_file} to be TRUE
}
\details{
For each day in the date range, this function fetches
Weather Data.  Internally, it makes multiple calls to
\code{getDetailedWeather}.
}
\examples{
\dontrun{
dat <- getWeatherForDate("PHNL", "2013-08-10", 2013-08-31")
d3<- getWeatherForDate("CWWF", start_date="2014-03-01",
                        end_date = "2014-03-03",
                        opt_detailed = TRUE,
                        opt_all_columns = TRUE)
}
}
\references{
For a list of valid Weather Stations, try this format
\url{http://www.wunderground.com/weatherstation/ListStations.asp?selectedCountry=United+States}
and replace with your country of interest
}

