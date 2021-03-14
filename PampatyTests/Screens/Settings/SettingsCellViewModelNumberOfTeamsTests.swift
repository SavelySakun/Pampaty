import XCTest
@testable import Pampaty

class SettingsCellViewModelNumberOfTeamsTests: XCTestCase {
  
  var sut = SettingsNumberOfTeamsCellVM()
  
  func testCellViewModelInit() {
    XCTAssertNotNil(sut.accessory)
    XCTAssertNotNil(sut.detailTextLabel)
  }
  
  func testGetAccessoryDoesNotReturnNil() {
    let accessory = sut.getAccessory()
    XCTAssertNotNil(accessory)
  }
  
  
   
}
