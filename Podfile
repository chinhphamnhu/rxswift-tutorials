platform :ios, '9.0'
use_frameworks!
inhibit_all_warnings!
workspace 'RxSwiftTutorials'

def shared_pods
    pod 'RxSwift', '3.6.1'
    pod 'RxCocoa', '3.6.1'
end

def test_pods
    pod 'RxTest', '3.6.1'
    pod 'RxBlocking', '3.6.1'
end

target 'RxSwiftTutorials' do
    project 'RxSwiftTutorials'
    pod 'PromiseKit/Foundation', '~> 4.0'
    shared_pods

    target 'RxSwiftTutorialsTests' do
        inherit! :search_paths
        shared_pods
        test_pods
    end
end

target 'FS' do
    project 'FS/FS'
    shared_pods
    pod 'MVVM-Swift', '~> 1.1.0'
    pod 'SwiftUtils', '2.0.0'
    pod 'ObjectMapper', '2.2.6'
    pod 'SnapKit', '3.2.0'
    pod 'RealmSwift', '~> 3.0.2'

    target 'FSTests' do
        inherit! :search_paths
        shared_pods
        test_pods
    end
end

