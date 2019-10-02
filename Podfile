# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'
workspace 'Logger.xcworkspace'

target 'Logger' do
  project 'Logger'
  inherit! :search_paths
end

target 'LoggerTests' do
  inherit! :search_paths
  # Pods for testing
end

target 'ProofOfConcept' do
  project 'ProofOfConcept/ProofOfConcept'
  pod 'Logger', :path=>'./'
end
