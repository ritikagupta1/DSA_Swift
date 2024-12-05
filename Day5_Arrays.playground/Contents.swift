import UIKit

var greeting = "Hello, playground"

// Leaders in an  Array

//func findLeaders(arr: [Int]) -> [Int] {
//    var leaders: [Int] = []
//    
//    outerLoop: for i in 0...arr.count - 2 {
//        for j in i+1...arr.count - 1 {
//            if (arr[i] <= arr[j]) {
//                continue outerLoop
//            }
//        }
//        
//        leaders.append(arr[i])
//    }
//    leaders.append(arr[arr.count - 1])
//    return leaders
//}
//
//print(findLeaders(arr: [-3, 4, 5, 1, -30, -10]))


//func findLeaders(arr: [Int]) -> [Int] {
//    var leaders: [Int] = []
//    
//    var suffixArr: [Int] = arr
//    
//    for i in stride(from: arr.count - 2, through: 0, by: -1) {
//        suffixArr[i] = max(suffixArr[i+1], arr[i])
//    }
//    
//    for (index,ele) in arr.enumerated() {
//        if ele == suffixArr[index] {
//            leaders.append(ele)
//        }
//    }
//    
//    return leaders
//}
//
//print(findLeaders(arr: [-3, 4, 5, 1, -30, -10]))
//


func findLeaders(arr: [Int]) -> [Int] {
    var leaders: [Int] = []
    
    var max = Int.min
    
    for i in stride(from: arr.count - 1, through: 0, by: -1) {
        if arr[i] > max {
            max = arr[i]
            leaders.append(max)
        }
    }
    
    var start = 0
    var end = leaders.count - 1
    while(start <= end) {
        let temp = leaders[start]
        leaders[start] = leaders[end]
        leaders[end] = temp
        
        start += 1
        end -= 1 
    }
    return leaders
}

print(findLeaders(arr: [-3, 4, 5, 1, -30, -10]))

