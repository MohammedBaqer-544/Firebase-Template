//
//  BestDoctorsCell.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class BestDoctorsCell: UICollectionViewCell {
    
    static var reusableIdentifier = String(describing: BestDoctorsCell.self)
    
    @IBOutlet weak var BestDoctorView: UIImageView!
    
    
        override func awakeFromNib() {
            super.awakeFromNib()
        // Initialization code
    }
}
