#!/bin/bash

# Define variables
TARGET_URL="$1"
REPORT_FILE="zap_report.html"

# Run ZAP Baseline Scan using DockerHub image
docker run --rm -v "$(pwd)":/zap/wrk/:rw -t owasp/zap2docker-stable \
    zap-baseline.py -t "$TARGET_URL" -g gen.conf -r "$REPORT_FILE" || true

# Check if the report was generated
if [ -f "$REPORT_FILE" ]; then
    echo "ZAP scan completed. Report saved to $REPORT_FILE."
else 
    echo "ZAP scan failed or no report was generated."
    exit 1
fi
