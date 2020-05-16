//
//  AzoeraButton.swift
//  Azoera
//
//  Created by Leonardo Diaz on 5/16/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        updateFontTo()
    }
    
    func updateFontTo(){
        guard let size = self.titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: FontNames.latoRegular, size: size)!
    }
    
    func setupUI(){
        self.backgroundColor = .greenAccent
        self.setTitleColor(.mainTextColor, for: .normal)
        self.addCornerRadius(8)
    }
}
