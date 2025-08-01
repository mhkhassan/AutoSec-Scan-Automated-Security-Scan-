#!/bin/bash

# Check if target URL is provided
if [ -z "$1" ]; then
  echo "Usage: ./zap_baseline_scan.sh <target_url>"
  exit 1
fi

# Define variables
TARGET_URL="$1"
REPORT_FILE="zap_report.html"
OUTPUT_DIR="$(pwd)/zap_output"

# Prepare output folder
mkdir -p "$OUTPUT_DIR"
chmod 777 "$OUTPUT_DIR"

# Run ZAP Baseline Scan
docker run --rm \
  --user root \
  -v "$OUTPUT_DIR":/zap/wrk/:rw \
  ghcr.io/zaproxy/zaproxy:stable \
  zap-baseline.py -t "$TARGET_URL" -g gen.conf -r "$REPORT_FILE" || true

# Check if the report was generated
if [ -f "$OUTPUT_DIR/$REPORT_FILE" ]; then
  echo "ZAP scan completed. Report saved to $OUTPUT_DIR/$REPORT_FILE"
else
  echo "ZAP scan failed or no report was generated."
  exit 1
fi
