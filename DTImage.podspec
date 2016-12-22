Pod::Spec.new do |spec|
  spec.name = "DTImage"
  spec.version = "1.0.0"
  spec.summary = "Simple image processing."
  spec.homepage = "https://github.com/danjiang/DTImage"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Dan Jiang" => 'dan@danthought.com' }
  spec.social_media_url = "http://twitter.com/dtstudio"

  spec.platform = :ios, "8.0"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/danjiang/DTImage.git", tag: spec.version, submodules: true }
  spec.source_files = "Sources/**/*.{h,swift}"
end
