//
//  ViewController.swift
//  Training
//
//  Created by Gleb on 06.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private var mainView = MainView()
   
    override func loadView() {
        super.loadView()
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

