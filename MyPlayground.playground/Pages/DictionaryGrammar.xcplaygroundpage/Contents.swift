//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


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
