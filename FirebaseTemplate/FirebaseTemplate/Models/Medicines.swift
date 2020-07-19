//
//  Medicines.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/19/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import Foundation
import UIKit

struct Medicine {
    var medicineName: String = ""
    
    func categoryImage() -> UIImage {
        return UIImage(named: medicineName)!
    }
}

var medicine: [Medicine] = [ Medicine(medicineName: "vitamin D3"),
                             Medicine(medicineName: "potassium"),
                             Medicine(medicineName: "biotin"),
                             Medicine(medicineName: "vitamin C"),
                             Medicine(medicineName: "magnesium"),
                             Medicine(medicineName: "E-400"),
                             Medicine(medicineName: "magnesium with vitamin B6"),
                             Medicine(medicineName: "zinc")
]
