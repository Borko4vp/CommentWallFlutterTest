//
//  ViewController.swift
//  CommentWallFlutterTest
//
//  Created by Borko Tomic on 1/29/19.
//  Copyright © 2019 Borko Tomic. All rights reserved.
//

import UIKit
import OctopusCommentWall

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openBtnPressed(_ sender: UIButton) {
        openCommentWall()
    }
    
    @objc func openCommentWall() {
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
        let vc = CommentWallViewController(engine: flutterEngine, nibName: nil, bundle: nil)!
        let token = "VCCe1g-IdsyHvcDPPv9GyIQe"
        let tenantKey = "telcodev"
        let channelUid = "a0fe9810-d214-11e8-9738-77f58241a7fd"
        let isPartner = true
        let permissionLevel = 3
        vc.setupRouteWith(token: token,
                          tenanntKey: tenantKey,
                          channelUid: channelUid,
                          isPartner: isPartner,
                          permissionLevel: permissionLevel,
                          userUid: "6c229b06-cbc9-11e8-88ca-832090bfbcf7",
                          baseURL: "https://octopusdev.okiapp.com/octopus-server/api/",
                          toolbarColor: UIColor.black,
                          toolbarTextColor: UIColor.blue)
        navigationItem.title = ""
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

