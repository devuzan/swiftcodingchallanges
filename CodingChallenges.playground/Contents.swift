import Cocoa

/*
 Coding Challanges
 */

/*
Challenge 1: Are the letters unique?
 */
func areTheLettersUnique(string: String) -> Bool {
  var usedLetters = [Character]()
  for character in string {
    if usedLetters.contains(character) {
      return false
    }
    usedLetters.append(character)
  }
  return true
}
/*
 Challenge 1: Test
 */
func testChallenge1() {
  assert(areTheLettersUnique(string: "No duplicates"), "Challange 1 failed")
  assert(areTheLettersUnique(string: "abcdefghijklmnopqrstuvwxyz"), "Challange 1 failed")
  assert(areTheLettersUnique(string: "AaBbCc"), "Challange 1 failed")
  assert(areTheLettersUnique(string: "Hello, world"), "Challange 1 failed")
}
//testChallenge1()
