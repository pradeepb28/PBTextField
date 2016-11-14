//
//  ViewController.swift
//  PBTextField
//
//  Created by pradeep burugu on 11/12/16.
//  Copyright © 2016 pradeep burugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label: PBTextField = PBTextField(frame: CGRect(x: 25, y: 225, width: 100, height: 25))
    override func viewDidLoad() {
        super.viewDidLoad()

        label.errorLabelText = "Halo"
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

