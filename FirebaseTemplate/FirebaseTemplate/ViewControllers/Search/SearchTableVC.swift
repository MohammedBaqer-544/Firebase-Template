//
//  SearchTableVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/19/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class SearchTableVC: UITableViewController, UISearchBarDelegate {
    
    let Search = [ "طب العائلة", "دكتور عيون", "دكتور قلب", "دكتور انف واذن وحنجرة", "دكتور أسنان", "جراحة تجميلية", "جراحة السمنة", "الامراض الجلدية", "أمراض النساء والولادة", "أمراض المسالك البولية", "أحمد فاضل", "بدر قاسم", "جاسم علي", "جميلة خالد", "فاطمة محمد", "محمد علي", "ذكر" ,"أنثى","A+", "A-", "B+", "B-","AB+", "AB-", "O+", "O-","٣٠ مل", "٥٠ مل", "١٠٠ مل", "١٥٠ مل","٢٠٠ مل", "٢٥٠ مل", "٣٠٠ مل", "٣٣٠ مل", "٤٠٠ مل", "٥٠٠ مل", "٦٠٠ مل", "٨٠٠ مل", "١٠٠٠ مل", "فيتامين سي","ماغنيسيوم", "اي ٤٠٠","مغنيسيوم مع فيتامين باء ٦", "زينك","اليرجوديل", "فيسس","اوترفين", "تونيمير"
        ,"ادفيل" ,"بروفين","اولفين" ,"باندول ادفانس","باندول اكسترا",
         
    ]
    var filteredData: [String]!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        filteredData = Search
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = filteredData[indexPath.row]
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        
        filteredData = []
        
        if searchText == "" {
            
            filteredData = Search
        }
        else {
            for i in Search {
                
                if i.lowercased().contains(searchText.lowercased()) {
                    
                    filteredData.append(i)
                    
                }
            }
        }
        self.tableView.reloadData()
    }
    
}
