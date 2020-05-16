//
//  BoldLabel.swift
//  Azoera
//
//  Created by Leonardo Diaz on 5/16/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import UIKit

class BoldLabel: AzoeraLabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFontTo(fontName: FontNames.latoBold)
    }
}
