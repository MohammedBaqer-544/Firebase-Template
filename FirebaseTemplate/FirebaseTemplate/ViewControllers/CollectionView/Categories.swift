//
//  Categories.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class Categories: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var images = ["طب العائلة", "دكتور قلب", "دكتور عيون", "دكتور أنف واذن وحنجرة", "دكتور أسنان","جراحة تجميلية","جراحة السمنة" ,"الامراض الجلدية" ,"أمراض النساء والولادة" ,"أمراض المسالك البولية"]
    
//    @IBOutlet weak var cv1: UICollectionView!
    var selectedImage = UIImage()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "category", for: indexPath) as! VideoCell
        cell.imageView.image = UIImage(named: images[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedImage = UIImage(named: images[indexPath.item])!
        print(selectedImage)
        performSegue(withIdentifier: "goToCategories", sender: indexPath.item)
    }
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//      cv1.register(VideoCell.self, forCellWithReuseIdentifier: "category")


        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToCategories"{
            let i = sender as! Int
            let vc = segue.destination as! CategoriesDetailsVC
            vc.data = category[i]
        }
   }
}

