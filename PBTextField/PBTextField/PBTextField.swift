//
//  PBTextField.swift
//  PBTextField
//
//  Created by pradeep burugu on 11/12/16.
//  Copyright © 2016 pradeep burugu. All rights reserved.
//

import UIKit

enum Position {
    case left
    case right
    case none
}

class PBTextField: UITextField {
    
    private var borderView: UIView = {
       let view = UIView()
        view.backgroundColor = .black
        
        return view
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.isUserInteractionEnabled = true
        label.isHidden = true
        label.font = UIFont(name: "Helvetica", size: 11)
        return label
    }()
    
    internal var errorLabelText: String = "" {
        didSet {
            setLabel(text: errorLabelText, color: .red)
        }
        
    }
    
    internal var normalLabelText: String = "" {
        didSet {
            setLabel(text: normalLabelText, color: .gray)
        }
        
    }
    
    internal var customView: (position: Position, view: UIView, mode: UITextFieldViewMode) = (position: .none, view: UIView(), mode: .never) {
        didSet {
            switch customView.position {
            case .left:
                leftView = customView.view
                leftViewMode = customView.mode
            case .right:
                rightView = customView.view
                rightViewMode = customView.mode
            case .none:
                break
            }
        }
    }
    
    private func setupBorder() {
        borderView.frame = CGRect(x: 0, y: frame.size.height + 8, width: frame.size.width, height: 1)
        addSubview(borderView)
    }
    
    private func setLabel(text: String, color: UIColor) {
      label.isHidden = false
      label.text = text
      label.textColor = color
      label.frame = CGRect(x: 0, y: frame.size.height + 16, width: frame.size.width, height: 12)
      addSubview(label)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetup()
    }
    
    private func initialSetup() {
        setupBorder()
    }
    

}
