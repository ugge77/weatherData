\name{getStationCode}
\alias{getStationCode}
\title{Gets the Weather Station code for a location (in the US)}
\usage{
getStationCode(stationName, region = NULL)
}
\arguments{
  \item{stationName}{String that you want to get the
  weatherStation code for}

  \item{region}{A qualifier about the station's location.
  It could be a continent or a country. If in the US,
  region is a two-letter state abbreviation. Ex. "AK" for
  Alaska}
}
\value{
A one row data frame containing: \itemize{ \item A string
of Station Name that matched \item the region. (two-letter
state abbreviation if in the US) \item The 4-letter weather
station ID. (This is the string you use when calling
\code{getDetailedWeather()}) }
}
\description{
This function goes through the USAirportWeatherStations
dataset and looks for matches. Usually, the 4 letter
airportCode is what you are after.
}
\examples{
getStationCode("Fiji")
getStationCode("Athens", region="GA") # in the US State of Georgia
}
\references{
For a world-wide list of possible stations, be sure to look
at \url{http://weather.rap.ucar.edu/surface/stations.txt}
The ICAO (4-letter code is what needs to be input to
\code{getDetailedWeather()})
}

