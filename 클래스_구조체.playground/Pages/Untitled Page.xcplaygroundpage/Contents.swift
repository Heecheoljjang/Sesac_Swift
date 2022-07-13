import UIKit

//SuperClass, subClass, BaseClass -> 슈퍼와 베이스는 다름
class Monster {
    var clothes = "Orange"
    var speed = 4
    var power = 20
    var expoint = 100
    
    func attack() {
        print("공격")
    }
}

// 초기화
var easyMonster = Monster() //인스턴스
easyMonster.clothes
easyMonster.power
easyMonster.attack()

class BossMonster: Monster {
    var levelLimit = 500
    
    func bossAttack() {
        print("special")
    }
    
    //재정의
    override func attack() {
        super.attack() //슈퍼클래스에 있는 함수도 실행시키고 싶을때
        
        print("strong")
    }
}

var finalBoss = BossMonster()
finalBoss.bossAttack()
finalBoss.levelLimit
finalBoss.attack()

class FinalBossMonster: BossMonster {
    
}

// 구조체는 값 타입, 클래스는 참조 타입 -> 차이
// 값을 수정하더라도 영향이 없게 구조체로
var nickname = "dd" //얘도 구조체
var subNickname = nickname

subNickname = "칙촉"

print(nickname)
print(subNickname)

//구조체와 클래스의 차이
var miniMonster = Monster()

var bossMonster = miniMonster

bossMonster.power = 5000

print(miniMonster.power)
print(bossMonster.power)
