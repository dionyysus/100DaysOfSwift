//
//  ViewController.swift
//  test
//
//  Created by Gizem Coşkun on 19.04.2023.
//

import UIKit

class ViewController: UIViewController {

    //1. adım table  view celli bağladım
    let gizemCellId = "GizemTableViewCell"
    
    //2. adım view controllere eklediğim table view i bağladım
    @IBOutlet var gizemTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //3. adım
        gizemTableView.delegate = self
        gizemTableView.dataSource = self
        
        //4. adım
        gizemTableView.register(UINib.init(nibName: gizemCellId, bundle: nil), forCellReuseIdentifier: gizemCellId)
        gizemTableView.rowHeight = UITableView.automaticDimension
        gizemTableView.separatorColor = UIColor.clear
    }

}

//5. adımlar
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = gizemTableView.dequeueReusableCell(withIdentifier: gizemCellId, for: indexPath) as! GizemTableViewCell
        return cell
    }
    
    
}

