# explorers_questions.R
# This script answers the Explorer’s Questions for the assignment.

# 1. Rhine Catchment Size (km²)
# According to hydrological data, the Rhine catchment is estimated to be approximately 185,000 km².
cat("1. Rhine catchment size (km²):\n")
cat("The Rhine catchment is approximately 185,000 km².\n\n")

# 2. Increase in Average River Runoff with Rainfall
# If it rains at 0.5 mm/hour for 24 hours over the entire catchment:
# Calculation steps:
#   - Total rainfall (mm) = 0.5 mm/h * 24 h = 12 mm.
#   - Convert 12 mm to meters: 12/1000 = 0.012 m.
#   - Total volume (m³) = catchment area (m²) * rainfall depth (m).
#   - Average runoff increase (m³/s) = total volume / (number of seconds in a day).

cat("2. Increase in average river runoff with 0.5 mm/hour rain for 24 hours:\n")

# Define catchment area in km² and convert to m²
catchment_area_km2 <- 185000
catchment_area_m2 <- catchment_area_km2 * 1e6

# Define rainfall parameters
rainfall_rate <- 0.5  # mm per hour
duration_hours <- 24
total_rainfall_mm <- rainfall_rate * duration_hours  # 0.5 * 24 = 12 mm
total_rainfall_m <- total_rainfall_mm / 1000         # convert mm to m

# Calculate the total volume of rainfall (in m³)
total_volume <- catchment_area_m2 * total_rainfall_m

# Total seconds in one day
seconds_per_day <- 24 * 3600

# Calculate the average increase in river runoff (m³/s)
runoff_increase <- total_volume / seconds_per_day

cat("The estimated increase in average river runoff is approximately", round(runoff_increase, 2), "m³/s.\n\n")

# 3. (Optional) Time for a Raindrop to Travel from Alpine Rhine to the Ocean
# For estimation, assume:
#   - A distance of 1000 km from the Alpine Rhine to the ocean.
#   - An average river flow speed of 2 m/s.
cat("3. (Optional) Estimated travel time for a raindrop from the Alpine Rhine to the ocean:\n")
distance_km <- 1000
distance_m <- distance_km * 1000  # convert km to m
flow_speed <- 2  # m/s

# Calculate travel time in seconds, then convert to days
travel_time_seconds <- distance_m / flow_speed
travel_time_days <- travel_time_seconds / 86400

cat("The estimated travel time is approximately", round(travel_time_days, 2), "days.\n\n")

# 4. Questions about Middelkoop et al. (2001)
cat("4. Questions about Middelkoop et al. (2001):\n\n")

# a. Additional hydroclimatic changes reported in the article:
cat("a. Additional Hydroclimatic Changes:\n")
cat("Besides changes in runoff, the study reports shifts in seasonal precipitation patterns, variations in evapotranspiration, and changes in the timing and intensity of snowmelt.\n\n")

# b. Three assumptions made by Middelkoop et al. (2001):
cat("b. Three Assumptions Made in the Study:\n")
cat("1) Hydrological relationships (e.g., between rainfall and runoff) remain stationary over time.\n")
cat("2) Land use and land cover in the basin remain constant during the study period.\n")
cat("3) Climate inputs (e.g., temperature and precipitation) are simplified and assumed to be uniformly representative of the region.\n\n")

# c. Purpose and importance of the study:
cat("c. Purpose and Importance of the Study:\n")
cat("The study was conducted to understand the impact of climate change on river flow regimes, which is critical for water resource management, flood risk assessment, and planning. It provides insights into future challenges regarding river navigability and water supply sustainability.\n\n")

# d. Similar studies or hypotheses:
cat("d. Similar Studies or Hypotheses:\n")
cat("Similar analyses have been conducted on other major river basins like the Danube and the Mississippi, as well as additional studies focusing on the Rhine catchment.\n\n")

# e. Evidence of low or high flow events in the Rhine since 2000:
cat("e. Evidence of Low/High Flow Events Since 2000:\n")
cat("There have been multiple reports of both low flow events (due to drought conditions) and high flow events (following intense rainfall) in the Rhine. For up-to-date information, refer to official hydrological monitoring agencies or reputable news sources.\n")


source("results/assignments/explorers_questions.R")


