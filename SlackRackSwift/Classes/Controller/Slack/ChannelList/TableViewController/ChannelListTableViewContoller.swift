//
//  ChannelListTableViewContoller.swift
//  SlackRackSwift
//
//  Created by 五十嵐翔 on 2015/10/03.
//  Copyright © 2015年 五十嵐翔. All rights reserved.
//

import UIKit

class ChannelListTableViewContoller: UITableViewController {

    var _channelListJson = NSDictionary()

    // MARK: LifeCycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(animated : Bool) {
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    override func viewDidAppear(animated : Bool) {
    }

    override func viewWillDisappear(animated : Bool) {
    }

    override func viewDidDisappear(animated : Bool) {
    }

    // MARK: MemoryManagement Method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: UITableView Delegate Method
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (_channelListJson["channel_name"] != nil) {
            return _channelListJson["channel_name"]!.count
        }
        return 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("channelListTableViewCell") as! ChannelListTableViewCell

        cell.configureCell(_channelListJson, indexPath: indexPath)

        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}