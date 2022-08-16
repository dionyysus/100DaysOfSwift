//
//  ViewController.swift
//  Challange 1
//
//  Created by Gizem Coşkun on 16.08.2022.
//

import UIKit

class ViewController: UITableViewController {
    var flags = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Flags Of Country"
        navigationController?.navigationBar.prefersLargeTitles = false
        
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            //The hasSuffix() method checks whether the string ends with the specified string or not.
            if item.hasSuffix("@2x.png"){
                flags.append(item)
            }
        }
        
        flags.sort()
       
    }
    // We take number of rows in table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
        
    }
    
    //We create a cell for each table view row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country",for: indexPath)
        
        let countryName = flags[indexPath.row].split(separator: "@")
        
        // set the text from the data model
        cell.textLabel?.text = String(countryName[0]).uppercased()
        
        return cell
    }
    
    // method to run when table view cell is tapped
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
            vc.selectedCountry = flags[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    //summary
    //The view controller adopts the UITableViewDelegate and UITableViewDataSource protocols.
    //The numberOfRowsInSection method determines how many rows there will be in the table view.
    //The cellForRowAtIndexPath method sets up each row.
    //The didSelectRowAtIndexPath method is called every time a row is tapped.


}

