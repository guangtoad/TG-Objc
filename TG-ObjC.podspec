Pod::Spec.new do |s|
  s.name = 'TG-ObjC'
  s.version = '0.1.0'

  #s.osx.deployment_target = '13.1'
  s.ios.deployment_target = '9.0'

  s.license = 'MIT'
  s.summary = 'TG-ObjC Lib'
  s.homepage = 'https://github.com/guangtoad/TG-Objc'
  s.author = { 'Olivier Poitrey' => 'guang_toad@outlook.com' }
  s.source = { :git => 'https://github.com/guangtoad/TG-Objc.git', :tag => s.version.to_s }

  s.description = 'This is TG-ObjC Lib'
  s.source_files = 'TG-ObjC/**/*'
  s.requires_arc = true

end
