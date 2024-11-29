import UIKit

var greeting = "Hello, playground"

//LEFT ROTATE ARRAY BY K PLACES
//func rotLeft(a: [Int], d: Int) -> [Int] {
//    // Write your code here
//    var resArr = a
//    for (index, ele) in a.enumerated() {
//        if (index - d) < 0 {
//            resArr[index - d + a.count] = ele
//        } else {
//            resArr[index-d] = ele
//        }
//    }
//    
//    print(resArr)
//    return resArr
//}
//
//print(rotLeft(a: [1,2,3,4,5,6] , d: 2))


// LEFT ROTATE ARRAY BY K PLACES - BRUTE FORCE APPROACH
//func leftRotateArr(arr: inout [Int], k: Int) {
//    var temp: [Int] = []
//    var k = k % arr.count
//    
//    // store first k elements in an array
//    for i in 0...k-1 {
//        temp.insert(arr[i], at: i)
//    }
//    
//    // left shift the remaining ele
//    for i in k...arr.count - 1 {
//        arr[i-k] = arr[i]
//    }
//    
//    //put back the ele in  temp to original Arr
//    for i in arr.count-k...arr.count - 1 {
//        arr[i] = temp[i-(arr.count-k)]
//    }
//}
//
//var arr = [1,2,3,4,5,6,7]
//leftRotateArr(arr: &arr, k: 15)
//print(arr)



// LEFT ROTATE ARRAY BY K PLACES - OPTIMAL APPROACH

// Reverse D elements, Reverse ele from d to end, Reverse entire array

//func leftRotArr(arr: inout [Int], d: Int) {
//    for i in 0...((d-1)/2) {
//        var temp = arr[i]
//        arr[i] = arr[d-i-1]
//        arr[d-i-1] = temp
//    }
//    print(arr)
//    for i in d...(((arr.count - 1 - d) / 2)  + d){
//        var temp = arr[i]
//        arr[i] = arr[arr.count - 1  - (i - d)]
//        arr[arr.count - 1  - (i - d)] = temp
//    }
//    print(arr)
//    for i in 0...((arr.count - 1)/2) {
//        var temp = arr[i]
//        arr[i] = arr[arr.count - 1 - i]
//        arr[arr.count - 1 - i] = temp
//    }
//}
//
//var arr1 = [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51]
//leftRotArr(arr: &arr1, d: 10)
//print(arr1)


//func leftRotArr(arr: inout [Int], d: Int) {
//    var n = arr.count
//    var d = d % n
//    reverse(start: 0, end: d-1)
//    reverse(start: d, end: n-1)
//    reverse(start: 0, end: n-1)
//    
//    func reverse(start: Int, end: Int) {
//        var start = start
//        var end = end
//        
//        while(start < end) {
//            var temp = arr[start]
//            arr[start] = arr[end]
//            arr[end] = temp
//            start += 1
//            end -= 1
//        }
//    }
//}
//
//
//var arr2 = [1,2,3,4,5,6,7]
//leftRotArr(arr: &arr2, d: 3)
//print(arr2)


//struct A {
//    var arr: [Int]
//}
//
//var x: A? = A(arr: [1,2,5,2])
//x?.arr = x?.arr.sorted(by: { $0 > $1 }) ?? []

//class B {
//    var arr: [Int]
//    init(arr: [Int]) {
//        self.arr = arr
//    }
//}
//
//var y: B? = B(arr: [1,2,5,2])
//y?.arr = y?.arr.sorted(by: { $0 > $1 }) ?? []
//print(y?.arr)


struct MutableStructViewModel {
    var data: [String]
    var isLoading: Bool
    
    // 🚨 Problem: All methods that change properties must be marked mutating
    mutating func fetchData() {
        isLoading = true  // Compiler error without mutating keyword
        // Network call...
    }
}

class ProblematicViewController: UIViewController {
    // 🚨 Problem: Properties need to be var to mutate because I need to call mutating function on it - viewModel.fetchData()
    var viewModel = MutableStructViewModel(data: [], isLoading: false)
    
    func loadData() {
        // 🚨 Problem: This creates a copy, doesn't modify original
        viewModel.fetchData()
        print(viewModel.isLoading)
    }
}

let vc = ProblematicViewController()
vc.loadData()
