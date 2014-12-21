Pod::Spec.new do |s|
  s.name = "NSString-ZENVersions"
  s.version = "0.1.1"
  s.summary = "Helping you find inner peace when comparing version numbers."
  s.description = <<-DESC
                   * Helping you find inner peace when comparing version numbers.
                   DESC
  s.homepage = "https://github.com/zenangst/NSString-ZENVersions"
  s.license = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.author = { "Christoffer Winterkvist" => "christoffer@winterkvist.com" }
  s.social_media_url = "https://twitter.com/zenangst"
  s.platform = :ios, '6.0'
  s.source = {
    :git => 'https://github.com/zenangst/NSString-ZENVersions.git',
    :tag => s.version.to_s
  }
  s.source_files = 'Source/*.*'
  s.frameworks = 'Foundation'
  s.requires_arc = true
end
