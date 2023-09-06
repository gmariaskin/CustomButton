//
//  MainView.swift
//  Training
//
//  Created by Gleb on 06.09.2023.
//

import UIKit
import SnapKit


class MainView: UIView {
    
    lazy var button1: UIButton = createButton(text: "Okay", radius: 10)
    lazy var button2: UIButton = createButton(text: "Not Okay", radius: 20)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
        addSubview(button1)
        addSubview(button2)
        
        button1.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview()
        }
        
        button2.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    private func createButton(text: String, radius: Int) -> UIButton {
        
        let button = CustomButton(txt: text, cR: radius)
        button.setTitle(button.text, for: .normal)
        return button
    }
}





