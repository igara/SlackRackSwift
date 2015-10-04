//
//  ChannelListViewController.swift
//  SlackRackSwift
//
//  Created by 五十嵐翔 on 2015/10/03.
//  Copyright © 2015年 五十嵐翔. All rights reserved.
//

import UIKit

class ChannelListViewController: UIViewController {

    @IBOutlet var indicator: UIActivityIndicatorView!

    var _channelListTableViewController = ChannelListTableViewContoller()

    var _channelListJson = NSDictionary()

    // MARK: LifeCycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setChannelListJson()
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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "channelListTableView") {
            _channelListTableViewController = segue.destinationViewController as! ChannelListTableViewContoller
        }
    }

    func setChannelListJson() {
        self.indicator.hidden = false
        indicator.startAnimating()

        SlackApi().callChannelListApi() { channelListJson in
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
                self._channelListJson = channelListJson
                self._channelListTableViewController._channelListJson = channelListJson

                dispatch_async(dispatch_get_main_queue(), {
                    // UIの更新 - メインスレッド
                    self._channelListTableViewController.tableView.reloadData()
                    self._channelListTableViewController.tableView.layoutIfNeeded()
                    self._channelListTableViewController.tableView.setNeedsLayout()
                    self.indicator.stopAnimating()
                    self.indicator.hidden = true
                })
            })
        }
    }
}