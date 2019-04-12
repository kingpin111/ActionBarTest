//
//  ActionIcon.swift
//  ActionBarTest
//
//  Created by Victor K Lee on 12/04/2019.
//  Copyright © 2019 Victor K Lee. All rights reserved.
//

import UIKit

class ActionIcon: UIButton {
    override var isHighlighted: Bool {
        didSet {
            UIView.animate(withDuration: 0.25, delay: 0, options: [], animations: {
                self.alpha = self.isHighlighted ? 0.3 : 1
            }, completion: nil)
        }
    }
}
