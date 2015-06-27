#!/bin/sh

set -e

rm -rf /Users/boris/Library/Developer/Xcode/DerivedData/*

bundle exec pod deintegrate
bundle exec pod install

#$HOME/Sources/Rainforest/CocoaPods/bin/pod deintegrate
#$HOME/Sources/Rainforest/CocoaPods/bin/pod install --no-repo-update

#exit 0

xcodebuild -workspace watchOSsample.xcworkspace -scheme watchOSsample
xcodebuild -workspace watchOSsample.xcworkspace -scheme 'watchOSsample WatchKit App'
