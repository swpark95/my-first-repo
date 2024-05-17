// 어떤 우주선이 목적지까지 충분한 시간과 연료를 갖고 도달할 수 있는지를 판단하는 문제
//입력 받기:
//사용자로부터 여러 가지 정보를 입력 받습니다:
//distance: 목적지까지의 거리 (정수, 예: 킬로미터)
//time: 이용 가능한 시간 (정수, 예: 시간)
//velocity: 우주선의 속도 (정수, 예: km/h)
//fuel: 현재 연료의 양 (정수, 예: 리터)
//fuelConsumption: 연료 소비율 (정수, 예: km/리터)
//조건 확인:
//첫 번째 조건 if velocity * time < distance는 우주선이 현재 속도로 주어진 시간 동안 이동할 수 있는 최대 거리를 계산하고, 이 거리가 목적지까지의 거리보다 짧은 경우 "Failure, Not enough time"을 출력합니다.
//두 번째 조건 else if fuel * fuelConsumption < distance는 우주선이 현재 연료로 이동할 수 있는 최대 거리를 계산하고, 이 거리가 목적지까지의 거리보다 짧은 경우 "Failure, Not enough fuel"을 출력합니다.
//성공 출력:
//위의 두 조건이 모두 만족하지 않는 경우, 즉 우주선이 목적지까지 충분한 시간과 연료를 갖고 도달할 수 있다고 판단되면 "Welcome to Mars"를 출력합니다.

if velocity*time < distance {
    print("Failure, Not enough time")
} else if fuel*fuelConsumption < distance {
    print("Failure, Not enough fuel")
} else {
    print("Welcome to Mars")
}
