import UIKit

// Spiral Matrix

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var sr = 0
    var er = matrix.count - 1
    var sc = 0
    var ec = matrix[0].count - 1
    
    var resArr: [Int] = []
    
    while(sr <= er && sc <= ec) {
        for i in stride(from:sc, through: ec, by: 1) {
            resArr.append(matrix[sr][i])
        }
        
        sr += 1
        
        for i in stride(from:sr, through: er, by: 1) {
            resArr.append(matrix[i][ec])
        }
        
        ec -= 1
        
        for i in stride(from: ec, through: sc, by: -1) {
            if sr <= er {
                resArr.append(matrix[er][i])
            }
        }
        
        er -= 1
        
        for i in stride(from: er, through: sr, by: -1) {
            if sc <= ec {
                resArr.append(matrix[i][sc])
            }
            
        }
        
        sc += 1
    }
    
    return resArr
}


print(spiralOrder([[1,2,3],[4,5,6],[7,8,9]]))

func rearrangeArray(_ nums: [Int]) -> [Int] {
    var posIndex = 0
    var negIndex = 1
    var res: [Int] = nums
    
    for i in 0...nums.count - 1 {
        if nums[i] > 0 {
            res[posIndex] = nums[i]
            posIndex += 2
        } else {
            res[negIndex] = nums[i]
            negIndex += 2
        }
    }
    
    return res
}

print(rearrangeArray([3,1,-2,-5,2,-4]))
