#!/bin/bash

if [ -n "$TRAVIS_TAG" ]; then
    fastlane publish
else
    fastlane test
fi
exit