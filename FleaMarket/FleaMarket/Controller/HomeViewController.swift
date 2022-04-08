//
//  HomeViewController.swift
//  FleaMarket
//
//  Created by Michael Ha on 4/7/22.
//

import UIKit
import Parse

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var items = [PFObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           let query = PFQuery(className: "Post")
           query.includeKey("author")
           query.limit = 20
           
           query.findObjectsInBackground { (items, error) in
               if items != nil {
                   self.items = items!
                   self.tableView.reloadData()
               } else {
                   print("this is item check: \(items)")
               }
               
           }
       }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // Find the selected items
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        let item = items[indexPath.row]
        
        // Pass the selected item to the details view controller
        let detailsViewController = segue.destination as! ProductDetailViewController
        detailsViewController.item = item
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        
        let post = items[indexPath.row]
        let item = post["author"] as! PFUser
        
        
        cell.productNameLabel.text = post["productName"] as! String
        cell.priceLabel.text = post["price"] as! String
        cell.discriptionLabel.text = post["description"] as! String
        
        let imageFile = post["image"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        
        cell.productImage.af.setImage(withURL: url)
        
        return cell
    }
    
    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}