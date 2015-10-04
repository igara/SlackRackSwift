//
//  MainNavigationController.swift
//  SlackRackSwift
//
//  Created by 五十嵐翔 on 2015/07/26.
//  Copyright (c) 2015年 五十嵐翔. All rights reserved.
//

import UIKit
import Foundation

class MainNavigationController: UINavigationController, UINavigationControllerDelegate {

    // MARK: LifeCycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.tabBarItem.title == "Slack" {
            let storyBoard : UIStoryboard = UIStoryboard(name: "SlackContent", bundle: NSBundle.mainBundle());
            self.pushViewController(storyBoard.instantiateInitialViewController()!, animated: true);
        }
    }

    override func viewWillAppear(animated: Bool) {

    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    override func viewDidAppear(animated: Bool) {
    }

    override func viewWillDisappear(animated: Bool) {
    }

    override func viewDidDisappear(animated: Bool) {
    }

    // MARK: MemoryManagement Method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: UINavigationController Delegate Method
    func navigationController(navigationController : UINavigationController,
        willShowViewController viewController : UIViewController,
        animated : Bool) {
    }

    func navigationController(navigationController : UINavigationController,
        didShowViewController viewController : UIViewController,
        animated : Bool) {
    }
}