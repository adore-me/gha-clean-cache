#!/bin/bash

# Colors
RD='\033[0;31m'
GR='\033[0;32m'
YL='\033[0;33m'
BL='\033[0;34m'
NC='\033[0m'

echo -e "${BL}Info:${NC} Clean cache key ${GR}$INPUT_KEY${NC}"
curl \
  -X DELETE \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: Bearer $INPUT_GH_TOKEN" \
  "https://api.github.com/repos/$GITHUB_REPOSITORY/actions/caches?key=$INPUT_KEY"