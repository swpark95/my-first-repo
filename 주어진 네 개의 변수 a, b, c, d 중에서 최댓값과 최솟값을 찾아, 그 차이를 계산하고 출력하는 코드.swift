//주어진 네 개의 변수 a, b, c, d 중에서 최댓값과 최솟값을 찾아, 그 차이를 계산하고 출력하는 코드

var values = [a,b,c,d]

var maxValue = values.max()! //  max() 함수는  반환 값이 옵셔널(Optional) 타입입니다. 
//max() 함수가 빈 컬렉션에 사용될 경우 최댓값이 존재하지 않기 때문에 nil을 반환할 수 있기 때문입니다.
//Swift에서 옵셔널 값을 사용하기 위해서는 그 값을 언래핑(unwrapping)해야 합니다. 
//언래핑은 옵셔널이 감싸고 있는 실제 값을 추출하는 과정을 의미하며, 여기서 ! (강제 언래핑 연산자)가 사용됩니다.
//!를 사용해서 강제 언래핑을 하는 것은 해당 옵셔널에 값이 반드시 있다고 확신할 때만 사용해야 합니다. 
//만약 옵셔널 값이 nil이면, 강제 언래핑을 시도할 때 런타임 에러가 발생하고 애플리케이션이 크래시될 수 있습니다.
//// 여기서 강제 언래핑은 안전하다. 왜냐하면 a,b,c,d로 배열이 비어있지 않기 때문에 최댓값이 반드시 존재하기 때문입니다.
var minValue = values.min()!

var answer = Int(maxValue - minValue)

print(answer)


//그러나 좀 더 안전한 코드 작성을 위해 옵셔널 바인딩(optional binding)이나 기본값 제공 등 다른 방법을 사용할 수 있습니다. 
if let maxValue = values.max() {
    print(maxValue)
} else {
    print("Array is empty.")
}

//이 방법은 values 배열이 비어 있을 경우를 안전하게 처리하며, 배열이 비어 있지 않을 경우에만 maxValue를 사용하여 작업을 수행합니다.
