Pod::Spec.new do |s|
  s.name             = 'CocoaPodsTestLibrary'
  s.version          = '1.0.0-alpha.1'
  s.swift_version    = '5.0'
  s.summary          = 'sumary'
  s.description      = 'description'
  s.homepage         = 'http://git.amberweather.com/game_libs/mediationiosplugins.git'
  s.author           = { 'daven'        => 'gongwen@amberweather.com' }
  s.source       = { :git => "git@github.com:gongwen/CocoaPodsTest.git", :tag => s.version.to_s }
  s.source_files = 'ModuleCore/**/*.{h,hpp,c,cpp,m,mm,swift}','ModuleA/**/*.{h,hpp,c,cpp,m,mm,swift}','ModuleB/**/*.{h,hpp,c,cpp,m,mm,swift}'
  s.platform = :ios, '16.0'
end

#创建podspec：pod spec create UMPCore
#校验podspec：pod spec lint UMPCore.podspec --allow-warnings
