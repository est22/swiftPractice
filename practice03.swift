func calculateChange() {

  // let a = 10
  // let b = 3

  // print(a + b)
  // print(a - b)
  // print(a * b)
  // print(a / b) // 몫
  // print(a % b) // 나머지. Double 타입일때는 에러.

  // 거스름돈은 500원과 100원만 가능.
  // 10원 단위의 돈과 상품은 없음

  let money = 3100
  let product = 500

  let change = money - product

  let rest500 = change / 500
  let rest100 = change % 500 / 100

  print("거스름돈 \(change)원을, 500원 \(rest500)개, 100원 \(rest100)개로 거슬러주겠습니다.")
}
