#!/bin/bash

# Function to log a message with "randomly" tag and PID
log_message() {
    local message="$1"
    local tag="randomly"
    local pid=$$

    logger -t "$tag" -p user.info "[$pid] $message"
}

count=1

while [ "$count" -le 3 ]; do
    random_number=$((1 + RANDOM % 100))
    log_message "Random Number $count: $random_number"
    count=$((count + 1))
done