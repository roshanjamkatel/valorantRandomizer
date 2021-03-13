//
//  DetailViewController.swift
//  valorantRandomizer
//
//  Created by Andy on 3/1/21.
//

import UIKit

class DetailViewController: UIViewController {
    var agent: Agent?
    
    @IBOutlet weak var titleLabel: UILabel!
    

    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if let a = agent{
            titleLabel.text = a.name
            descriptionLabel.text = a.longDescription
            
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
