#
# Be sure to run `pod lib lint CoreUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CoreUtil"
  s.version          = "0.1.0"
  s.summary          = "A short description of CoreUtil."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/<GITHUB_USERNAME>/CoreUtil"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Vincil Bishop" => "vincil.bishop@vbishop.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/CoreUtil.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CoreUtil' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  subspecArray = ["All","Blocks","Defines","Environment","Logging","View"]
    
    for subspec in subspecArray
        s.subspec subspec do |spec|
            spec.source_files = "Classes/#{subspec}/*.{h,m}"
            
            if  subspec == "All"
                for all_subspecs in subspecArray
                    if  all_subspecs != "All"
                        spec.dependency "CoreUtil/#{all_subspecs}"
                    end
                end
            end
            
            if  subspec == "Environment"
                spec.dependency "NSString-ZENVersions", "~> 0.1.2"
            end
            
            if  subspec == "Logging"
                spec.dependency "CoreUtil/Environment"
                spec.dependency "CocoaLumberjack", "~> 2.0.0"
                spec.dependency "RMLogFormatter", "~> 0.1.3"
            end
            
            if  subspec == "View"
                spec.dependency "VTSystemVersion", "~> 0.1"
                spec.dependency "KPAStoryboardConvenience", "~> 1.0.1"
            end
            
        end
    end
    
end
