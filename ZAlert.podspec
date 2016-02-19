Pod::Spec.new do |s|
    s.name         = 'ZAlert'
    s.version      = '0.0.1'
    s.summary      = 'An easy to show a custom alert'
    s.homepage     = 'https://github.com/zcill/ZAlert'
    s.license      = 'MIT'
    s.authors      = {'Zcill Coder' => 'zcillcoder@gmail.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/zcill/ZAlert.git', :tag => s.version}
    s.source_files = 'ZAlert/**/*.{h,m}'
    s.resource     = 'ZAlert/images/*.{png,xib}'
    s.requires_arc = true
end
