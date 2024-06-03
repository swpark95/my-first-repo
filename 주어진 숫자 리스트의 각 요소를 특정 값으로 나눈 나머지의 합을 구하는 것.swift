// 첫 번째 입력: 리스트의 요소 개수
let M = Int(readLine()!)!

// 두 번째 입력: 나눌 값 (divisor)
let N = Int(readLine()!)!

// 모듈러 연산 결과 합계를 저장할 변수
var result = 0

// 세 번째 입력: 공백으로 구분된 숫자 리스트를 입력받아 배열로 변환
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let E = Int(i)!
  // 리스트의 각 요소에 대해 모듈러 연산을 수행하고 그 결과를 합산
    result += E % M
}

print(result)
