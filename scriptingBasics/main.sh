#!/bin/zsh -x

# Create a report file for a single shipping container

targetContainer="$1";
targetDir="$2";
finalPath="$targetDir/$targetContainer.csv"
errorStatusCode=1;

if [[ ! "$1" ]]; then
    echo "Error: missing parameter: container name"
    exit $errorStatusCode;
fi

if [[ ! $2 ]]; then
  targetDir="$HOME/test";
fi

mkdir -pv -- "$targetDir";

 if grep -- "$targetContainer" ./shipments.csv > "${finalPath}"
 then
   echo "Wrote report @ $finalPath";
 else
   echo "No container found";
 fi
