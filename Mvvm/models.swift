//
//  models.swift
//  Mvvm
//
//  Created by Pranav on 24/02/22.
//

import Foundation

//The main character model

struct characters{
    
    let id : Int
    let firstName : String
    let lastName : String
    let Status : String
    let species : String
    
}

//view model is a subset of the main model which displays only partial information from the main model, (in this case characters model)

struct CellViewModel{
    let firstName : String
    let lastName : String
    let species : String
}

