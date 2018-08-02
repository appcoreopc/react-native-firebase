require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name                = "RNFirebase"
  s.version             = package["version"]
  s.summary             = package["description"]
  s.description         = package['description']
  s.license             = package['license']
  s.author              = package['author']
  s.homepage            = package['homepage']
  s.social_media_url    = 'http://twitter.com/RNFirebase'
  s.platform            = :ios, "9.0"
  s.source              = { :git => "https://github.com/expo/react-native-firebase.git", :tag => "v#{s.version}" }
  s.source_files        = 'RNFirebase/**/*.{h,m}'
  
  s.dependency          'React'
  s.dependency          'Firebase/Core'

  s.dependency          'Firebase/Messaging'
  s.dependency          'Firebase/Auth'
  s.dependency          'Firebase/Performance'
  s.dependency          'Firebase/Firestore'
  s.dependency          'Firebase/Storage'
  s.dependency          'Firebase/Database'
  s.dependency          'Firebase/RemoteConfig'
  s.dependency          'Firebase/Functions'

  # s.dependency          'Firebase/Fabric'
  # s.dependency          'Firebase/Crashlytics'

  # s.dependency          'Firebase/AdMob'
  # s.dependency          'Firebase/DynamicLinks'
  # s.dependency          'Firebase/Invites'
end
