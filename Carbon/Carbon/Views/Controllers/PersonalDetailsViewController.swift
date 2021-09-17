//
//  PersonalDetails.swift
//  Carbon
//
//  Created by Tesleem on 25/08/2021.
//

import Foundation
import UIKit

class PersonalDetailsViewController: UIViewController {
    
    // MARK:- logo
    let logo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "carbon_image")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    //MARK:- first name label
    let firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "First name"
        return label
    }()
    
    //MARK:- first name text field
    let firstNameDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    //MARK:- middle name label
    let middleName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Middle name"
        return label
    }()
    
    //MARK:- middle name text field
    let middleNameDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    //MARK:- Surname label
    let surName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Surname"
        return label
    }()
    
    //MARK:- Surname text field
    let surnameDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    //MARK:- Email label
    let email: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        return label
    }()
    
    //MARK:- Email text field
    let emailDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    //MARK:- password label
    let password: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        return label
    }()
    
    //MARK:- password text field
    let passwordDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    //MARK:- gender label
    let gender: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Gender"
        return label
    }()
    
    //MARK:- gender text field
    let genderDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    //MARK:- phone number label
    let phoneNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Phone number"
        return label
    }()
    
    //MARK:- phone number text field
    let phoneNumberDetails: paddedTextField = {
        let textField = paddedTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
        textField.layer.cornerRadius = 5
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        //button.addTarget(self, action: #selector(goToPersonalDetails), for: .touchUpInside)
        button.layer.cornerRadius = 10
        return button
    }()
    
    //MARK:- View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(addTapped))
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        addDefaultViews()
        constraintViews()
    }
}
