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
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasSuffix("@2x.png"){
                flags.append(item)
            }
        }
        
        flags.sort()
       
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country",for: indexPath)
        let countryName = flags[indexPath.row].split(separator: "@")
        cell.textLabel?.text = String(countryName[0]).uppercased()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
            vc.selectedCountry = flags[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }


}

