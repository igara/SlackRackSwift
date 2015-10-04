//
//  ChannelListTableViewCell.swift
//  SlackRackSwift
//
//  Created by 五十嵐翔 on 2015/10/04.
//  Copyright © 2015年 五十嵐翔. All rights reserved.
//

import UIKit

class ChannelListTableViewCell: UITableViewCell {

    @IBOutlet var channelName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // セル内セット
    func configureCell(json:NSDictionary, indexPath:NSIndexPath) {
        // チェックのため、読み込んだデータをそのまま表示
        //        let myString = NSString(data:data!, encoding: NSUTF8StringEncoding) as! String
        //        print(myString)

        channelName?.text = json["channel_name"]![indexPath.row] as AnyObject? as? String
    }
}