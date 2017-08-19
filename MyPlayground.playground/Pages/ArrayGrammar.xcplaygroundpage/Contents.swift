//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


// Arrayについて
print("//Arrayについて")
var curry:[String] = ["牛肉","玉ねぎ","人参","ジャガイモ"]
var price:[Int] = [500,100,100,100]
// 要素の取り出し
print("-----")
print("//要素の取り出し")
print(curry[1])

// 範囲指定して要素の取り出し
var getArray = curry[0...3]
print(getArray)

// 要素の中身をカウント。要素の変数でも、まとめた変数でもcountを利用して数えれる。
print("//要素のカウント")
print(getArray.count)
print(curry.count)

// 要素を変更
print("//要素の変更")
print("//curry変数を利用して要素を変更")
curry[3] = "トマト"
print(curry)

// 格納した変数を利用して変更してもOK
print("//getArray変数を利用して要素を変更")
getArray[3] = "変更要素"
print(getArray)

// 要素を配列の最後に追加
print("//要素を配列の最後に追加")
curry.append("追加要素")
print(curry)

// 配列の途中に要素を挿入
curry.insert("挿入要素", at:1)
print("配列[1]に要素を挿入:(\(curry))")

// 配列の要素を削除する
print("配列の要素を削除")
curry.remove(at: 1)
print("挿入要素を削除しました:(\(curry))")

// 要素の範囲を指定して削除
curry[0...2] = []
print("0,1,2を指定して削除しました:\(curry)")

// 配列の最後を削除する
curry.removeLast()
print("配列の最後を削除しました:\(curry)")

// 配列要素を全て削除
curry.removeAll()
print("配列要素を全て削除しました:\(curry)")

// 配列要素が存在するか確認
print(curry.isEmpty)
print(curry)
print("-----")
