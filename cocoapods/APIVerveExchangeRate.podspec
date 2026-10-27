Pod::Spec.new do |s|
  s.name             = 'APIVerveExchangeRate'
  s.version          = '1.2.3'
  s.summary          = 'Exchange Rate looks up the conversion rate between two currency codes.'
  s.description      = <<-'DESC'
Exchange Rate looks up the conversion rate between two currency codes. It returns the current forex rate and last-updated timestamp across 170+ supported currencies, in USD or any other base; paid plans add the inverse rate.

This iOS/macOS SDK provides a convenient way to access the Exchange Rate from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/exchangerate?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/exchangerate-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveExchangeRate/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
