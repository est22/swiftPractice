import UIKit // Foundation Framework

// 옵셔널 타입으로 선언
var email: String? = "abc@a.com"
type(of:email)
print(email)

var gender: Bool = true // 할당 연산자

print("회원 정보: \(email), \(gender)")

// 옵셔널 언래핑 조건문
if email == nil {
    print("이메일을 잘못 작성하셨습니다.")
} else {
    print(email!)
}

// 삼항연산자 ? ㅇㅇ : ㄴㄴ
let result = email != nil ? email! : "이메일을 잘못 작성하셨습니다."
print(result)


// 연락처럴 기입하는 텍스트 필드일 경우, 텍스트필드에 작성되는 모든 글자는 문자로 인식이 된다. 숫자를 입력하더라도 String Type으로 인식이 될 것이다.
var phoneNumber = "01021345234안녕"
// 1. 숫자가 맞는지? 2. 자릿수 카운트 3. 빈 칸
//Int(phoneNumber)
type(of: phoneNumber)

var resultPhoneNumber = Int(phoneNumber)
type(of: resultPhoneNumber)

Int8.min
Int8.max
UInt8.min
UInt8.max

var foodList: [String] = ["도넛","아이스크림","크로플"]
type(of: foodList) // String으로 해줘야하는 Array를 뜻함 ->

foodList.insert("사탕", at: 1)
foodList.append("초콜릿")
foodList.append(contentsOf: ["피자","치킨"]) // 여러개 추가할때

var numberArray = [Int](1...100)//Array(repeating:0, count:100

numberArray.shuffled() // ~~ed, ing: 원본 값은 건들지 않는다.
print(numberArray)

var sortArray = [3,4,6,2,7,1]
sortArray.sort()
print(sortArray)

var sampleString = "SSAC"
sampleString.append(": iOS 앱 개발자 데뷔 과정")
print(sampleString)

var sampleString2 = "SSAC"
sampleString2.appending(": iOS 앱 개발자 데뷔 과정")
print(sampleString2)

// key 고유해야함, 순서가 없음.
//var dictionary: [Int: String] = [1: "김철수", 2:"김안녕", 3:"하하하"]
var dictionary: Dictionary<Int, String> = [1: "김철수", 2:"김안녕", 3:"하하하"]

// 신조어 검색기 (딕셔너리 vs 배열)
let wordDictionary = ["jmt": "존맛탱", "별다줄": "별걸 다 줄이다", "스드메": "스튜디오 드레스 메이크업"]
let userSearchText = "JMT".lowercased()

wordDictionary[userSearchText]

// 배열로 할 경우 코드가 길어진다.
let wordArray = ["jmt", "별다줄", "스드메"]
let userText = wordArray.randomElement()!

if userText == "jmt" {
    print("존맛탱")
} else if userText == "별다줄" {
    print("별걸 다 줄임")
}

// 집합(Set)
let set: Set<Int> = [1,3,4,5,5,6,7,7,7]
let set2: Set<Int> = [2,3,4,4,4,4]

set.intersection(set2)
print(set)



