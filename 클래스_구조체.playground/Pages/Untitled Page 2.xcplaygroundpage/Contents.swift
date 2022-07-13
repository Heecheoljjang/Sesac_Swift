import UIKit


////매개변수가 없는 함수
//func setNickName() -> Void {
//
//    print("저는 희철입니다.")
//
//}
//
//setNickName()
//
////매개변수가 있는 함수
//func setNickNameParameter(nickname: String) -> String {
//
//    print("저는 \(nickname)입니다.")
//
//    //함수를 종료하면서 쓸 수 있는 요소를 보냄.
//    return nickname
//}
//
//setNickNameParameter(nickname: "희희")
//
////반환할 자료형은 하나 이상이 들어가도됨
//func getGameCharacter (name: String, age: Int) -> [String] {
//
//    let character = ["도적", "도사", "주술사", "전사", "격투가"]
//    let select = character.randomElement()!
//
//    return [name, select]
//
//}
//
//var numberSet: Set = [2, 4, 6, 8, 10]
//var numberSet2: Set = [1, 2, 3, 4, 5]
//
//numberSet.subtract(numberSet2)
//
//// appending
//let numberArr = [1,2,3,4,5,6,7,8,9]
//numberArr.shuffled()
//print(numberArr)
//
//let aa = 1
//let str = #"aaaaa""\#(aa)naaa"#

//let ss = 1
////개수 안맞느면 안됨
//let dd = ##"aaaaa""\##(ss)naaa"##


var email: String = "kkll135@dd.com" //선언과 초기화가 동시에 이루어짐

var email2: String? // 초기화 안해도됨. 초기화를 동시에 하면 타입이 옵셔널이아님. 타입 어노테이션을 이용해 옵셔널로 선언가능
email2 = "123@1.com"

type(of: email)
type(of: email2) // 타입 확인 가능

var array = Array(repeating: 0, count: 100)

var array2: [Int]? = [Int](1...100)
type(of: array2)

if array2?.count == 0 {
    print("no value")
} else {
    print(array2?.count)
}

//삼항연산자
let result = array2 == nil ? "no value" : "yes value"

// bool값으로 판단이 가능한 요소, 반환값이 Bool 타입인 함수는 가능
//Any는 웬만하면 쓰지마라
func example() -> Any {
    
    let result = Int.random(in: 1...100)
    
    return result > 50 ? 3 : "down"
}
example()

func bmiResult() -> (String, Double) {
    let result = Double.random(in: 1...30)
    
    if result < 18.5 {
        return ("hee", 1.0)
    } else if result >= 18.5 && result < 23 {
        return ("me", 2.0)
    } else {
        return ("he", 3.0)
    }
    //return ("no", 4.0)
}

let userBMI = bmiResult()
type(of: userBMI)

//문자열 보간법: String Interpolation
print("\(userBMI.0)님의 BMI는 \(userBMI.1)")

//return 생략
@discardableResult //안쓰는 경우에 노란 오류 안보이게함
func randomNumber() -> Int {
    Int.random(in: 1...10)
}

//매개변수가 옵셔널일 수도 있음
//매개변수에 대한 기본값을 씀으로써 nil에 대응할 수 있음.
//함수 이름이 같은 함수 -> 오버로딩
func sayHello(nickname: String? = "손님") -> String {
    return nickname! + "님, 반갑습니다."
}

let user = array2 == nil ? "손님" : "고래밥"
sayHello(nickname: user)

// 같은 함순데 여러개가 있는것은 매개변수에 따라서 오버로딩되는것임

print("아앙123456", separator: "123", terminator: "5909")


// 열거형(ex. 남/여/안함)
enum Gender {
    case man
    case woman
    case nothing
}

var gender = Gender.woman
//
//if gender == 0 {
//
//} else if gender == 1 {
//
//} else if gender == 2 {
//
//}

switch gender {
case .man: print("남자")
case .woman: print("남자")
case .nothing: print("남자")

}


enum HTTPCode:Int {
    case OK
    case NO_PAGE
    case NOT_FOUND = 404
    case SERVER_ERROR
    
    func showStatus() -> String {
        switch self {
        case .OK: return "정상"
        case .SERVER_ERROR:return "긴급점검"
        case .NOT_FOUND:return "잘못된 문제"
        case .NO_PAGE:return "페이지를 찾을 수 없음."
        }
    }
}

var networkStatus: HTTPCode = .SERVER_ERROR

switch networkStatus {
case .OK: print("정상",networkStatus.rawValue)
case .NO_PAGE: print("잘못된 URL" ,networkStatus.rawValue)
default: print("기타",networkStatus.rawValue)
}

let httpResult = networkStatus.showStatus()




