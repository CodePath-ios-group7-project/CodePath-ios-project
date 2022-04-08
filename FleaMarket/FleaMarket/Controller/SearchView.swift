//
//  SearchView.swift
//  FleaMarket
//
//  Created by Michael Ha on 4/8/22.
//

import UIKit

class SearchView: UIViewController {

    @IBOutlet weak var searchLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let data = ["Apple 🍎", "Banana 🍌", "Mango 🥭", "Peach 🍑"]
    var filteredData: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        searchBar.delegate = self
        
        filteredData = data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

// MARK: - Table view data source

extension SearchView: UITableViewDelegate, UITableViewDataSource {
    /*
     The numberOfRowsInSection method does exactly what it says and returns the number of rows for each section in the table view. In most tutorials only one section is used so this can be as simple as return todoListItems.count, assuming that the todoListItems is either an array or dictionary.
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    /*
     The cellForRowAt indexPath method provides the correct UITableViewCell for a row in the table view.

     You will need to use the datasource methods to manage and display the data you want to display in the table view. To do this you need to get the correct data for the cell that you are busy setting up. The datasource is generally an array and you would use the row property that is accessible through the indexPath argument.
     */
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell") as! SearchCell
        
        cell.textLabel?.text = filteredData[indexPath.row]
        
        return cell
    }
}

// MARK: Search bar Config

extension SearchView: UISearchBarDelegate {
    // run the code inside the search bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        
        if searchText == "" {
            filteredData = data
        }
        else {
            for fruit in data{
                
                if fruit.lowercased().contains(searchText.lowercased()) {
                    filteredData.append(fruit)
                }
            }
        }
        
        // refresh every time
        self.tableView.reloadData()
    }
}
