#!/usr/bin/awk -f

# Space Mission Analysis Script
# Finds the security code of the longest successful Mars mission

BEGIN { 
    FS = "|"  # Set field separator
    max_duration = 0
    security_code = ""
}

# Skip comment lines and system headers
!/^#/ && !/^SYSTEM/ && !/^CONFIG/ && !/^CHECKSUM/ {
    # Clean up whitespace and extract fields
    gsub(/^[ \t]+|[ \t]+$/, "", $3);  # destination
    gsub(/^[ \t]+|[ \t]+$/, "", $4);  # status  
    gsub(/^[ \t]+|[ \t]+$/, "", $6);  # duration
    gsub(/^[ \t]+|[ \t]+$/, "", $8);  # security code
    
    # Check if this is a completed Mars mission
    if ($3 == "Mars" && $4 == "Completed") {
        duration = int($6);
        if (duration > max_duration) {
            max_duration = duration;
            security_code = $8;
        }
    }
}

END { 
    print "Longest Mars mission duration:", max_duration, "days";
    print "Security code:", security_code;
} 