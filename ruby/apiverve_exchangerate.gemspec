# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_exchangerate"
  spec.version       = "1.2.4"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Exchange Rate API - Ruby Client"
  spec.description   = "Exchange Rate looks up the conversion rate between two currency codes across 170+ currencies, with both currency names and the last-updated time. Paid plans add the inverse rate, the pair's 1-day to 1-year change, its 30-day high, low, average and volatility, past dates, and hourly and 30-day daily history."
  spec.homepage      = "https://apiverve.com/marketplace/exchangerate?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/exchangerate-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/exchangerate"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
