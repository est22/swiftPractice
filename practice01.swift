func signUser() {
/*
Practice1. SignUser
*/

// 변수 선언( 선언 = 초기화 )
var nickname = "고래밥"
var age = 33
let email = "mono@monocoding.com"   // 변하지 않는 상수
var rate: Double = 4 // 밑의 line 17에서 에러가 나므로 4.0으로 작성하거나 자료형 명시(타입 어노테이션)
var gender = true

print("안녕하세요 \(nickname)입니다. 저는 \(age)살 이고, 이메일은 \(email)입니다. 평점은 \(rate)에요. \(gender)")   // 블럭 처리 후 괄호(Packaging)

// 6개월 지나 회원 정보 수정
nickname = "칙촉"
age = 20
rate = 3.3
gender = false
// email = "test@test.com" -> let으로 선언한 상수는 변경불가.

print("안녕하세요 \(nickname)입니다. 저는 \(age)살 이고, 이메일은 \(email)입니다. 평점은 \(rate)에요.") 

}