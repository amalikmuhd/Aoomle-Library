#
# Be sure to run `pod lib lint Aoomle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Aoomle'
  s.version          = '0.1.0'
  s.summary          = 'Aoomle is a large libary which contain, alert view controller that support dark mode, and it is still in beta many features are coming to it.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aoomle/Aoomle'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Abdulmalik Muhammad' => 'bawasuru@gmail.com' }
  s.source           = { :git => 'https://github.com/aoomle/Aoomle.git', :tag => s.version.to_s }
   s.social_media_url = 'https://twitter.com/aoomle'

  s.ios.deployment_target = '9.0'
  
  s.swift_versions = ['4.2', '5.0']

  s.source_files = 'Aoomle/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Aoomle' => ['Aoomle/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
