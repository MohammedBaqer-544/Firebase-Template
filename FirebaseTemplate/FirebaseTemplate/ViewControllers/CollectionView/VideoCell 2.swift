//
//  VideoCell.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    
    static var reusableIdentifier = String(describing: VideoCell.self)
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
