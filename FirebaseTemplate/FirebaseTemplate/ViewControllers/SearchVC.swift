////
////  SearchVC.swift
////  FirebaseTemplate
////
////  Created by moahammed on 7/15/20.
////  Copyright © 2020 OMAR. All rights reserved.
////
//
//import UIKit
//import EventKit
//
//
//class SearchVC:  UIViewController {
//
//
//    
//    let Search = [ "طب العائلة", "دكتور عيون", "دكتور قلب", "دكتور انف واذن وحنجرة", "دكتور أسنان", "جراحة تجميلية", "جراحة السمنة", "الامراض الجلدية", "أمراض النساء والولادة", "أمراض المسالك البولية", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""
//    ]
//    
//    var filteredData: [String]!
//    
//@IBOutlet weak var searchBar: UISearchBar!
//
//}
//
//    extension SearchVC : UISearchBarDelegate {
//    
////    func updateSearchResults(for searchController: UISearchController) {
////        guard let text = searchController.searchBar.text else { return }
////        print(text)
////    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        searchBar.delegate = self
//              
//              filteredData = Search
//        
//        // Do any additional setup after loading the view.
////
////        let search = UISearchController(searchResultsController: nil)
////        search.searchResultsUpdater = self
////        search.obscuresBackgroundDuringPresentation = false
////        search.searchBar.placeholder = "ابحث هنا"
////        navigationItem.searchController = search
//    }
//    
//    
//    
//    
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//     func numberOfSections(in tableView: UITableView) -> Int {
//            // #warning Incomplete implementation, return the number of sections
//            return 1
//        }
//        
//         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            // #warning Incomplete implementation, return the number of rows
//            return filteredData.count
//        }
//        
//         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
//            
//            cell.textLabel?.text = filteredData[indexPath.row]
//            
//            return cell
//        }
//        
////        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////            performSegue(withIdentifier: "hi", sender: indexPath.row)
////        }
////        
////        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////            if segue.identifier == "hi"{
////                let i = sender as! Int
////                let vc = segue.destination as! details
////                vc.data = filteredData[i]
////            }
////        }
//        // MArk: Search Bar Config
//        
//        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
//            
//            filteredData = []
//            
//            if searchText == "" {
//                
//                filteredData = Search
//            }
//            else {
//                for fruit in Search {
//                    
//                    if fruit.lowercased().contains(searchText.lowercased()) {
//                        
//                        filteredData.append(contentsOf: Search)
//                        
//                    }
//                }
//            }
//            self.tableView.reloadData()
//        }
//    }
//
//
//
