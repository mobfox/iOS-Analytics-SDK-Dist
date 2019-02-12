#
# Be sure to run `pod lib lint MobFoxAnalyticsSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MobFoxAnalyticsSDK"
  s.version          = "3.6.6"
  s.summary          = "MobFox's iOS Analytics SDK"

wd = "Working Dir: %s" % [Dir.pwd]

puts wd

#puts ENV #$(PODS_ROOT)

#puts ENV['PODS_ROOT']

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "MobFox's Analytics SDK for iOS"

  s.homepage         = "http://mobfox.com"
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Matomy/MobFox" => "itamar.n@matomy.com"  }

  s.source           = { :git => 'https://github.com/mobfox/iOS-Analytics-SDK-Dist.git', :tag => "#{s.version}" }
  #s.source           = { :git => 'https://github.com/mobfox/MobFox-iOS-SDK.git', :commit => 'master' }

  #s.source           = { :git => 'https://github.com/mobfox/MobFox-iOS-SDK.git', :commit => 'dev' }



  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'


  puts   s.source


  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.requires_arc = true

  s.source_files = 'MobFoxAnalyticsSDK.embeddedframework/MobFoxAnalyticsSDK.framework/Headers/*.h'
  s.ios.libraries = 'z'

  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  s.frameworks = 'MobFoxAnalyticsSDK'

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' =>  'MobFoxAnalyticsSDK/**'  }


   s.public_header_files = 'MobFoxAnalyticsSDK.embeddedframework/MobFoxAnalyticsSDK.framework/Headers/*.h'
   s.vendored_frameworks = 'MobFoxAnalyticsSDK.embeddedframework/MobFoxAnalyticsSDK.framework'
   s.preserve_paths = 'MobFoxAnalyticsSDK.embeddedframework/MobFoxAnalyticsSDK.framework'
  # s.ios.frameworks = 'CoreData', 'SystemConfiguration'

end