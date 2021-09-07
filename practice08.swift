func couponService() {

  // 0~4:손님, 5~9:귀한 분, 10~19:더귀한분, 20~:천생연분

  let order = Int.random(in:0...30)

  // order = -1
  print(order)

  if order >= 0 && order < 5 {
    print("손님, 1000원 쿠폰 투척!")
  } else if order >= 5 && order < 10 {
    print("귀한분, 2000원 쿠폰 투척!")
  } else if order >= 10 && order < 20 {
    print("더 귀한분, 5000원 쿠폰 투척!")
  } else if order >= 20 {
    print("천생연분, 10000원 쿠폰 투척!")
  } else {
    print("에러 발생")
  }

}