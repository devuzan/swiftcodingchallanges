import Cocoa

/*
 Coding Challanges
 */

/*
 Challenge 1: Are the letters unique?
-------------------------------------
 */
/*
Solution 1
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
 Solution 2
 */
func areTheLettersUnique2(string: String) -> Bool {
  Set(string).count == string.count
}
/*
 Solution 1: Test
 */
func challenge1Solution1() {
  assert(areTheLettersUnique(string: "No duplicates"), "Challange 1 failed")
  assert(areTheLettersUnique(string: "abcdefghijklmnopqrstuvwxyz"), "Challange 1 failed")
  assert(areTheLettersUnique(string: "AaBbCc"), "Challange 1 failed")
  assert(areTheLettersUnique(string: "Hello, world"), "Challange 1 failed")
}
/*
Solution 2: Test
*/
func challenge1Solution2() {
  assert(areTheLettersUnique2(string: "No duplicates"), "Challange 1 failed")
  assert(areTheLettersUnique2(string: "abcdefghijklmnopqrstuvwxyz"), "Challange 1 failed")
  assert(areTheLettersUnique2(string: "AaBbCc"), "Challange 1 failed")
  assert(areTheLettersUnique2(string: "Hello, world"), "Challange 1 failed")
}


/*
 Challenge 2:  Is a string a palindrome?
 -------------------------------------
 */
/*
 Solution 1
 */
func isAStringAPalindrome(string: String) -> Bool {
  let reserved = String(string.reversed())
  return reserved == string
}
/*
Solution 2
*/
func isAStringAPalindrome2(string: String) -> Bool {
  let inputArray = Array(string)
  var newArray = Array("")
  for char in 0..<inputArray.count {
    let index = (inputArray.count - 1) - char
    newArray.append(inputArray[index])
  }
  return newArray == inputArray
}
func challenge2Solution1() {
  assert(isAStringAPalindrome(string: "TENET"), "Challange 2 failed")
  assert(isAStringAPalindrome(string: "HELLO") == false, "Challange 2 failed")
  assert(isAStringAPalindrome(string: "ABC") == false, "Challange 2 failed")
  assert(isAStringAPalindrome(string: "ABBA"), "Challange 2 failed")
}
func challenge2Solution2() {
  assert(isAStringAPalindrome2(string: "TENET"), "Challange 2 failed")
  assert(isAStringAPalindrome2(string: "HELLO") == false, "Challange 2 failed")
  assert(isAStringAPalindrome2(string: "ABC") == false, "Challange 2 failed")
  assert(isAStringAPalindrome2(string: "ABBA"), "Challange 2 failed")
}


/*
Challenge 3: Do two strings contain the same characters?
-------------------------------------
*/
/*
Solution 1
*/
func containsTheSameCharacter(string1: String, string2: String) -> Bool {
  if string1.count == string2.count {
    var count = 0
    while count < string1.count {
      let chraracter = Array(string1)[count]
      if !string2.contains(chraracter) {
        return false
      }
      count += 1
    }
    return true
  }
  return false
}
/*
Solution 2
*/
func containsTheSameCharacter2(string1: String, string2: String) -> Bool {
  Array(string1).sorted() == Array(string2).sorted()
}
func challenge3Solution1() {
  assert(containsTheSameCharacter(string1: "ABC", string2: "CBA"), "Challange 2 failed")
  assert(containsTheSameCharacter(string1: "a1 b2 c3", string2: "c3 2b 1a"), "Challange 2 failed")
  assert(containsTheSameCharacter(string1: "merhaba", string2: "selam") == false, "Challange 2 failed")
  assert(containsTheSameCharacter(string1: "ali", string2: "alii") == false, "Challange 2 failed")
}
challenge3Solution1()
func challenge3Solution2() {
  assert(containsTheSameCharacter2(string1: "ABC", string2: "CBA"), "Challange 2 failed")
  assert(containsTheSameCharacter2(string1: "a1 b2 c3", string2: "c3 2b 1a"), "Challange 2 failed")
  assert(containsTheSameCharacter2(string1: "merhaba", string2: "selam") == false, "Challange 2 failed")
  assert(containsTheSameCharacter2(string1: "ali", string2: "alii") == false, "Challange 2 failed")
}
challenge3Solution2()
/*
Challenge 4: Does one string contain another?
-------------------------------------
*/
/*
Solution 1
*/
extension String {
  func doesContain(string: String) -> Bool {
    let wordList = self.components(separatedBy: ", ").map { $0.uppercased() }
    var currentIndex = 0
    while currentIndex < wordList.count {
      let word = wordList[currentIndex]
      if word == string.uppercased() {
        return true
      }else {
        currentIndex += 1
      }
    }
    return false
  }
}
/*
Solution 2
*/
extension String {
  func doesContain1(string: String) -> Bool {
    range(of: string, options: .caseInsensitive) != nil
  }
}
func challenge4Solution1() {
  assert("Hello, world".doesContain(string: "Hello"), "Challange 4 failed")
  assert("Hello, world".doesContain(string: "world"), "Challange 4 failed")
  assert("Hello, world".doesContain(string: "Hi")  == false, "Challange 4 failed")
  assert("Hello, world".doesContain(string: "How") == false, "Challange 4 failed")
}
func challenge4Solution2() {
  assert("Hello, world".doesContain1(string: "Hello"), "Challange 4 failed")
  assert("Hello, world".doesContain1(string: "world"), "Challange 4 failed")
  assert("Hello, world".doesContain1(string: "Hi")  == false, "Challange 4 failed")
  assert("Hello, world".doesContain1(string: "How") == false, "Challange 4 failed")
}
challenge4Solution1()
challenge4Solution2()

