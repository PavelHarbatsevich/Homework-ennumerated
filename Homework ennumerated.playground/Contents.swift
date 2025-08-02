import UIKit

//1. Создать enum с временами года.

enum  Seasons: Int {
    case winter
    case spring
    case summer
    case autumn
}

//2. Написать функцию, которая будет принимать номер месяца (Int) и возвращать enum с временем года этого //месяца.


func seasonMonth(numberOfMonth: Int) -> Seasons {
    
    switch numberOfMonth {
    case 1,2,12:
            .winter
    case 3,4,5:
            .spring
    case 6,7,8:
            .summer
    case 9,10,11:
            .autumn
    default:
            .summer
    }
}

var seasonNow = seasonMonth(numberOfMonth: 12)
print("now is \(seasonNow)")

//3. Написать метод, который принимает variadic parameter String?. (или маасив опцианальных строк [String?]) Метод возвращает количество nil объектов и печатает в консоль одну //строку всех объединенных не nil объектов.

func productInFridge(product: [String?]) -> String?  {
    var nilObjectsCount = 0
    var nonNilStrings: [String] = []
    
    product.forEach { product in
        if let product = product {
            nonNilStrings.append(product)
            print(nonNilStrings.joined(separator: " , "))
        } else {
            nilObjectsCount += 1
        }
    }
    return nil
}

productInFridge(product: ["Milk", nil, nil, "orange"])

//4. Объявить опционал, и сделать его разворачивание разными способами.

var itemInTheBox: String? = "hat"

let whatInTheBox: String = itemInTheBox ?? "nil"

print("in the box - \(whatInTheBox)")

func whatInTheBox(item: String?) {
    if let item = item {
        print("in the box -  \(item)")
    }
    else {
        print("box is empty")
    }
}

whatInTheBox(item: nil)

func wallet(money: String?) {
    guard let money = money else {
        print("there is no money in the wallet")
        return
    }
    print("in wallet - \(money)")
}

wallet(money: "100 dollars")
