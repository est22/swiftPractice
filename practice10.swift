func quizSet() {
  /*
    5와 7의 배수 찾기: 35, 70
  */

// let randomNumber = [3, 7, 10, 35, 70, 13, 44]

// for i in randomNumber {
//   if i % 5 == 0 && i % 7 == 0 {
//     print(i)
//   }
// }

  /*
    우수자 선별하기
  */

  // let scoreArray = [180, 270, 240, 300, 90, 120]
  // var bestArray: [Int] = [] // type annotation 없으면 에러 발생.

  // for score in scoreArray {
  //   if score >= 200 {
  //     bestArray.append(score)
  //   }
  // }
  // print(bestArray)

  // if bestArray.contains(300) {
  //   print("만점자 탄생!")
  // }

  /*
    명수 준하 투표수 집계
  */

  let voteArray = ["명수","명수","준하","명수","준하","명수", "준하","명수", "준하"]

  var resultParkCount = 0


  for i in voteArray {
    if i == "명수" {
      resultParkCount += 1
    }
  }
  print("투표결과 명수: \(resultParkCount)표" )

}