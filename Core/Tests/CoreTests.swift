import Foundation
import Testing

@Suite struct CoreTests {
  @Test func testTwoPlusTwoIsFour() {
    #expect(2 + 2 == 4)
  }
}