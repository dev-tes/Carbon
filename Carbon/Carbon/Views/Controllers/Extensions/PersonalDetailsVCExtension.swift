//
//  PersonalDetailsVCExtension.swift
//  Carbon
//
//  Created by  Decagon on 26/08/2021.
//

import UIKit

extension PersonalDetailsViewController {
    
    //MARK:- Segue to personal details page
    @objc func goToPersonalDetails() {
        let personalController = PersonalDetailsViewController()
        navigationController?.pushViewController(personalController, animated: true)
    }
    
    @objc func addTapped() {
    }
    
    //MARK:- Adding Views
    func addDefaultViews() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Personal Details"
        view.backgroundColor = .white
        
        view.addSubview(logo)
        view.addSubview(firstName)
        view.addSubview(firstNameDetails)
        view.addSubview(middleName)
        view.addSubview(middleNameDetails)
        view.addSubview(surName)
        view.addSubview(surnameDetails)
        view.addSubview(email)
        view.addSubview(emailDetails)
        view.addSubview(password)
        view.addSubview(passwordDetails)
        view.addSubview(gender)
        view.addSubview(genderDetails)
        view.addSubview(phoneNumber)
        view.addSubview(phoneNumberDetails)
        view.addSubview(nextButton)
    }
    
    //MARK:- Constraining Views
    func constraintViews() {
        
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            logo.heightAnchor.constraint(equalToConstant: 70),
            logo.widthAnchor.constraint(equalToConstant: 210),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            firstNameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            firstNameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            firstNameDetails.heightAnchor.constraint(equalToConstant: 40),
            firstNameDetails.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 20),
            
            firstName.bottomAnchor.constraint(equalTo: firstNameDetails.topAnchor, constant: -5),
            firstName.leftAnchor.constraint(equalTo: firstNameDetails.leftAnchor),
            
            middleNameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            middleNameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            middleNameDetails.heightAnchor.constraint(equalToConstant: 40),
            middleNameDetails.topAnchor.constraint(equalTo: firstNameDetails.bottomAnchor, constant: 40),
            
            middleName.bottomAnchor.constraint(equalTo: middleNameDetails.topAnchor, constant: -5),
            middleName.leftAnchor.constraint(equalTo: middleNameDetails.leftAnchor),
            
            surnameDetails.topAnchor.constraint(equalTo: middleNameDetails.bottomAnchor, constant: 40),
            surnameDetails.heightAnchor.constraint(equalToConstant: 40),
            surnameDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            surnameDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            surName.bottomAnchor.constraint(equalTo: surnameDetails.topAnchor, constant: -5),
            surName.leftAnchor.constraint(equalTo: surnameDetails.leftAnchor),
            
            emailDetails.topAnchor.constraint(equalTo: surnameDetails.bottomAnchor, constant: 40),
            emailDetails.heightAnchor.constraint(equalToConstant: 40),
            emailDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            emailDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            email.bottomAnchor.constraint(equalTo: emailDetails.topAnchor, constant: -5),
            email.leftAnchor.constraint(equalTo: emailDetails.leftAnchor),
            
            passwordDetails.topAnchor.constraint(equalTo: emailDetails.bottomAnchor, constant: 40),
            passwordDetails.heightAnchor.constraint(equalToConstant: 40),
            passwordDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            passwordDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            password.bottomAnchor.constraint(equalTo: passwordDetails.topAnchor, constant: -5),
            password.leftAnchor.constraint(equalTo: passwordDetails.leftAnchor),
            
            genderDetails.topAnchor.constraint(equalTo: passwordDetails.bottomAnchor, constant: 40),
            genderDetails.heightAnchor.constraint(equalToConstant: 40),
            genderDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            genderDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            gender.bottomAnchor.constraint(equalTo: genderDetails.topAnchor, constant: -5),
            gender.leftAnchor.constraint(equalTo: genderDetails.leftAnchor),
            
            phoneNumberDetails.topAnchor.constraint(equalTo: genderDetails.bottomAnchor, constant: 40),
            phoneNumberDetails.heightAnchor.constraint(equalToConstant: 40),
            phoneNumberDetails.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            phoneNumberDetails.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            phoneNumber.bottomAnchor.constraint(equalTo: phoneNumberDetails.topAnchor, constant: -5),
            phoneNumber.leftAnchor.constraint(equalTo: phoneNumberDetails.leftAnchor),
            
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            nextButton.heightAnchor.constraint(equalToConstant: 60),
            nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
        ])
    }
}
