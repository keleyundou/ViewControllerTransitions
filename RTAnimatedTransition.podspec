Pod::Spec.new do |s|
  s.name         = "RTAnimatedTransition"
  s.version      = "0.0.1"
  s.summary      = "自定义Alert和Sheet的弹出动画"
  s.homepage     = "https://github.com/keleyundou/ViewControllerTransitions"
  s.license      = "MIT"
  s.author       = { "ColaBean" => "colabean720@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/keleyundou/ViewControllerTransitions.git", :tag => "#{s.version}" }
  s.source_files  = "RTAnimatedTransition"

end
