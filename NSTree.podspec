Pod::Spec.new do |s|
  s.name             = "NSTree"
  s.version          = '1.0'
  s.summary          = "B-Tree data structure implementation for iOS / objective-c without using CFTree."
  s.description      = <<-DESC
			B-Tree data structure implementation for iOS / objective-c without using CFTree. 

			Can be used as a storage mechanism or to index large sets of data. Performs fairly well 
			compared to Core Data and regular NSArrays. 

			Keywords: iOS, tree, algorithms, data structures, binary, b-trees, core data, storage, unit tests, benchmarks.
                       DESC
  s.homepage         = "https://github.com/carlinyuen/NSTree"
  s.license          = 'MIT'
  s.source           = { :git => "https://github.com/Raztor0/NSTree.git" }

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'NSTree/*.{h,m}'
  s.public_header_files = 'NSTree/**/*.h'
end


