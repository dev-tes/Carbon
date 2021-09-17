//
//  SignInViewController.swift
//  Carbon
//
//  Created by  Decagon on 24/08/2021.
//

import UIKit
import Lottie

class SignInViewController: UIViewController {
    
    
    let textView: UITextView = {
        let tv = UITextView()
        tv.text = "SAMPLE TEXT FOR NOW"
        tv.isEditable = false
        tv.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
        return tv
    }()
    
    let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign in", for: .normal)
        button.backgroundColor = .purple
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didtap(_:)), for: .touchUpInside)
        return button
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hi there, welcome back , Please sign in"
        label.font = UIFont(name: "Helvetica", size: 16)
        return label
    }()
    
    let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.font = UIFont(name: "Helvetica", size: 14)
        return label
    }()
    
    let pinLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        label.font = UIFont(name: "Helvetica", size: 14)
        return label
    }()
    
    let setUpNewAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set up new account", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapSetUpButton), for: .touchUpInside)
        return button
    }()
    
    let newUserLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "New to Carbon?"
        return label
    }()
    
    
    let emailTextField: paddedTextField = {
        let textField = paddedTextField()
        textField.placeholder = ""
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.keyboardType = .emailAddress
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 5
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        return textField
    }()
    
    let passwordTextField: paddedTextField = {
        let textField = paddedTextField()
        textField.placeholder = ""
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 5
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        return textField
    }()
    
    let logoImageView : UIImageView = {
        let image =  UIImage(named: "Carbon")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var signViewModel = SigninViewModel()
}
