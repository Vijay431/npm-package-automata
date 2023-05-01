#!/bin/bash env

readonly source_branch=$1
dest_branch="dev"

if [[ $source_branch == *"dev"* ]]; then
  dest_branch="stage"
elif [[ $source_branch == *"stage"* ]]; then
  dest_branch="test"
elif [[ $source_branch == *"release"* ]]; then
  dest_branch="release"
elif [[ $source_branch == *"support"* ]]; then
  dest_branch="support"
elif [[ $source_branch == *"hotfix"* ]]; then
  dest_branch="hotfix"
else
  dest_branch="master"
fi

echo $dest_branch
