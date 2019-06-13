//
//  CategoriesTableViewController.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 6/7/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import UIKit

class CategoriesTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    var categoriesList = [Categories]()
   
    func createStule() {
        self.view.backgroundColor = .black
        self.tableView.separatorStyle = .none
        //self.navigationController?.navigationBar.backgroundColor = .black
        self.title = "Categories"
        self.tableView.register(CategoriesTableViewCell.self, forCellReuseIdentifier: CategoriesTableViewCell.reusIdentifier)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
       self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) // makes bar transparent
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
        self.navigationItem.title = "Categories"
    
        
    }
    
    func set(cells: [Categories]) {
        self.categoriesList = cells
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createStule()
        set(cells: Categories.fetchCategories())
        // Uncomment the following line to preserve selection between presentations
       //  self.clearsSelectionOnViewWillAppear = true

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categoriesList.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoriesTableViewCell.reusIdentifier, for: indexPath) as! CategoriesTableViewCell
        cell.mainImageView.image = categoriesList[indexPath.row].imageCategory
        cell.nameLabel.text = categoriesList[indexPath.row].titleCategory
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
   
}
