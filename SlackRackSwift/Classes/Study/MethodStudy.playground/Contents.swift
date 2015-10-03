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
 * ex.1)
 * 暗黙的な引数・返り値がvoidなメソッド
 * このメソッドを呼び出すとhogeが出力される
 *
 * @param void
 * @return void
 */
func ex1IsParamVoidAndReturnVoidMethod() {
    print("hoge")
}
// 上記メソッドを呼び出す。
ex1IsParamVoidAndReturnVoidMethod()

getHyphenLine()

getExampleNumberCountText()

/**
 * ex.2)
 * 明確な引数・返り値がvoidなメソッド
 * このメソッドを呼び出すとhogeが出力される
 *
 * @param void
 * @return void
 */
func ex2IsParamVoidAndReturnVoidMethod(_: Void) -> Void {
    print("hoge")
}
// 上記メソッドを呼び出す。
ex2IsParamVoidAndReturnVoidMethod()

getHyphenLine()

getExampleNumberCountText()

/**
 * ex.3)
 * 明確な引数・返り値が決まっているメソッド
 * 三角形か調べるメソッド
 *
 * @param a 辺の長さ
 *        b 辺の長さ
 *        c 辺の長さ
 * @return true 三角形である
 *         false 三角形ではない
 */
func ex3IsTriangle(a:Float, b:Float, c:Float) -> Bool {
    if a > b && b > c {
        return a < b + c
    } else if b < a + c {
        return b < a + c
    } else {
        return c < a + b
    }
}
// 上記メソッドを呼び出す。
ex3IsTriangle(12.0, b: 20.0, c: 8.5)

getHyphenLine()

getExampleNumberCountText()



