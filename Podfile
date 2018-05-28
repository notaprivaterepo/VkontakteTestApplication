platform :ios, '10.0'

target 'VkontakteTestApplication' do
  use_frameworks!

  pod "VK-ios-sdk"

end

  post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.1'
    end
  end

end
