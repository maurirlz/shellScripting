#!/bin/zsh -x

# Create a report file for a single shipping container

targetContainer="$1";
targetDir="$2";
finalPath="$targetDir/$targetContainer.csv"

mkdir -pv -- "$targetDir";
grep -- "$targetContainer" ./shipments.csv > "${finalPath}";

echo "Wrote report @ $finalPath";