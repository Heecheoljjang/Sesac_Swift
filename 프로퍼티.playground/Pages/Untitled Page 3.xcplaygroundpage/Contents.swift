//: [Previous](@previous)

import Foundation

struct ExchangeRate {
    
    var currencyRate: Double {
        willSet {
            print("currencyRate willSet - 환율 변동 예정: \(currencyRate) -> \(newValue)")
        }
        didSet {
            print("currencyRate didSet - 환율 변동 완료: \(oldValue) -> \(currencyRate)")
        }
    }
    
    var USD: Double {
        willSet {
            let value = newValue / currencyRate
            print("USD willSet - 환전 금액: USD: \(value)달러로 환전될 예정")
        }
        didSet {
            print("USD didSet - KRW: \(USD)원 -> \(USD / currencyRate)달러로 환전되었음.")
        }
    }
    
    var KRW: Double {
        get {
            return 0
        }
        set {
            // USD 설정
            //KRW = newValue
            USD = newValue
        }
    }
}

var rate = ExchangeRate(currencyRate: 1100, USD: 1)
rate.KRW = 500000
rate.currencyRate = 1350
rate.KRW = 500000
