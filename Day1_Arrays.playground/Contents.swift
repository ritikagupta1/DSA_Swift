import UIKit

// MARK: ARRAYS - DAY 1

// LINEAR SEARCH
func search(_ nums: [Int], _ target: Int) -> Int {
    for (index,num) in nums.enumerated() {
        if num == target {
            return index
        }
    }
    
    return -1
}


// LARGEST ELEMENT
func returnLargest(_ nums: [Int]) -> Int {
    var maximum = nums[0]
    for num in nums {
        if num >= maximum {
            maximum = num
        }
    }
    
    return maximum
}

returnLargest([-4, -3, 0, 1, -8])


// SECOND LARGEST
func returnSecondLargest(_ nums: [Int]) -> Int {
    var max1 = nums[0]
    var max2 = Int.min // keep int.min in case of negative nums
    
    for num in nums {
        if num > max1 {
            max2 = max1
            max1 = num
        } else if num > max2 && num != max1 {
            max2 = num
        }
    }
    
    return max2 == Int.min ? -1 : max2
}

returnSecondLargest([10, 10, 10, 10, 10])


// MAXIMUM CONSECUTIVE ONES

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxCount = 0
    var currCount = 0
    for num in nums {
        if num == 1 {
            currCount += 1
            if currCount > maxCount {
                maxCount = currCount
            }
        } else {
            currCount = 0
        }
    }
    
    return maxCount
}

// LEFT ROTATE ARRAY BY ONE PLACE

func leftRotateByOnePlace(_ nums: inout [Int]) {
    guard nums.count > 1 else { return }
    var temp = nums[0]
    
    for i in 1...nums.count - 1 {
        nums[i-1] = nums[i]
    }
    
    nums[nums.count - 1] = temp
}

var arr =  [1, 2, 3, 4, 5]
leftRotateByOnePlace(&arr)
print(arr)

// LEFT ROTATE ARRAY BY K PLACES

func leftRotateByKPlaces(_ nums: inout [Int], k: Int) {
    guard nums.count > 1 else { return }
    for i in 1...k {
        var temp = nums[0]
        
        for i in 1...nums.count - 1 {
            nums[i-1] = nums[i]
        }
        
        nums[nums.count - 1] = temp
    }
}
var arr1 =  [1, 2, 3, 4, 5]
leftRotateByKPlaces(&arr1, k: 4)
print(arr1)
