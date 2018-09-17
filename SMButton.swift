//
//  SMButton.swift
//  CustomButton
//
//  Created by Sihem MOHAMED on 04/09/2018.
//  Copyright © 2018 SIMO. All rights reserved.
//

import UIKit

@IBDesignable class SMButton: UIButton {

    @IBInspectable var isActivate : Bool = true {
        didSet{
            setupActivateButton(isActivate)
        }
    }
    
    @IBInspectable var activateBackgroundColor : UIColor = .gray {
        didSet{
            setupActivateButton(isActivate)
        }
    }
    
    @IBInspectable var deactivateBackgroundColor : UIColor = .clear {
        didSet{
            setupActivateButton(isActivate)
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            setupCornerRadius(cornerRadius)
        }
    }
    
    @IBInspectable var isRoundButton: Bool = false {
        didSet{
            setupCornerRadius(cornerRadius)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        setupActivateButton(isActivate)
        setupRoundButton(isRoundButton)
    }
    
    func setupActivateButton(_ value:Bool) {
        self.isUserInteractionEnabled = value
        if value {
            self.backgroundColor = activateBackgroundColor
            let attributedString = NSAttributedString(string: currentTitle!, attributes: [NSAttributedStringKey.foregroundColor : currentTitleColor])
            self.setAttributedTitle(attributedString, for: .normal)
            self.layer.borderColor = currentTitleColor.cgColor
            self.layer.borderWidth = 2
        }else{
            self.backgroundColor = deactivateBackgroundColor
            let attributedString = NSAttributedString(string: currentTitle!, attributes: [NSAttributedStringKey.foregroundColor : activateBackgroundColor])
            self.setAttributedTitle(attributedString, for: .normal)
            self.layer.borderColor = activateBackgroundColor.cgColor
            self.layer.borderWidth = 2
        }
    }
    
    func setupCornerRadius(_ value: CGFloat) {
        layer.cornerRadius = value
    }
    
    func setupRoundButton(_ value: Bool) {
        if value {
            setupCornerRadius(self.frame.height/2)
        }else{
            setupCornerRadius(cornerRadius)
        }
    }
}
