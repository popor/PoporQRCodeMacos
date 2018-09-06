#
# Be sure to run `pod lib lint PoporQRCodeMacos.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PoporQRCodeMacos'
  s.version          = '0.0.1'
  s.summary          = '生成二维码代码,MacOS版本.'

  s.homepage         = 'https://github.com/popor/PoporQRCodeMacos'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'popor' => '908891024@qq.com' }
  s.source           = { :git => 'https://github.com/popor/PoporQRCodeMacos.git', :tag => s.version.to_s }

  s.macos.deployment_target = '10.11'

  s.source_files = 'PoporQRCodeMacos/Classes/**/*'
  
  
end
