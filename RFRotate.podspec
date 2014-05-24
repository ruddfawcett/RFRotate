Pod::Spec.new do |s|
  s.name         = 'RFRotate'
  s.version      = '1.0'
  s.summary      = 'Drop in rotations for your iOS project. Support for blocks.'
  s.homepage     = 'https://github.com/ruddfawcett/RFRotate'
  s.screenshots  = 'https://camo.githubusercontent.com/f470bd4bb613bd0025e43470f58c5aa946ff4684/687474703a2f2f692e696d6775722e636f6d2f487067657379662e706e67'
  s.license      = 'MIT'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Rudd Fawcett' => 'rudd.fawcett@gmail.com' }
  s.platform     = :ios, '7.0'
  s.source       = { :git => 'https://github.com/ruddfawcett/RFRotate.git', :tag => 'v1.0' }
  s.source_files  = 'RFRotate/*'
  s.requires_arc = true
end