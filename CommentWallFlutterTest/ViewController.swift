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
        let vc = CommentWallViewController()
        let token = "4uKqlYQzXk1TgPstemFESGvx"
        let tenantKey = "telco"
        let channelUid = "e4c50f5e-cbcd-11e8-a7a2-ab70ea5e8cb9"
        let isPartner = true
        let permissionLevel = 3
        vc.setupRouteWith(token: token, tenanntKey: tenantKey, channelUid: channelUid, isPartner: isPartner, permissionLevel: permissionLevel)
        navigationItem.title = ""
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

