//
//  HomeVC.swift
//  Parse Fosquare
//
//  Created by Eren Korkmaz on 14.08.2023.
//

import UIKit

class HomeVC: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addClicked))


    }
    @objc func addClicked() {
        performSegue(withIdentifier: "toAddVC", sender: nil)
        
    }
    func hataMesajiGoster(title : String , mesage : String){
            let alert = UIAlertController(title: title, message: mesage, preferredStyle: UIAlertController.Style.alert)
            let okButon = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButon)
            self.present(alert, animated: true)
            
        }

    
    

}
