require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-exponea-sdk"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-exponea-sdk
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-exponea-sdk"
  # brief license entry:
  s.license      = "MIT License"
  s.authors      = { "Exponea" => "contact@exponea.com" }
  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-exponea-sdk.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.exclude_files = "ios/Tests/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "ExponeaSDK", "2.12.1"
  s.dependency "AnyCodable-FlightSchool", "0.4.0"
end

