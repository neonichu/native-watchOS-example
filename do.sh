#!/bin/sh

set -e

pod deintegrate
rm -rf $HOME/Library/Developer/Xcode/DerivedData/*

bundle install
bundle exec pod install --no-repo-update

xcodebuild -workspace watchOSsample.xcworkspace -scheme watchOSsample
xcodebuild -workspace watchOSsample.xcworkspace -scheme 'watchOSsample WatchKit App'
