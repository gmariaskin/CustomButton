//
//  ViewController.swift
//  Training
//
//  Created by Gleb on 06.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private var mainView: MainView
    
    init() {
        self.mainView = MainView()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
  
}

