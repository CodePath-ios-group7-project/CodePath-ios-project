//
//  SearchView.swift
//  FleaMarket
//
//  Created by Michael Ha on 4/8/22.
//

import UIKit
import Parse

class SearchView: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mysearchBar: UISearchBar!
    
    var searchResults = [String]()
//    var data:[PFObject]!
//    var filtered:[PFObject]!
    
    var searchActive : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        mysearchBar.delegate = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//    func search(searchText: String? = nil){
//        let query = PFQuery(className: "_Posts")
//        if(searchText != nil){
//            query.whereKey("title", contains: searchText)
//        }
//        query.findObjectsInBackground { (results, error) -> Void in
//            self.data = results as? [PFObject]
//            self.tableView.reloadData()
//        }
//
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        mysearchBar.resignFirstResponder()
        
        var itemQuery = PFQuery(className: "Posts")
        itemQuery.whereKey("title", contains: searchBar.text)
        
        var query = PFQuery.orQuery(withSubqueries: [itemQuery])
        
        query.findObjectsInBackground { (results: [AnyObject]?, error: Error?) -> Void in
            if error != nil {
                var myAlert = UIAlertController(title: "Alert", message: error?.localizedDescription, preferredStyle: .alert)

                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)

                myAlert.addAction(okAction)

                self.presentedViewController?.present(myAlert, animated: true, completion: nil)
                return
            }
            
            if let objects = results as? [PFObject]{
                self.searchResults.removeAll(keepingCapacity: false)
                
                for object in objects {
                    let title = object.object(forKey: "title") as! String
                    
                    self.searchResults.append(title.lowercased())
                }
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                    self.mysearchBar.resignFirstResponder()
                }
            }
        }
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        mysearchBar.resignFirstResponder()
        mysearchBar.text = ""
    }
}

// MARK: - Table view data source

extension SearchView: UITableViewDelegate, UITableViewDataSource {
    /*
     The numberOfRowsInSection method does exactly what it says and returns the number of rows for each section in the table view. In most tutorials only one section is used so this can be as simple as return todoListItems.count, assuming that the todoListItems is either an array or dictionary.
     */
//    func tableView(tableView: UITableView, numberOfRowsInTableView: Int) -> Int {
//        return 1
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    /*
     The cellForRowAt indexPath method provides the correct UITableViewCell for a row in the table view.

     You will need to use the datasource methods to manage and display the data you want to display in the table view. To do this you need to get the correct data for the cell that you are busy setting up. The datasource is generally an array and you would use the row property that is accessible through the indexPath argument.
     */
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell") as! UITableViewCell
        cell.textLabel?.text = searchResults[indexPath.row]
        
        return cell
    }
}

// MARK: Search bar Config


