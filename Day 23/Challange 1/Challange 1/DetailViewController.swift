//
//  DetailViewController.swift
//  Challange 1
//
//  Created by Gizem Coşkun on 16.08.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedCountry: String?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let imageToLoad = selectedCountry {
            imageView.image = UIImage(named: imageToLoad)
            let countryName = imageToLoad.split(separator: "@")
            title = String(countryName[0]).uppercased()
            
        }
       
    }
    
   
    @objc func shareTapped(){
        guard let image = imageView.image
        else{
            print("No image found")
            return
        }
        var shareItem: [Any] = [image]
        if let imageText = selectedCountry{
            shareItem.append(imageText)
        }
        
        let vc = UIActivityViewController(activityItems: shareItem, applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc,animated: true)
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
