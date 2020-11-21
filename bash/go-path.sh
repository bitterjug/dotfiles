# Add ~/go/bin to the path
# to get jiq
GOBIN=~/go/bin
if [[ -d ${GOBIN} ]]; then
  PATH=${GOBIN}:$PATH
fi
