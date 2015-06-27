# Integrating CocoaPods into native watchOS targets

Xcode 7 added watchOS 2 as a new development platform. There is a beta version of CocoaPods, 0.38.0 beta 1, which supports it already.

- Install the beta version:

```bash
$ gem install cocoapods --pre
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
