#!/bin/bash

output=$(cat /tmp/gitoutput)

merge_request_url=$(echo "$output" | grep -oP '(https?://[^\s]+/merge_requests/new[^\s]+)')

if [[ -n $merge_request_url ]]; then
    echo "Opening Merge Request URL: $merge_request_url"
    xdg-open "$merge_request_url" 2>/dev/null
else
    echo "No Merge Request URL found in /tmp/gitoutput."
fi
