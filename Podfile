# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def apppods
    pod 'AFNetworking'
    pod 'SVProgressHUD'
    pod 'Mantle'
end

target 'SecurePim' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for SecurePim
  apppods
  target 'SecurePimTests' do
    inherit! :search_paths
    # Pods for testing
    apppods
  end

end
