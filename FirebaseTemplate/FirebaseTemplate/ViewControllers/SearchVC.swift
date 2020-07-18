//
//  SearchVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/15/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit


class SearchVC: UIViewController, UISearchResultsUpdating, UISearchBarDelegate {
  
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "ابحث هنا"
        navigationItem.searchController = search
    }
    
    var Search = [ "طب العائلة", "دكتور عيون", "دكتور قلب", "دكتور انف واذن وحنجرة", "دكتور أسنان", "جراحة تجميلية", "جراحة السمنة", "الامراض الجلدية", "أمراض النساء والولادة", "أمراض المسالك البولية", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""
    
    
    ]
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}

