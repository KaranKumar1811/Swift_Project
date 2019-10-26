//
//  CommissionBasedPartTime.swift
//  Group1_F2019_MAD3004_FP
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class CommissionBasedPartTime:PartTime
{
    var commissionPer:Float
    init(ComTEmpID: Int, ComTEmptype: String, ComTEmpName: String, ComTEmpAge: Int, Rate: Float, HoursWorked: Float,CommissionPer:Float,Vobj:Pojo.Vehicle)
    {
        self.commissionPer=CommissionPer
        super.init(PTEmpID: ComTEmpID, PTEmptype: ComTEmptype, PTEmpName: ComTEmpName, PTEmpAge: ComTEmpAge, Rate: Rate, HoursWorked: HoursWorked, Vobj: Vobj)
    }
    func calHours()->Float
    {
        return rate*hoursworked
    }
    
    override func calEarnings()->Float {
       return ((calHours()*commissionPer)/100)+calHours()
        
    }
    
    override func printMyData() {
        super.printMyData()
        print(" Commission % :\(commissionPer)")
        print(" Total Earnings : \(calEarnings().currencyFormat())\n")
    }
    
   

}
