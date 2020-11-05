#!/bin/bash

GIT_TAG=$(git tag)
if [ -z "$GIT_TAG" ]; then
  standard-version --first-release -i /tmp/changelog.tmp.md --skip.commit --skip.tag
  standard-version --first-release
else
  standard-version -i /tmp/changelog.tmp.md --skip.commit --skip.tag
  standard-version
fi
