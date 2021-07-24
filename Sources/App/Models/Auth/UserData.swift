//
//  UserData.swift
//  
//
//  Created by Grigory Stolyarov on 23.07.2021.
//

import Foundation

struct RegisteredUser {
    var password: String
    var user: User
}

struct LoggedUser {
    var user: User
    var cart: GetBasketResponse
}

var registeredUsers: [RegisteredUser] = [
    RegisteredUser (password: "GregPWD",
                    user: User(id_user: 123,
                               user_login: "Greg",
                               user_name: "Gregory",
                               user_lastname: "Joiner",
                               email: "greg@domain.com",
                               gender: "M",
                               credit_card: "1234-5678-9012-3456",
                               bio: "Some biography")),
    RegisteredUser (password: "JohnPWD",
                    user: User(id_user: 111,
                               user_login: "John",
                               user_name: "John",
                               user_lastname: "Doe",
                               email: "johndoe@domain.com",
                               gender: "M",
                               credit_card: "1234-5678-9012-3456",
                               bio: "Some important biography"))
    
]

var loggedUsers: [LoggedUser] = []

func userLogin(login: String, password: String) -> LoginResponse {
    guard let registeredUser = registeredUsers.first(where: { $0.user.user_login == login } )
    else { return LoginResponse(result: 0,
                                user: User())
    }
    
    if loggedUsers.firstIndex(where: { $0.user.user_login == login } ) == nil {
        loggedUsers.append(LoggedUser(user: registeredUser.user,
                                      cart: GetBasketResponse()))
    }
    
    return LoginResponse(result: 1,
                         user: registeredUser.user)
}

func userLogout(userId: Int) {
    guard let loggedUserIndex = loggedUsers.firstIndex(where: { $0.user.id_user == userId } )
    else { return }
    
    loggedUsers.remove(at: loggedUserIndex)
}

func userRegister(loginName: String,
                  password: String,
                  name: String,
                  surname: String,
                  email: String,
                  gender: String,
                  creditCard: String,
                  bio: String) -> RegisterResponse {
    if let _ = registeredUsers.firstIndex(where: { $0.user.user_login == loginName } ) {
        return RegisterResponse(result: 0,
                                userMessage: "",
                                errorMessage: "User exists!")
    }
    
    let lastUserId = registeredUsers.map {$0.user.id_user}.max() ?? 123
    
    registeredUsers.append(RegisteredUser (password: password,
                                           user: User(id_user: lastUserId + 1,
                                                      user_login: loginName,
                                                      user_name: name,
                                                      user_lastname: surname,
                                                      email: email,
                                                      gender: gender,
                                                      credit_card: creditCard,
                                                      bio: bio)))
    
    return RegisterResponse(result: 1,
                            userMessage: "Registration successfull",
                            errorMessage: "")
}

func userChangeData(userId: Int,
                    loginName: String,
                    password: String,
                    name: String,
                    surname: String,
                    email: String,
                    gender: String,
                    creditCard: String,
                    bio: String) -> ChangeUserDataResponse {
    guard let registeredUserIndex = registeredUsers.firstIndex(where: { $0.user.id_user == userId } )
    else { return ChangeUserDataResponse(result: 0) }
    
    registeredUsers[registeredUserIndex].password = password
    registeredUsers[registeredUserIndex].user = User(id_user: userId,
                                                     user_login: loginName,
                                                     user_name: name,
                                                     user_lastname: surname,
                                                     email: email,
                                                     gender: gender,
                                                     credit_card: creditCard,
                                                     bio: bio)
    
    if let loggedUserIndex = loggedUsers.firstIndex(where: { $0.user.id_user == userId } ) {
        loggedUsers[loggedUserIndex].user = registeredUsers[registeredUserIndex].user
    }
    
    return ChangeUserDataResponse(result: 1)
}
