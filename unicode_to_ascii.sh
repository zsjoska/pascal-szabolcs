#!/bin/bash

# Script to convert Unicode Hungarian characters to ASCII in Pascal files
# Usage: ./unicode_to_ascii.sh

# Find all .pas files recursively and process them
find . -name "*.pas" -type f | while read -r file; do
    echo "Processing: $file"
        
    # Replace Hungarian Unicode characters with ASCII equivalents
    sed -i '' \
        -e 's/á/a/g' \
        -e 's/Á/A/g' \
        -e 's/é/e/g' \
        -e 's/É/E/g' \
        -e 's/í/i/g' \
        -e 's/Í/I/g' \
        -e 's/ó/o/g' \
        -e 's/Ó/O/g' \
        -e 's/ő/o/g' \
        -e 's/Ő/O/g' \
        -e 's/ú/u/g' \
        -e 's/Ú/U/g' \
        -e 's/ű/u/g' \
        -e 's/Ű/U/g' \
        -e 's/ü/u/g' \
        -e 's/Ü/U/g' \
        "$file"
    
    echo "  → Converted."
done

echo ""
echo "Conversion complete!"
