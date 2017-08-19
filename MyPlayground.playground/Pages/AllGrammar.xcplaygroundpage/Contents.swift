//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// 文字列の変更
if str == "Hello, playground" {
    str = "Hello Xcode!!"
}

print(str)

// ラベル作成
var rect = CGRect(x: 10, y: 10, width:200, height:50)
var label = UILabel(frame:rect)
label.backgroundColor = UIColor.black
label.textAlignment = .center
label.text = str

// グラフを表示してみます
var value = 1 //このvalue変数使ってないよね？

for i in 1...10{
    
    i + i
    
}



/* この下はチュートリアルの学習の復習 */

// 変数を文字列の中で出力する場合
let a = 30
print("My age is \(a) ")

// Optional型を使う場合は型宣言の後ろに?を付ける
// var 変数名: 型? = nil
var kuku:Int? = nil


// 以下のように!をつけずに出力すると、Optional型で出力される
//print("計算結果:",(kuku))

// Optional型ではなく元の型で出力したい場合は!を付ける
// 九九の計算
//for i in 1...9{
//    for j in 1...9{
//        kuku = i * j
//        print("\(i)*\(j)=\(kuku!)")
//    }
//    print("--------------")
//}



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




/* Dictionaryについて */
print("--------------")

// Dictionaryはキー値と要素値で構成
// 型推論によって、以下のものは String型 : 要素値となる
var hon = [
    "七つの大罪": 450,
    "ToLOVEるダークネス": 450,
    "監獄学園": 660
]

/* 以下のように宣言して利用することも可能 */
// 以下は型を String:Intと明示的（はっきり）と宣言して要素を記述している
print("String:Intで明示的に型を宣言")
var sisys: [String:Int] = ["iPhone":0,"Andoroid":1,"Windows":2]

// 以下は型を Int:Stringで明示的に宣言
print("Int:Stringで明示的に型を宣言")
var issys: [Int:String] = [0:"iPhone",1:"Andoroid",2:"Windows"]

// 以下は型を同様の型で明示的に宣言
print("Int:Intで明示的に型を宣言")
var iisys: [Int:Int] = [1:1000,2:2000,3:3000]

// String:String
print("String:Stringで明示的に型を宣言")
var sssys: [String:String] = ["iPhone":"10万円","Xperia":"12万円","WindowsPhone":"8万円"]

// 型を指定しない場合はAnyを使用
var ansys = [Int:Any]()
ansys = [0:"food",1:"game",2:2000]
var anysys: [Int:Any] = [0:"any",1:"some",2:"mybook"]
//var d = [String:Any]()
//d = ["a": 1] // OK

// 上記で記述した宣言したDictionaryを呼び出す
print("sisysを出力")
print(sisys)
print("issysを出力")
print(issys)
print("iisysを出力")
print(iisys)
print("sssysを出力")
print(sssys)
print("ansysを出力")
print(ansys)
print("anysysを出力")
print(anysys)

var getItems = sisys["iPhone"]
// Optional型で出力されてしまうため、!をつけて明示的に型を指定してあげる必要がある
print("sisysyの取得した要素(key値):\(getItems!)")

var getIssys = issys[0]
print("issysの取得した要素(key値):\(getIssys!)")

// for文にて要素を全て取得
for(key, value) in sisys {
    print("\(key):\(value)")
}

// remove（Dictionary）
print("sisysの要素削除keyはiPhone")
sisys.removeValue(forKey: "iPhone")
print(sisys)

print("issysの要素削除keyは0")
issys.removeValue(forKey: 0)
print(issys)

print("全ての要素を削除")
issys.removeAll()
print(issys)



/* タプルについて */
print()
print("タプルについて")




/* 条件分岐 通常のif分岐 */
var suuji = 1

if (suuji == 3) {
    print("数字は",suuji,"です");
} else if (suuji == 1){
    print("数字は3ではない。")
}



/* switchを使った分岐 */
switch suuji {
case 1: print("数字は1")
case 2: print("数字は2")
case 3: print("数字は3")
default: break
}

print("")
