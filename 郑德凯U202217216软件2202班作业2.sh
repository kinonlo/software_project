#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

line_count=0

while IFS= read -r line; do
    ((line_count++))
    echo "$line"
done < "$filename"

echo "Total lines: $line_count"
