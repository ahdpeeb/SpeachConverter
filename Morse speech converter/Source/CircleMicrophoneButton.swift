//
//  CircleMicrophoneButton.swift
//  Morse speech converter
//
//  Created by Nikola Andriiev on 11.11.16.
//  Copyright © 2016 Andriiev.Mykola. All rights reserved.
//

import UIKit

@IBDesignable
class CircleMicrophoneButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
}
