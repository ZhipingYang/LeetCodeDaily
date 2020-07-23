//: [Previous](@previous)

import Foundation

// 给定一个包含非负整数的 m x n 网格，请找出一条从左上角到右下角的路径，使得路径上的数字总和为最小。

// dp[m][n] = min(dp[m-1][n], dp[m][n-1]) + value[m][n]
// dp[0][0] = value[0][0]

class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        if grid.isEmpty { return 0 }
        if grid[0].isEmpty { return 0 }
        let row = grid.count
        let col = grid[0].count
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: col), count: row)
        print(dp)
        for i in 0...(row-1) {
            for j in 0...(col-1) {
                if i==0, j==0 {
                    dp[0][0] = grid[0][0]
                } else if i==0, j>0 {
                    dp[0][j] = dp[0][j - 1] + grid[0][j];
                } else if j==0, i>0 {
                    dp[i][0] = dp[i - 1][0] + grid[i][0];
                } else {
                    dp[i][j] = min(dp[i - 1][j], dp[i][j - 1]) + grid[i][j]
                }
            }
        }
        print(dp)
        return dp[row-1][col-1]
    }
}

Solution().minPathSum([
    [1,3,1],
    [1,5,1],
    [4,2,1]
])

