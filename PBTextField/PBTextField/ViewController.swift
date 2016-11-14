//
//  ViewController.swift
//  PBTextField
//
//  Created by pradeep burugu on 11/12/16.
//  Copyright © 2016 pradeep burugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var name: PBTextField!
    var label: PBTextField = PBTextField(frame: CGRect(x: 25, y: 225, width: 100, height: 25))
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewdidload:\(name.frame.size.width)")
        name.normalLabelText = "asdas"
        let rview = UIButton()
        rview.frame.size = CGSize(width: 24, height: 24)
        rview.setBackgroundImage(UIImage(named: "hidden"), for: .normal)
        rview.addTarget(self, action: #selector(ViewController.toggle), for: .touchUpInside)
        label.rightView = rview
        label.rightViewMode = .whileEditing
        // Do any additional setup after loading the view, typically from a nib.
    //    name.errorLabelText = "Hello"
        //label.clearButtonMode = .whileEditing
        label.isSecureTextEntry = true
        label.errorLabelText = "Halo"
        view.addSubview(label)
        

        
    }
    
    func toggle() {
        label.isSecureTextEntry = !label.isSecureTextEntry
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

