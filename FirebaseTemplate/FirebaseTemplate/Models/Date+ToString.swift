//
//  Date+ToString.swift
//  lll
//
//  Created by moahammed on 7/14/20.
//  Copyright © 2020 Almousawi2002. All rights reserved.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
