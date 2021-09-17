//
//  SignInRequest.swift
//  Carbon
//
//  Created by  Decagon on 26/08/2021.
//

import Foundation

struct SigninResponse: Decodable {
   
    let errorMessage: String?
    let data: UserData?
    
}

struct UserData: Decodable {
    
    let id: Int
    let email: String
    let password: String
    
}
