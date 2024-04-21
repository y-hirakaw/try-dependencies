import Foundation
import Dependencies
import DependenciesMacros

// Note: 依存関係の登録をしておく必要がある
// https://swiftpackageindex.com/pointfreeco/swift-dependencies/main/documentation/dependencies/registeringdependencies
extension ViewModel: DependencyKey {
    static let liveValue = ViewModel(
        displayNumber: { number in
            return "\\(number)"
        },
        incrementNumber: { number in
            var mutableNumber = number
            mutableNumber += 1
            return mutableNumber
        }
      )
}

//extension ViewModel: TestDependencyKey {
//    public static let testValue = Self()
//}

@DependencyClient
struct ViewModel {
    
    private var number = 0
    var displayNumber: (Int) throws -> String
    var incrementNumber: (Int) throws -> Int
    
//    var displayNumber: String {
//        return "\(self.number)"
//    }
    
//    var displayNumber: () throws -> String
    
//    mutating func incrementNumber() {
//        self.number += 1
//    }
    
//    var incrementNumber: () -> Void
}
