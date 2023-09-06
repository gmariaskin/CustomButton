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
    
    private let customButton2: CustomButton2 = {
        let obj = CustomButton2(text: "TEST", radius: 50)
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
        backgroundColor = .gray
        
        addSubview(button1)
        addSubview(button2)
        addSubview(customButton2)
        
        button1.snp.makeConstraints { make in
            make.centerY.leading.equalToSuperview()
            make.size.equalTo(100)
        }
        
        button2.snp.makeConstraints { make in
            make.centerY.trailing.equalToSuperview()
            make.size.equalTo(100)
        }
        
        customButton2.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.size.equalTo(100)
        }
    }
    
    private func createButton(text: String, radius: Int) -> UIButton {
        
        let button = CustomButton(txt: text, cR: radius)
        button.setTitle(button.text, for: .normal)
        button.layer.cornerRadius = CGFloat(radius)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        return button
    }
}





