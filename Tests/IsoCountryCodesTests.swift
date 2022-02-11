import IsoCountryCodes
import XCTest

final class IsoCountryCodesTests: XCTestCase {
    func testFindByNonexistentKey() {
        XCTAssertNil(IsoCountryCodes.find(key: "_"))
    }

    func testFindByAlpha2Key() {
        let country = IsoCountryCodes.find(key: "EE")
        XCTAssertEqual(country?.name, "Estonia")
    }

    func testFindByAlpha3Key() {
        let country = IsoCountryCodes.find(key: "EST")
        XCTAssertEqual(country?.name, "Estonia")
    }

    func testFindByNumericKey() {
        let country = IsoCountryCodes.find(key: "233")
        XCTAssertEqual(country?.name, "Estonia")
    }

    func testSearchByNumeric() {
        let country = IsoCountryCodes.searchByNumeric("233")
        XCTAssertEqual(country?.name, "Estonia")
    }
}
