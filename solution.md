# Space Mission Log Analysis - Solution

## Challenge
Find the security code of the **longest successful Mars mission** from the space missions log database.

## Solution Script
The solution is implemented in @find_longest_mars_mission.awk

## Usage
```bash
./find_longest_mars_mission.awk space_missions.log
```

## Result
```
Longest Mars mission duration: 1629 days
Security code: XRT-421-ZQP
```

## Answer
**XRT-421-ZQP**

## Approach
The awk script:
1. Parses the pipe-separated log file
2. Filters for Mars missions with "Completed" status
3. Tracks the mission with maximum duration
4. Returns the security code of the longest mission

The longest successful Mars mission lasted **1629 days** with security code **XRT-421-ZQP**. 