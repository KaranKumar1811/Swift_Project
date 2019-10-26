//
//  Motorcycle.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
// by Kamal and Sandeep

class Motorcycle : Vehicle
{
    
    
    var model : String = ""
    var yMake = String()
    
    init(make : String , plate : String, model : String,  year: String)
    {
        super.init(make: make, plate: plate)
        self.model = model
        self.yMake = year
        
    }
    override func printMyData()
        {
        super.printMyData()
        print("Model : \(model)")
        print("Year of Make : \(yMake)")

    }
}
