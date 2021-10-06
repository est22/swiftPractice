func musicChart() {
  // 1 ~ 10000 
  let musicList = ["아이유-좋은날", "이무진-과제곡", "BTS-Dynamite"]

  for music in musicList {
    print(music)
  }
  for music in 1...musicList.count{
    print("\(music)위: \(musicList[music-1])")
  }
}