#!/bin/bash -eu

VERSION=$1

[ -z "${VERSION}" ] && echo "Pass eurek8s-controller version as first comandline argument" && exit 1

FILES=(
  "crds.yaml   :  crds.yaml"
)

for line in "${FILES[@]}" ; do
    DESTINATION=$(echo "${line%%:*}" | xargs)
    SOURCE=$(echo "${line##*:}" | xargs)

    URL="https://raw.githubusercontent.com/Eurek8s/controller/$VERSION/crds/$SOURCE"
    echo "# ${URL}" > ../crds/"${DESTINATION}"
    curl -L "${URL}" >> ../crds/"${DESTINATION}"

done