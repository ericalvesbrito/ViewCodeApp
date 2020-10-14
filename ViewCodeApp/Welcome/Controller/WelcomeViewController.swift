//
//  ViewController.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 13/10/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - Super Methods
    override func loadView() {
        view = WelcomeView(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension WelcomeViewController: WelcomViewDelegate {
    func loginButtonTapped(withPhone: String) {
        
    }
    
    func signUpbuttonTapped() {
        
    }
    
    func facebookbuttonTapped() {
        
    }
    
    func googlebuttonTapped() {
        
    }
}

