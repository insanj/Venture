platform :ios, '9.0'

target 'Venture' do

source 'https://github.com/CocoaPods/Specs.git'

inhibit_all_warnings!

pod 'AFNetworking'
pod 'CompactConstraint'
pod 'CWStatusBarNotification'
pod 'DateTools'
pod 'JGProgressHUD'
pod 'PINRemoteImage'
pod 'SSKeychain'
pod 'SUBLicenseViewController'
pod 'UIImage+Additions'

post_install do | installer |
    require 'fileutils'
    FileUtils.cp_r('Pods/Target Support Files/Pods-Venture/Pods-Venture-acknowledgements.plist', 'Venture/Acknowledgements.plist', :remove_destination => true)
end

end
