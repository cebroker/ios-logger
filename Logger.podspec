Pod::Spec.new do |spec|
  spec.name                 = "Logger"
  spec.version              = "0.0.1"
  spec.summary              = "Logger with firebase analytics"
  spec.description          = "Logger with firebase analytics Logger"
  spec.homepage             = "https://github.com/cebroker/ios-logger.git"
  spec.license              = { :type => "MIT", :file => "LICENSE" }
  spec.author               = { "CE Broker" => ""}
  spec.platform             = :ios, "11.0"
  spec.source               = { :git => "https://github.com/cebroker/ios-logger.git", :tag => "#{spec.version}" }
  spec.source_files         = "Logger/**/*{h,m,swift}"
  spec.swift_version        = "5.0"
end
