# Integrating CocoaPods into native watchOS targets

Xcode 7 added watchOS 2 as a new development platform. Released versions of CocoaPods
do not support integrating into those types of targets, yet, but there's development
branches you can use if you're adventurous.

- Use a `Gemfile`, as described in this [CP guide](https://guides.cocoapods.org/using/a-gemfile.html). See this example:

```ruby
source 'https://rubygems.org'

gem 'cocoapods', :git => 'https://github.com/CocoaPods/CocoaPods.git', :branch => 'watchapp2'
gem 'cocoapods-core', :git => 'https://github.com/CocoaPods/Core.git', :branch => 'watchapp2'
gem 'xcodeproj', :git => 'https://github.com/CocoaPods/Xcodeproj.git', :branch => 'watchapp2'
```

- You have to manually specify `:watchos` as a platform in your `Podfile` right now, for example:

```ruby
use_frameworks!

target 'watchOSsample WatchKit App' do

	platform :watchos, '2.0'
	pod 'Alamofire', :git => 'git@github.com:neonichu/Alamofire.git', :branch => 'watchos'
end
```

- Note that existing Pods will generally not declare support for the `:watchos` platform. See the `watchos`
branch of Alamofire used above how to add it to your `.podspec`.
