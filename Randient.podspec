Pod::Spec.new do |s|

  s.name         = "Randient"

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.requires_arc = true

  s.version      = "0.1.0"
  s.summary      = "Radient, random gradient views for iOS."
  s.description  = <<-DESC
  					TODO
                   DESC

  s.homepage          = "https://github.com/MerrickSapsford/Randient"
  s.license           = "MIT"
  s.author            = { "Merrick Sapsford" => "merrick@sapsford.tech" }
  s.social_media_url  = "http://twitter.com/MerrickSapsford"

  s.source       = { :git => "https://github.com/MerrickSapsford/Randient.git", :tag => s.version.to_s }
  s.source_files = "Sources/Randient/**/*.{h,m,swift}", "Scripts/gen/*.{swift}"

  s.prepare_command = './Scripts/update.sh'

end
