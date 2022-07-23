#! bin/bash

echo "Current username:" $USER

echo "Current date:" $(date +%D)

echo "Current time:" $(date +%I:%M:%S)

echo "Current directory:" $(pwd)

echo "Amount of files in directory:" $(ls | wc -l)

echo "Size of largest file in directory:" $(du -sh * | sort -rh | head -1)



