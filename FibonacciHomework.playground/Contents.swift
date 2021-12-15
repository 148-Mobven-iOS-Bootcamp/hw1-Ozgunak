//Ozgun Aksoy Mobven Bootcamp 1. odev
import UIKit
//fibonaci 750 - 1000 arasindaki sayilarin listelenmesi
// 750 sayisi ile baslanacagi icin baslangic degerleri onem tasimamaktadir.
var oneBefore = 1
var twoBefore = 1
var fibNum = 1
var fibNums = [Int]()
// her sayi kendinden onceki 2 sayi ile toplandiginda total degiskenini olustururken kendileri de bir onceki degerlere donusmektedir.
while oneBefore < 1001 {
    fibNum = oneBefore + twoBefore
    twoBefore = oneBefore
    oneBefore = fibNum
    if fibNum <= 1000 && fibNum >= 750 {
        fibNums.append(fibNum)
        print("750 ile 1000 arasindaki fibonacci sayilari: \(fibNums)") //odev ciktisi olarak 750 ile 1000 arasında bulunan degerleri yazdirir.
    }
}

