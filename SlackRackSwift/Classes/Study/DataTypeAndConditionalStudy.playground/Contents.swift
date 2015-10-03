//: Playground - noun: a place where people can play

import Swift

/**
 * 問題の数をカウントする用に初期値設置
 *
 * @var exampleNumber:Int = 0
 */
var exampleNumber = 0

/**
 * 問題の数をカウントした数を計算し、章数のテキストとして返却する
 * 明示的に引数をVoidの指定をしてない場合もVoidになる
 *
 * @param Void
 * @return String(exampleNumber + 1) 問題の数のカウント数
 */
func getExampleNumberCountText(_: Void) -> String{
    exampleNumber += 1
    return "----------- ex." + String(exampleNumber) + " ----------- "
}

/**
 * playground上に線を表示するために作成
 * @param Void
 * @return String "----------------------------"
 */
func getHyphenLine() -> String {
    return "----------------------------"
}

getExampleNumberCountText()

/**
 * ex.1) var varName:String = Sting
 * 明示的な文字列の変数定義
 *
 * @var ex1DefinedStringTypeVariable:String = String
 */
var ex1DefinedStringTypeVariable:String = "Hello, playground"
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.2) var varName = Sting
 * 型推論で文字列の変数定義
 *
 * @var ex2DefinedStringTypeInferenceVariable = String
 */
var ex2DefinedStringTypeInferenceVariable = "Hello, playground"
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.3) var varName:Int = Int
 * 明示的な整数型の変数定義
 * Intは、32ビット環境ではInt32と同じサイズ、64ビット環境ではInt64と同じサイズ
 * 符号なしとしてUIntがある
 *
 * @var ex3DefinedIntTypeVariable:Int = Int
 */
var ex3DefinedIntTypeVariable:Int = 1
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.4) var varName = Int
 * 型推論で整数型の変数定義
 *
 * @var ex4DefinedIntTypeInferenceVariable = Int
 */
var ex4DefinedIntTypeInferenceVariable = 1
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.5) var varName:Double = Double
 * 明示的な浮動小数点数の変数定義
 * SwiftにもFloatとDoubleがあり
 * Floatは32ビット、Doubleは64ビットの精度で表記ができる
 *
 * @var ex5DefinedDoubleTypeVariable:Double = Double
 */
var ex5DefinedDoubleTypeVariable:Double = 3.141592653
getHyphenLine()

getExampleNumberCountText()


/**
 * ex.6) var varName = Double
 * 型推論で浮動小数点数の変数定義
 *
 * @var ex6DefinedDoubleTypeInferenceVariable = Double
 */
var ex6DefinedDoubleTypeInferenceVariable = 3.141592653
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.7) let letName = String
 * 型推論で文字列の定数定義
 *
 * @let ex7DefinedStringTypeInferenceLet = String
 */
let ex7DefinedStringTypeInferenceLet = "Hello, playground"
/* 下記のコメントを外すとコンパイルエラーになる */
//ex7DefinedStringTypeInferenceLet = ""
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.8) let letName = String; var varName = String
 * 1行で定数と変数を定義する
 * この場合、;(セミコロン)前の宣言に対してoption + クリックで
 * 宣言に対するコメントが読むことができるが
 * ;後のコメントが読むことができないため
 * 行をわけて、コメントの記述を行った方が良い
 *
 * @let ex8DefinedOneLineStringTypeLet = String; @var ex8DefinedOneLineStringTypeVariable = String
 */
let ex8DefinedOneLineStringTypeLet = "Hello, playground"; var ex8DefinedOneLineStringTypeVariable = "Hello, playground"
("Let:" + ex8DefinedOneLineStringTypeLet)
("Var:" + ex8DefinedOneLineStringTypeVariable)
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.9) let letName1 = String, letName2 = String, letName3 = String
 * 1行で複数の型推論で文字列の定数定義
 * 変数を複数に定義することも可能
 *
 * @let ex9DefinedOneLineStringTypeLetFirst = String, ex9DefinedOneLineStringTypeLetSecond = String, ex9DefinedOneLineStringTypeLetThird = String
 */
let ex9DefinedOneLineStringTypeLetFirst = "First", ex9DefinedOneLineStringTypeLetSecond = "Second", ex9DefinedOneLineStringTypeLetThird = "Third"
/* 
 * playground上では1行で複数定義行うと値の表示がされないので下記のように呼び出しを行って
 * 無理やり再表示させている
 */
ex9DefinedOneLineStringTypeLetFirst
ex9DefinedOneLineStringTypeLetSecond
ex9DefinedOneLineStringTypeLetThird
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.10) let letName:Int = Int\n var varName:Double = Double(letName)
 * 型に厳密なSwiftなのでDoubleの変数にIntの変数を入れることができない
 * SwiftはC言語のように暗黙的な型変換を行わない
 *
 * @let ex10DefinedIntTypeLet:Int = Int
 */
let ex10DefinedIntTypeLet:Int = 1

/**
 * ex.10) let letName:Int = Int\n var varName:Double = Double(letName)
 * 型に厳密なSwiftなのでDoubleの変数にIntの変数を入れることができない
 * SwiftはC言語のように暗黙的な型変換を行わない
 *
 * @var ex10DefinedDoubleTypeVariable:Double = Double
 */
/* 下記のコメントを外すとコンパイルエラーになる */
//var ex10DefinedDoubleTypeVariable:Double = ex10DefinedIntTypeLet
//print(ex10DefinedDoubleTypeVariable)
/* 上記のコメントを外した際、下記をコメントすること */
var ex10DefinedDoubleTypeVariable:Double = Double(ex10DefinedIntTypeLet)
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.11) let letName = String(String + Unicode)
 * SwiftのStringはUnicodeを入れることができる
 * その際、\(バックスラッシュ)u{Unicode}を指定することで使用することができる
 *
 * @let ex11DefinedStringTypeLet = String(String + Unicode)
 */
let ex11DefinedStringTypeLet = "command=\u{2318}, option=\u{2325}"
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.12) let letName = String(String + Int)
 * SwiftのStringは計算式を入れることができる
 * その際、\(バックスラッシュ)(計算式)を指定することで使用することができる
 *
 * @let ex12DefinedStringTypeLet = String(String + Int)
 */
let ex12DefinedStringTypeLet = "1 + 1 = \(1 + 1)"
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.13) var varName:Array<Int> = Array<Int>
 * 型パラメータ(ジェネリクス)
 * 配列に入る型の指定ができる
 * こちらは古い書き方の模様
 *
 * @var ex13DefinedArrayInIntTypeVariable:Array<Int> = Array<Int>
 */
var ex13DefinedArrayInIntTypeVariable:Array<Int> = [0, 1, 2]
/* 下記のコメントを外すとコンパイルエラーになる */
//ex13DefinedArrayInIntTypeVariable = [0, "1", 2]
getHyphenLine()

getExampleNumberCountText()

/**
 * ex.14) var varName:[Int] = [Int]
 * 型パラメータ(ジェネリクス)
 * 配列に入る型の指定ができる
 * こちらが新しい書き方の模様
 *
 * @var ex14DefinedArrayInIntTypeVariable:[Int] = [Int]
 */
var ex14DefinedArrayInIntTypeVariable:[Int] = [0, 1, 2]

/* 下記のコメントを外すとコンパイルエラーになる */
//ex14DefinedArrayInIntTypeVariable = [0, "1", 2]
getHyphenLine()

/** 次の問題用に変数に保存 */
var ex15Text = getExampleNumberCountText()

/**
 * ex.15) if
 * Swiftの条件式は(条件式)でなくても良い
 * (条件式)の書き方もできる
 */
if exampleNumber == 15 {
    ex15Text
} else if (exampleNumber != 15) {
    exampleNumber = 15
}
getHyphenLine()

getExampleNumberCountText()

/** 次の問題用に変数を初期化 */
var ex16ExampleNumberArray:[Int] = [Int]()
/** 元々の問題の数値に戻す用として定義 */
var returnEx16Number = exampleNumber

/**
 * ex.16) while
 * Swiftの条件式は(条件式)でなくても良い
 * (条件式)の書き方もできる
 */
while exampleNumber > 0 {
    ex16ExampleNumberArray.append(exampleNumber)
    exampleNumber--
}
ex16ExampleNumberArray
// カウントを戻す
exampleNumber = returnEx16Number

getHyphenLine()

getExampleNumberCountText()

/** 次の問題用に変数を初期化 */
var ex17ExampleNumberArray:[Int] = [Int]()
/** 元々の問題の数値に戻す用として定義 */
var returnEx17Number = exampleNumber

/**
 * ex.17) repeat-while
 * 内容としてdo-whileと同じ
 * repeatはSwift2.0から追加された
 * Swiftの条件式は(条件式)でなくても良い
 * (条件式)の書き方もできる
 */
repeat {
    ex17ExampleNumberArray.append(exampleNumber)
    exampleNumber--
} while exampleNumber > 0
ex17ExampleNumberArray
// カウントを戻す
exampleNumber = returnEx17Number

getHyphenLine()

getExampleNumberCountText()

/** 次の問題用に変数を初期化 */
var ex18ExampleNumberArray:[Int] = [Int]()

/**
 * ex.18) for
 * Swiftの条件式は(条件式)でなくても良い
 * (条件式)の書き方もできる
 */
for var i = 0; i <= exampleNumber; i++ {
    ex18ExampleNumberArray.append(i)
}
ex18ExampleNumberArray

getHyphenLine()

getExampleNumberCountText()

/** 次の問題用に変数を初期化 */
var ex19ExampleNumberArray:[Int] = ex18ExampleNumberArray
ex19ExampleNumberArray.append(exampleNumber)

/**
 * ex.19) for-in
 */
for number in ex19ExampleNumberArray {
    ex19ExampleNumberArray.append(number)
}
// オブジェクトのある数分、追加されている
ex19ExampleNumberArray
