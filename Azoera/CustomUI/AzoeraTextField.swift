//
//  AzoeraTextField.swift
//  Azoera
//
//  Created by Leonardo Diaz on 5/16/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.backgroundColor = UIColor.blackOverlay
        self.layer.masksToBounds = true
        self.addCornerRadius(10)
        self.textColor = UIColor.mainTextColor
        self.addAccentBorder()
        self.updateFontTo(fontName: FontNames.latoRegular)
        updatePlaceHolder()
    }
    
    func updateFontTo(fontName: String){
        guard let size = self.font?.pointSize else { return }
        self.font = UIFont(name: fontName, size: size)
    }
    
    func updatePlaceHolder(){
        let currentPlaceholderText = self.placeholder
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholderText ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.subltleTextColor, NSAttributedString.Key.font : UIFont(name: FontNames.latoLight, size: 16)!])
    }

}
