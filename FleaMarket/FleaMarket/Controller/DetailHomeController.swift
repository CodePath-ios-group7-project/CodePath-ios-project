//
//  DetailHomeController.swift
//  FleaMarket
//
//  Created by Michael Ha on 4/7/22.
//

import UIKit
import Parse
class DetailHomeController: UIViewController {
    var item: PFObject!
    
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!
    
    @IBOutlet weak var priceTag: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var locationTag: UILabel!
    
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var detailDisLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
