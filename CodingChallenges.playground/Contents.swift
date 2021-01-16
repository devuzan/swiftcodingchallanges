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
/*
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
/*
Challenge 3: Test
-------------------------------------
*/
func challenge3Solution1() {
  assert(containsTheSameCharacter(string1: "ABC", string2: "CBA"), "Challange 2 failed")
  assert(containsTheSameCharacter(string1: "a1 b2 c3", string2: "c3 2b 1a"), "Challange 2 failed")
  assert(containsTheSameCharacter(string1: "merhaba", string2: "selam") == false, "Challange 2 failed")
  assert(containsTheSameCharacter(string1: "ali", string2: "alii") == false, "Challange 2 failed")
}
func challenge3Solution2() {
  assert(containsTheSameCharacter2(string1: "ABC", string2: "CBA"), "Challange 2 failed")
  assert(containsTheSameCharacter2(string1: "a1 b2 c3", string2: "c3 2b 1a"), "Challange 2 failed")
  assert(containsTheSameCharacter2(string1: "merhaba", string2: "selam") == false, "Challange 2 failed")
  assert(containsTheSameCharacter2(string1: "ali", string2: "alii") == false, "Challange 2 failed")
}
challenge3Solution1()
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
/*
Challenge 4: Test
-------------------------------------
*/
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


/*
Challenge 5: Count the characters
-------------------------------------
*/
/*
Solution 1
*/
func countTheCharacters1(string: String, char: Character) -> Int {
  let letters = string.filter { $0 == char }
  print("The letter \(char) appears \(letters.count) times in \(string)")
  return letters.count
}
/*
Solution 2
*/
func countTheCharacters2(string: String, char: Character) -> Int {
  var count = 0
  for c in Array(string) {
    if char == c {
      count += 1
    }
  }
  print("The letter \(char) appears \(count) times in \(string)")
  return count
}
/*
Solution 3
*/
func countTheCharacters3(string: String, char: Character) -> Int {
  let count = string.reduce(0) {
    $1 == char ? $0 + 1 : $0
  }
  print("The letter \(char) appears \(count) times in \(string)")
  return count
}
/*
Solution 4
*/
func countTheCharacters4(string: String, char: Character) -> Int {
  let count = NSCountedSet(array: Array(string)).count(for: char)
  print("The letter \(char) appears \(count) times in \(string)")
  return count
}
/*
Solution 5
*/
func countTheCharacters5(string: String, char: Character) -> Int {
  let modified = string.replacingOccurrences(of: "\(char)", with: "")
  let count = string.count - modified.count
  print("The letter \(char) appears \(count) times in \(string)")
  return count
}
/*
Challenge 5: Test
-------------------------------------
*/
func challenge5Solution1() {
  assert(countTheCharacters1(string: "The rain in Spain", char: "a") == 2, "Challange 5 Failed")
  assert(countTheCharacters1(string: "Hacking with Swift", char: "i") == 3, "Challange 5 Failed")
  assert(countTheCharacters1(string: "Mississippi", char: "s") == 4, "Challange 5 Failed")
}
func challenge5Solution2() {
  assert(countTheCharacters2(string: "The rain in Spain", char: "a") == 2, "Challange 5 Failed")
  assert(countTheCharacters2(string: "Hacking with Swift", char: "i") == 3, "Challange 5 Failed")
  assert(countTheCharacters2(string: "Mississippi", char: "s") == 4, "Challange 5 Failed")
}
func challenge5Solution3() {
  assert(countTheCharacters3(string: "The rain in Spain", char: "a") == 2, "Challange 5 Failed")
  assert(countTheCharacters3(string: "Hacking with Swift", char: "i") == 3, "Challange 5 Failed")
  assert(countTheCharacters3(string: "Mississippi", char: "s") == 4, "Challange 5 Failed")
}
func challenge5Solution4() {
  assert(countTheCharacters4(string: "The rain in Spain", char: "a") == 2, "Challange 5 Failed")
  assert(countTheCharacters4(string: "Hacking with Swift", char: "i") == 3, "Challange 5 Failed")
  assert(countTheCharacters4(string: "Mississippi", char: "s") == 4, "Challange 5 Failed")
}
func challenge5Solution5() {
  assert(countTheCharacters5(string: "The rain in Spain", char: "a") == 2, "Challange 5 Failed")
  assert(countTheCharacters5(string: "Hacking with Swift", char: "i") == 3, "Challange 5 Failed")
  assert(countTheCharacters5(string: "Mississippi", char: "s") == 4, "Challange 5 Failed")
}
challenge5Solution1()
challenge5Solution2()
challenge5Solution3()
challenge5Solution4()
challenge5Solution5()


/*
 Challenge 6: Remove duplicate letters from a string
 */
/*
Solution 1
*/
func removedDuplicateLetters1(string: String) -> String {
  var newString = ""
  for char in string {
    if !newString.contains(char) {
      newString.append(char)
    }
  }
  return newString
}
/*
Solution 2
*/
func removedDuplicateLetters2(string: String) -> String {
  let array = string.map { String($0) }
  let ordered = NSOrderedSet(array: array)
  let letters = Array(ordered) as! Array<String>
  return letters.joined()
}
/*
Solution 3
*/
func removedDuplicateLetters3(string: String) -> String {
  var values = [Character: Bool]()
  let result = string.filter {
    values.updateValue(true, forKey: $0) == nil
  }
  return String(result)
}
/*
Challenge 6: Test
-------------------------------------
*/
func challenge6Solution1() {
  assert(removedDuplicateLetters1(string: "yusuf") == "yusf", "Challange 6 Failed")
  assert(removedDuplicateLetters1(string: "mississipi") == "misp", "Challange 6 Failed")
  assert(removedDuplicateLetters1(string: "hackingwithswift") == "hackingwtsf", "Challange 6 Failed")
}
func challenge6Solution2() {
  assert(removedDuplicateLetters1(string: "yusuf") == "yusf", "Challange 6 Failed")
  assert(removedDuplicateLetters1(string: "mississipi") == "misp", "Challange 6 Failed")
  assert(removedDuplicateLetters1(string: "hackingwithswift") == "hackingwtsf", "Challange 6 Failed")
}
func challenge6Solution3() {
  assert(removedDuplicateLetters1(string: "yusuf") == "yusf", "Challange 6 Failed")
  assert(removedDuplicateLetters1(string: "mississipi") == "misp", "Challange 6 Failed")
  assert(removedDuplicateLetters1(string: "hackingwithswift") == "hackingwtsf", "Challange 6 Failed")
}
challenge6Solution1()
challenge6Solution2()
challenge6Solution3()
*/

/*
 Challenge 7: Condense whitespace
 */
/*
Solution 1
*/
func condenseWhiteSpace1(string: String) -> String {
  let result = string.components(separatedBy: .whitespacesAndNewlines)
  return result.filter { !$0.isEmpty}.joined(separator: " ")
}
/*
Solution 2
*/
func condenseWhiteSpace2(string: String) -> String {
  var newString = ""
  var seenSpace = false
  for char in string {
    if char == " " {
      if seenSpace {
        continue
      }
      seenSpace = true
    } else {
      seenSpace = false
    }
    newString.append(char)
  }
  return newString
}
/*
Challenge 7: Test
*/
func challenge7Solution1() {
  assert(condenseWhiteSpace1(string: "a   b   c    ") == "a b c", "Challange 7 Failed")
  assert(condenseWhiteSpace1(string: "abc") == "abc", "Challange 7 Failed")
  assert(condenseWhiteSpace1(string: "a   bc") == "a bc", "Challange 7 Failed")
}
func challenge7Solution2() {
  assert(condenseWhiteSpace2(string: "a   b   c    ") == "a b c ", "Challange 7 Failed")
  assert(condenseWhiteSpace2(string: "abc") == "abc", "Challange 7 Failed")
  assert(condenseWhiteSpace2(string: "a   bc") == "a bc", "Challange 7 Failed")
}
challenge7Solution1()
challenge7Solution2()


/*
 Challenge 8: String is Rotated
 */
/*
Solution 1
*/
func stringIsRotated(string: String, rotated: String) -> Bool {
  guard string.count == rotated.count else { return false }
  let combinedRotated = rotated + rotated
  return combinedRotated.contains(string)
}
/*
Challenge 8: Test
*/
func challenge8Solution1() {
  assert(stringIsRotated(string: "abcdef", rotated: "defabc") == true, "Challange 8 Failed")
  assert(stringIsRotated(string: "abcd", rotated: "dabc") == true , "Challange 8 Failed")
  assert(stringIsRotated(string: "swift", rotated: "ftsiw") == false , "Challange 8 Failed")
}
challenge8Solution1()


/*
 Challenge 9: Find Pangram
 */
/*
Solution 1
*/
func findPangram1(string: String) -> Bool {
  let inputCharacters = Array(string.lowercased().replacingOccurrences(of: " ", with: "")).map { String($0) }
  let letterCharacters =  "abcdefghijklmnopqrstuvwxyz".map { String($0) } //CharacterSet.letters
  for char in letterCharacters {
    if !inputCharacters.contains(char) {
      return false
    }
  }
  return true
}
func findPangram2(string: String) -> Bool {
  let letterSet = Set(string.lowercased())
  let filtered = letterSet.compactMap { $0 >= "a" && $0 <= "z" }
  return filtered.count == 26
}
/*
Challenge 9: Test
*/
func challenge9Solution1() {
  assert(findPangram1(string: "The quick brown fox jumps over the lazy dog") == true, "Challange 9 Failed")
  assert(findPangram1(string: "The quick brown fox jumped over the lazy dog") == false , "Challange 9 Failed")
}
func challenge9Solution2() {
  assert(findPangram2(string: "The quick brown fox jumps over the lazy dog") == true, "Challange 9 Failed")
  assert(findPangram2(string: "The quick brown fox jumped over the lazy dog") == false , "Challange 9 Failed")
}
challenge9Solution1()
challenge9Solution1()


/*
 Challenge 10: Vovel and Consonants
 */
/*
Solution 1
*/

func seperateVowelAndConsonants(string: String) -> (Int, Int) {
  let vowels = ["a", "e", "i", "o"]
  var totalVowel = 0
  let clearedString = Array(string).map { String($0)}.filter { $0 != " " }
  for eachCharacter in clearedString {
    if vowels.contains(eachCharacter) {
      totalVowel += 1
    }
  }
  return (totalVowel, clearedString.count - totalVowel)
}
/*
Challenge 10: Test
*/
func challenge10Solution1() {
  assert(seperateVowelAndConsonants(string: "Swift Coding Challenges") == (6, 15), "Challange 10 Failed")
  assert(seperateVowelAndConsonants(string: "Mississippi") == (4, 7) , "Challange 10 Failed")
}
