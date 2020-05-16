//
//  LightLabel.swift
//  Azoera
//
//  Created by Leonardo Diaz on 5/16/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class LightLabel: AzoeraLabel{
    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFontTo(fontName: FontNames.latoLight)
        self.textColor = .subltleTextColor
    }
}
