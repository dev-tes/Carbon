//
//  SigninVCExtension.swift
//  Carbon
//
//  Created by  Decagon on 26/08/2021.
//

import UIKit
extension SignInViewController {
    
    // MARK:-  Button setup
    
    @objc func didtap(_ sender: Any) {
        let request = SigninRequest(email: emailTextField.text, password: passwordTextField.text)
        signViewModel.signinUser(signinRequest: request)
        
            let personalDetailsViewController = PersonalDetailsViewController()
            navigationController?.pushViewController(personalDetailsViewController, animated: true)
        
        
    }
    
    // MARK:- did Tap Button
    @objc func didTapSetUpButton(){
        let signInViewController = SignUpViewController()
        navigationController?.pushViewController(signInViewController, animated: true)
        
    }
    
    override func viewWillLayoutSubviews() {
        signInButton.layer.cornerRadius = 8
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signViewModel.delegate = self
        view.backgroundColor = .white
        
        layoutViews()
    }
    
    private func layoutViews() {
        view.addSubview(welcomeLabel)
        view.addSubview(signInButton)
        view.addSubview(logoImageView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(phoneNumberLabel)
        view.addSubview(pinLabel)
        view.addSubview(setUpNewAccountButton)
        view.addSubview(newUserLabel)
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        NSLayoutConstraint.activate([
            signInButton.heightAnchor.constraint(equalToConstant: 52),
            signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            logoImageView.heightAnchor.constraint(equalToConstant: 60),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -100 ),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 52),
            emailTextField.bottomAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 126),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            passwordTextField.heightAnchor.constraint(equalToConstant: 52),
            passwordTextField.topAnchor.constraint(equalTo: pinLabel.bottomAnchor, constant: 6),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            phoneNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            phoneNumberLabel.bottomAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
            
            pinLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            pinLabel.bottomAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 120),
            
            setUpNewAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -4),
            setUpNewAccountButton.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 2),
            
            newUserLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            newUserLabel.rightAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
    }
    
    
}

class paddedTextField: UITextField {
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
    
}
