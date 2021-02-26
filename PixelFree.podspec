#
#  Be sure to run `pod spec lint PixelFree.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "PixelFree"
  spec.version      = "1.2.1"
  spec.summary      = "美颜sdk"

  spec.homepage     = "https://github.com/iossun/PixelFree"


  spec.license      = "MIT"



 

  spec.author             = { "sunmu" => "musun@faceunity.com" }
  
   spec.platform     = :ios, "9.0"


  spec.source       = { :git => "https://github.com/iossun/PixelFree.git", :tag => "#{spec.version}" }

  spec.source_files  = "**/*.{h,m,inl}"
  spec.resources = '**/*.{png,txt}'
  spec.ios.vendored_frameworks = 'PixelFree/PixelFree.framework'
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  spec.ios.frameworks   = ['UIKit', 'AVFoundation']

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

  spec.requires_arc = true



end
