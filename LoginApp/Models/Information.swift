//
//  Information.swift
//  LoginApp
//
//  Created by Тимофей Юдин on 18.02.2023.
//

struct InfoAboutUser {
    let name: String
    let surname: String
    let birthday: Birthday
    
    static func getPerson() -> InfoAboutUser {
        InfoAboutUser(
            name: "Тимофей",
            surname: "Юдин",
            birthday: Birthday(day: 25, month: 3, year: 2008)
        )
    }
}

struct Birthday {
    let day: Int
    let month: Int
    let year: Int
}
