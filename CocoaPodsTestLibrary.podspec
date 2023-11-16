Pod::Spec.new do |s|
  s.name             = 'CocoaPodsTestLibrary'
  s.version          = '1.0.0-alpha.4'
  s.swift_version    = '5.0'
  s.summary          = 'sumary'
  s.description      = 'description'
  s.homepage         = 'http://github.com:gongwen/CocoaPodsTest.git'
  s.author           = { 'daven'        => 'gongwen@amberweather.com' }
  s.source       = { :git => "git@github.com:gongwen/CocoaPodsTest.git", :tag => s.version.to_s }
  s.source_files = 'ModuleCore/**/*.{h,hpp,c,cpp,m,mm,swift}','ModuleA/**/*.{h,hpp,c,cpp,m,mm,swift}','ModuleB/**/*.{h,hpp,c,cpp,m,mm,swift}'
  s.platform = :ios, '16.0'
  
  s.subspec 'ModuleCore' do |ss|
    ss.source_files = 'ModuleCore/**/*.{h,hpp,c,cpp,m,mm,swift}'
  end
  s.subspec 'ModuleA' do |ss|
    ss.source_files = 'ModuleA/**/*.{h,hpp,c,cpp,m,mm,swift}'
  end
  s.subspec 'ModuleB' do |ss|
    ss.source_files = 'ModuleB/**/*.{h,hpp,c,cpp,m,mm,swift}'
  end
end

#创建podspec：pod spec create UMPCore
#校验podspec：pod spec lint CocoaPodsTestLibrary.podspec --allow-warnings
# pod deintegrate && pod install
# pod install --repo-update
