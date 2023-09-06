//
//  CustomButton.swift
//  Training
//
//  Created by Gleb on 06.09.2023.
//

import UIKit

class CustomButton: UIButton {
    
    var text: String
    var cornerRadius: Int
  
    
    init(txt: String, cR: Int) {
        self.cornerRadius = cR
        self.text = txt
        super.init(frame: .zero)
    }
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
