//
//  ViewController.swift
//  CustomHeaders
//
//  Created by Bryan Fein on 4/12/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

struct  postStruct {
    var image : UIImage!
    var name : String!
    
}

class MainVC: UITableViewController {

    var cellHeight : CGFloat = 44
    var arrayPost = [postStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayPost = [postStruct.init(image: #imageLiteral(resourceName: "Phone"), name: "Bryan"),postStruct.init(image: #imageLiteral(resourceName: "Phone"), name: "Bryan"), postStruct.init(image: #imageLiteral(resourceName: "Phone"), name: "Bryan"), postStruct.init(image: #imageLiteral(resourceName: "Phone"), name: "Bryan")]
    
    
    
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        return cell
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayPost.count
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellHeight
    }


    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        
        headerView.profileImage.image = arrayPost[section].image
        headerView.profileName.text = arrayPost[section].name
        
        return headerView
    }

}

