func blacklist() {

  let userNickname = "바보"
  let userAge = 20
  let blacklist: [String] = ["바보", "바봉", "욕설", "해삼", "말미잘", "현금", "폰번호"]

  if blacklist.contains("현금") {
    print("사용 불가")
  } else {
    print("사용 가능")
  }
  if userNickname == "바보" || userNickname == "멍청이" {
    print("닉네임 사용 불가")
  } else {
    print("닉네임 사용 가능")
  }

  if userAge > 14 && userNickname != "바보" {
    print("가입 가능") 
  } else {
    print("가입 불가")
  }
}