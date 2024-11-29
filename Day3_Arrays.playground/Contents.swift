import UIKit

// Remove duplicates from sorted array
func removeDuplicate(arr: inout [Int]) {
    var set = Set(arr)
    arr = Array(set)
}

var arr = [0,0,1,1,1,2,2,3,3,4]
removeDuplicate(arr: &arr)
print(arr)
