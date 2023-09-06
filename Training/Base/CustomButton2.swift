//
//  CustomButton2.swift
//  Training
//
//  Created by DiOS on 06.09.2023.
//

import UIKit

class CustomButton2: UIButton {
    
    private var text: String
    private var radius: Int
    
    init(text: String, radius: Int, frame: CGRect = .zero) {
        self.text = text
        self.radius = radius
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setTitle(text, for: .normal)
        layer.cornerRadius = CGFloat(radius)
        setTitleColor(.black, for: .normal)
        backgroundColor = .white
    }
}
