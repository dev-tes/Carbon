//
//  AccountOpeningViewController.swift
//  Carbon
//
//  Created by  Decagon on 24/08/2021.
//

import UIKit
import Lottie

class SignUpViewController: UIViewController {
    
    let welcomeText: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Let's set things up. Please fill out these basic details \nto get started."
        text.font = UIFont(name: "Helvetica", size: 13)
        text.textAlignment = .center
        text.numberOfLines = 2
        return text
    }()
    
    let footerText: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "By continuing, you accept our Terms of Services\n & Privacy Policy"
        text.font = UIFont(name: "Helvetica", size: 13)
        text.textAlignment = .center
        text.numberOfLines = 2
        return text
    }()
    
    let firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "First name"
        return label
    }()
    
    let firstNameDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    let middleName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Middle name"
        return label
    }()
    
    let middleNameDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    let lastName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Surname"
        return label
    }()
    
    let lastNameDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    let email: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        return label
    }()
    
    let emailDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    let password: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        return label
    }()
    
    let passwordDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.keyboardType = .emailAddress
        textField.isSecureTextEntry = true
        return textField
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        addDefaultViews()
        constraintViews()
        signupModel.delegate = self
    }
    
    let gender: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Gender"
        return label
    }()
    
    let genderDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    let phoneNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Phone number"
        return label
    }()
    
    let phoneNumberDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.keyboardType = .numberPad
        return textField
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create account", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        button.addTarget(self, action: #selector(didTapToSignUp(_:)), for: .touchUpInside)
        button.layer.cornerRadius = 10
        return button
    }()
    
    var signupModel = SignupViewModel()
}

