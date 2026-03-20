# 1. Load the data
# Ensure 'longJump.csv' is in a folder named 'data' within your project folder
dataLongJump <- read.csv(file.path("data", "longJump.csv")) [cite: 123, 124]

# 2. Explore the data
str(dataLongJump) [cite: 126]
head(dataLongJump) [cite: 126]

# 3. Plot the data
# Assuming columns are named 'Year' and 'Distance'
plot(dataLongJump$Year, dataLongJump$Distance, 
     xlab = "Year", ylab = "Distance (m)", 
     main = "Olympic Gold Medal Long Jump Results") [cite: 128]

# 4. Fit linear regression
model1 <- lm(Distance ~ Year, data = dataLongJump) [cite: 129]
summary(model1) [cite: 103]

# 5. Overlay the fitted line
abline(model1, col = "red") [cite: 131]

# 6. Find the maximum value
max_idx <- which.max(dataLongJump$Distance) [cite: 133]
dataLongJump[max_idx, ] [cite: 132]
