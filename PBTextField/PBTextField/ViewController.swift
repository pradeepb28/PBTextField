//
//  ViewController.swift
//  PBTextField
//
//  Created by pradeep burugu on 11/12/16.
//  Copyright © 2016 pradeep burugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var textField1: PBTextField = PBTextField(frame: CGRect(x: 25, y: 225, width: 250, height: 25))
    private var textField2: PBTextField = PBTextField(frame: CGRect(x: 25, y: 275, width: 250, height: 25))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 14, height: 14))
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.masksToBounds = true
        button.backgroundColor = .black
        
        textField1.normalLabelText = "Information text"
        textField2.errorLabelText = "Error text"
        
        textField1.customView = (position: .right, view: button, mode: .always)
        
        view.addSubview(textField1)
        view.addSubview(textField2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

