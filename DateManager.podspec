Pod::Spec.new do |spec|

  spec.name         = "DateManager"
  spec.version      = "0.0.1"
  spec.summary      = "Make easily today, tomorrow, yesterday data by Date value and String value."
  spec.description  = "Date Manager can easily make date type data into string and date values based on the country set on the device."

  spec.homepage     = "https://github.com/VincentGeranium"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = "MIT"

  spec.author             = { "Kwangjun Kim." => "kwangjun3952@gmail.com" }
  # Or just: spec.author    = "김광준"
  # spec.authors            = { "김광준" => "kwangjun3952@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/김광준"

  # spec.platform     = :ios
  # spec.platform     = :ios, "10.0"

  #  When using multiple platforms
  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.15"

  spec.source       = { :git => "https://github.com/VincentGeranium/DateManagerFramework.git", :tag => "0.0.1" }

  spec.source_files  = "DateManager"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
  spec.swift_version = "5.0"
end
