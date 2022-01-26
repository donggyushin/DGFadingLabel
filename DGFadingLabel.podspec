Pod::Spec.new do |s|
    s.name             = 'DGFadingLabel'
    s.version          = '1.0.0'
    s.summary          = "A custom UILabel that fades away the end of your text when text is too large to fit within the label's frame."
    s.homepage         = 'https://github.com/donggyushin/DGFadingLabel'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'donggyushin' => 'donggyu9410@gmail.com' }
    s.source           = { :git => 'https://github.com/donggyushin/DGFadingLabel.git', :tag => s.version.to_s }
    s.ios.deployment_target = '12.0'
    s.swift_version = '5.5'
    s.source_files = 'Sources/DGFadingLabel/**/*'
  end