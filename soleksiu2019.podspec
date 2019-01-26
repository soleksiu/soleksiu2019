#
# Be sure to run `pod lib lint soleksiu2019.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'soleksiu2019'
  s.version          = '0.0.5'
  s.summary          = 'Pod soleksiu2019 is the learning project in School42.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = 'This is pod created for learning purpose in Unit Factory(School42). Kiev. Ukraine. It will be used to learn a swift language.'


  s.homepage         = 'https://github.com/soleksiu/soleksiu2019'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'soleksiu' => 'soleksyg@gmail.com' }
  s.source           = { :git => 'https://github.com/soleksiu/soleksiu2019.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'soleksiu2019/Classes/**/*'
  s.frameworks = 'CoreData'
  s.swift_version = '4.0'
  # s.resource_bundles = {
  #   'soleksiu2019' => ['soleksiu2019/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
