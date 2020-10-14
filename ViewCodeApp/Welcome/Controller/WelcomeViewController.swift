//
//  ViewController.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 13/10/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, HasCodeView {
    
    typealias CustomView = WelcomeView

    // MARK: - Super Methods
    override func loadView() {
        view = WelcomeView(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Methods
    @objc private func keyboardWillShow(notification: NSNotification) {
        guard let userInfo = notification.userInfo,
            let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
        
        customView.scrollView.contentInset.bottom = keyboardFrame.size.height - view.safeAreaInsets.bottom
        customView.scrollView.verticalScrollIndicatorInsets.bottom = keyboardFrame.size.height - view.safeAreaInsets.bottom
    }
    
    @objc private func keyboardWillHide(notification: NSNotification) {
        customView.scrollView.contentInset.bottom = 0
        customView.scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}

extension WelcomeViewController: WelcomeViewDelegate {
    func loginButtonTapped(withPhone: String) {
        print("Usuário tocou no botão de Login com o telefone \(withPhone)")
    }
    
    func signUpbuttonTapped() {
        print("Usuário tocou no botão de SignUp")
    }
    
    func facebookbuttonTapped() {
        
    }
    
    func googlebuttonTapped() {
        
    }
}

