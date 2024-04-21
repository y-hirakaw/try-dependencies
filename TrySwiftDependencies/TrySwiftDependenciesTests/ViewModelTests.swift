import XCTest
import Dependencies
@testable import TrySwiftDependencies

final class ViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    func testNumber() throws {
        let model = withDependencies {
            $0[ViewModel.self].displayNumber = { _ in  "10" }
        } operation: {
            ViewModel()
        }
        XCTAssertEqual(model.displayNumber, "10")
    }
}
