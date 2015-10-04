//
//  SlackRackApi.swift
//  SlackRackSwift
//
//  Created by 五十嵐翔 on 2015/07/26.
//  Copyright © 2015年 五十嵐翔. All rights reserved.
//

import UIKit

/**
* Log Class
*/
class SlackApi {

    internal func callChannelListApi(callbackJson: NSDictionary -> Void) {

        let url:NSURL = NSURL(string: "https://slack-rack-api-igara.c9.io/slack/channelistjson/")!
        let request = NSURLRequest(URL: url)
        // 非同期通信を開始
        NSURLConnection.sendAsynchronousRequest(
            request,
            queue: .mainQueue()) { (
                response:NSURLResponse?,
                data:NSData?,
                error:NSError?) in

            do {
                // JSONデータを辞書データに変換
                callbackJson(try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSDictionary)

            } catch {
                    // エラーが起こったらここに来るのでエラー処理などをする
            }
        }
    }

}