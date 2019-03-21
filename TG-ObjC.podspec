Pod::Spec.new do |s|
  s.name = 'TG-ObjC'
  s.version = '0.0.0'

  s.osx.deployment_target = '13.1'
  s.ios.deployment_target = '9.0'

  s.license = 'MIT'
  s.summary = 'TG-ObjC Lib'
  s.homepage = 'https://github.com/guangtoad/TG-Objc'
  s.author = { 'Olivier Poitrey' => 'guang_toad@outlook.com' }
  s.source = { :git => 'https://github.com/guangtoad/TG-Objc.git', :tag => s.version.to_s }

  s.description = 'TG-ObjC Lib'

  s.requires_arc = true
  #s.framework = 'ImageIO'
  
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'TG-ObjC/*.{h,m}'
    #core.exclude_files = 'SDWebImage/UIImage+WebP.{h,m}', 'SDWebImage/SDWebImageWebPCoder.{h,m}'
    #core.tvos.exclude_files = 'SDWebImage/MKAnnotationView+WebCache.*'
  end

  s.subspec 'TGFoundation' do |tgfun|
    s.osx.deployment_target = '13.1'
    s.ios.deployment_target = '9.0'
    tgfun.source_files = 'TGFoundation/MKAnnotationView+WebCache.*'
    tgfun.framework = 'MapKit'
    tgfun.dependency 'TGFoundation/Core'
  end

  s.subspec 'TGKit' do |tgkit|
    s.osx.deployment_target = '13.1'
    s.ios.deployment_target = '9.0'
    tgkit.source_files = 'TGKit/FLAnimatedImage/*.{h,m}'
    tgkit.dependency 'TGKit/Core'
    tgkit.dependency 'TGFoundation', '~> 0.0.0'
  end

end
