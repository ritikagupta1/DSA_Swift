import UIKit

//func generate(_ numRows: Int) -> [[Int]] {
//    var res: [[Int]] = []
//    res.append([1])
//    if numRows == 1 {
//        return res
//    }
//    for i in 2...numRows {
//        res.append(Array(repeating: 0, count: i))
//    }
//    for i in 1...numRows - 1 {
//        for j in 0...i {
//            if j-1 >= 0 && j <= res[i-1].count - 1 {
//                res[i][j] = res[i-1][j] + res[i-1][j-1]
//            } else if j <= res[i-1].count - 1 {
//                res[i][j] = res[i-1][j]
//            } else {
//                res[i][j] = res[i-1][j-1]
//            }
//           
//            
//        }
//        
//    }
//    return res
//}
//
//print(generate(5))


// Given Row and Column number, return the element in pascal's triangle
func getElementAt(row: Int, col: Int) -> Int {
    var n = row - 1
    var c = col-1
    
    if c > n-c {
        c = n-c
    }
    
    var res = 1
    for i in 0..<c {
        res *=  (n-i)
        res /= (i+1)
    }
    
    return res
}

print(getElementAt(row: 6, col: 3))

func getRow(_ rowIndex: Int) -> [Int] {
    var res:[Int] = []
    for col in 1...rowIndex {
        res.append(getElement(row: rowIndex, col: col))
    }
    
    func getElement(row: Int, col: Int) -> Int {
        var n = row - 1
        var c = col-1
        
        if c > n-c {
            c = n-c
        }
        
        var res = 1
        for i in 0..<c {
            res *=  (n-i)
            res /= (i+1)
        }
        
        return res
    }

    
    return res
}

print(getRow(5))


func generate(_ numRows: Int) -> [[Int]] {
    var resArr: [[Int]] = []
    for row in 1...numRows {
        var tempArr:[Int] = []
        for col in 1...row {
            tempArr.append(getElementAt(row: row, col: col))
        }
        resArr.append(tempArr)
    }
    
    return resArr
    
    func getElementAt(row: Int, col: Int) -> Int {
        var n = row - 1
        var c = col-1
        
        if c > n-c {
            c = n-c
        }
        
        var res = 1
        for i in 0..<c {
            res *=  (n-i)
            res /= (i+1)
        }
        
        return res
    }

}

print(generate(5))

func generateRows(row: Int) -> [Int] {
    var resArr: [Int] = []
    var res = 1
    resArr.append(res)
    for col in 0..<row {
        res *= (row - col)
        res /= (col + 1)
        resArr.append(res)
    }
    return resArr
}

func generatePascal(_ numRows: Int) -> [[Int]] {
    var resArr: [[Int]] = []
    for i in 0..<numRows {
        resArr.append(generateRows(row: i))
    }
    return resArr
    
    func generateRows(row: Int) -> [Int] {
        var resArr: [Int] = []
        var res = 1
        resArr.append(res)
        for col in 0..<row {
            res *= (row - col)
            res /= (col + 1)
            resArr.append(res)
        }
        return resArr
    }
}

// Rotate matrix by 90 degrees
func rotate(_ matrix: inout [[Int]]) {
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count where i < j {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
    
    for i in 0..<matrix.count {
        var start = 0
        var end = matrix[i].count - 1
        while(start <= end) {
            let temp = matrix[i][start]
            matrix[i][start] = matrix[i][end]
            matrix[i][end] = temp
            start += 1
            end -= 1
        }
    }
}
