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
    ss.dependency 'AppLovinSDK', '11.11.4'
    ss.dependency 'AppLovinMediationGoogleAdapter', '10.13.0.0'
    ss.dependency 'AppLovinMediationGoogleAdManagerAdapter', '10.13.0.0'
   # ss.dependency 'AppLovinMediationFacebookAdapter', '6.14.0.0'
    ss.dependency 'AppLovinMediationUnityAdsAdapter', '4.9.1.0'
    ss.dependency 'AppLovinMediationMintegralAdapter', '7.4.8.0.0'
    ss.dependency 'AppLovinMediationVungleAdapter', '7.1.0.2'
    ss.dependency 'AppLovinMediationIronSourceAdapter', '7.5.1.0.0'
    ss.dependency 'AppLovinMediationByteDanceAdapter', '5.5.0.9.0'
    ss.dependency 'AppLovinMediationInMobiAdapter', '10.6.0.0'
    ss.dependency 'AppLovinMediationFyberAdapter', '8.2.4.0'
    ss.dependency 'AmazonPublisherServicesSDK', '4.7.6'
    ss.dependency 'AppLovinMediationAmazonAdMarketplaceAdapter', '4.7.6.0'
    ss.dependency 'AppLovinMediationVerveAdapter', '2.20.0.0'
    ss.dependency 'OpenWrapSDK', '3.2.0'
    ss.dependency 'AppLovinPubMaticAdapter', '1.1.0'
    #ss.dependency 'AppLovinMediationYandexAdapter', '6.1.0.1'
    ss.dependency 'AppLovinMediationLineAdapter', '2.6.20230609.0'
  end
  s.subspec 'ModuleB' do |ss|
    ss.source_files = 'ModuleB/**/*.{h,hpp,c,cpp,m,mm,swift}'
  end
end

#创建podspec：pod spec create UMPCore
#校验podspec：pod spec lint CocoaPodsTestLibrary.podspec --allow-warnings
# pod deintegrate && pod install
# pod install --repo-update



# 潜在问题
# 1、子模块间源码可以相互调用
# 2、子模块间间接依赖彼此不可见
