Pod::Spec.new do |s|

  s.name         = "Randient"

  s.ios.deployment_target = '9.0'
  if s.respond_to? 'swift_versions'
    s.swift_versions = ['4.0', '4.1', '4.2', '5.0']
  else
    s.swift_version = '4.0'
  end

  s.requires_arc = true

  s.version      = "1.3.1"
  s.summary      = "Radient, random gradient views."
  s.description  = <<-DESC
  					Randomizable, animated gradients generated from uigradients.com.
                   DESC

  s.homepage          = "https://github.com/uias/Randient"
  s.license           = "MIT"
  s.author            = { "UI At Six" => "uias@sapsford.tech" }
  s.social_media_url  = "http://twitter.com/MerrickSapsford"

  s.source       = { :git => "https://github.com/uias/Randient.git", :tag => s.version.to_s }
  s.source_files = "Sources/Randient/**/*.{h,m,swift}", "Sources/gen/*.{swift}"

  s.prepare_command = './Scripts/update.sh ./Sources'

end
