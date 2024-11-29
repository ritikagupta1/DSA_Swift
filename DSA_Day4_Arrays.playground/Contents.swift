import UIKit

// Union of two sorted arrays

//func union(arr1: [Int], arr2: [Int]) -> [Int] {
//    var res: Set<Int> = []
//    
//    var s1 = 0
//    var s2 = 0
//    
//    while(s1 < arr1.count && s2 < arr2.count) {
//        if arr1[s1] == arr2[s2] {
//            res.insert(arr1[s1])
//            s1 += 1
//            s2 += 1
//        } else if arr1[s1] < arr2[s2] {
//            res.insert(arr1[s1])
//            s1 += 1
//        } else {
//            res.insert(arr2[s2])
//            s2 += 1
//        }
//    }
//    
//    while(s1 != arr1.count) {
//        res.insert(arr1[s1])
//        s1 += 1
//    }
//    while(s2 != arr2.count) {
//        res.insert(arr2[s2])
//        s2 += 1
//    }
//    
//    return res.sorted()
//}
//
//print(union(arr1:  [3, 4, 6, 7, 9, 9], arr2: [1, 5, 7, 8, 8]))

//func union(arr1: [Int], arr2: [Int]) -> [Int] {
//    var res: [Int] = []
//    
//    var s1 = 0
//    var s2 = 0
//    
//    while(s1 < arr1.count && s2 < arr2.count) {
//         if arr1[s1] <= arr2[s2] {
//            if res.last != arr1[s1] {
//                res.append(arr1[s1])
//            }
//            s1 += 1
//        } else {
//            if res.last != arr2[s2] {
//                res.append(arr2[s2])
//            }
//            s2 += 1
//        }
//    }
//    
//    while(s1 != arr1.count) {
//        if res.last != arr1[s1] {
//            res.append(arr1[s1])
//        }
//       
//        s1 += 1
//    }
//    while(s2 != arr2.count) {
//        if res.last != arr2[s2] {
//            res.append(arr2[s2])
//        }
//        s2 += 1
//    }
//    
//    return res
//}
//
//print(union(arr1:  [3, 4, 6, 7, 9, 9], arr2: [1, 5, 7, 8, 8]))


// Intersection of two sorted arrays

func intersection(arr1: [Int], arr2: [Int]) -> [Int] {
    var res: [Int] = []
    
    for ele in arr1 {
        if arr2.contains(ele) {
            res.append(ele)
        }
    }
    
    return res
}

print(intersection(arr1: [1,2,3,4,5,8], arr2: [1,2,7,8]))
