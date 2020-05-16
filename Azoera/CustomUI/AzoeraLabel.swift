//
//  AzoeraLabel.swift
//  Azoera
//
//  Created by Leonardo Diaz on 5/16/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFontTo(fontName: FontNames.latoRegular)
        self.textColor = .mainTextColor
    }
    
    func updateFontTo(fontName: String){
        let size = self.font.pointSize
        self.font = UIFont(name: fontName, size: size)!
    }

}
