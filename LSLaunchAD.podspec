Pod::Spec.new do |s|
s.name         = 'LSLaunchAD'
s.version      = '0.0.2'
s.summary      = '一行代码实现带logo广告启动页'
s.homepage     = 'https://github.com/lsmakethebest/LSLaunchAD'
s.license      = 'MIT'
s.authors      = {'ls' => '623501561@qq.com'}
s.platform     = :ios, '6.0'
s.source       = {:git => 'https://github.com/lsmakethebest/LSLaunchAD.git', :tag => s.version}
s.source_files = 'LSLaunchAD/**/*.{h,m}'
#s.resource     = 'LSLaunchAD/LSLaunchAD.bundle'
s.requires_arc = true

#s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'    #所需的framework,多个用逗号隔开


#s.dependency "SDWebImage"
# s.dependency "JSONKit", "~> 1.4"	#依赖关系，该项目所依赖的其他库，如果有多个可以写多个 s.dependency

end
