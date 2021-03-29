//
//  randomeAgentViewController.swift
//  valorantRandomizer
//
//  Created by Roshan Jamkatel on 3/12/21.
//

import UIKit
import MaterialComponents.MaterialButtons
import MaterialComponents
import MaterialComponents.MaterialContainerScheme
import MaterialComponents.MaterialTextFields_Theming
import Spring

class randomeAgentViewController: UIViewController {
    
    let buttonScheme = MDCContainerScheme()
    override func viewDidLoad() {
        super.viewDidLoad()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.applyContainedTheme(withScheme: buttonScheme)
        button.backgroundColor = ApplicationScheme.shared.colorScheme.primaryColor
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var agentName: UILabel!
    @IBOutlet weak var agentImage: UIImageView!
    @IBOutlet weak var button: MDCButton!
    @IBOutlet weak var image: SpringView!
    
    @IBAction func getRandomAgenet(_ sender: Any) {
        let agentRandom = savedAgents.sharedInstance.dictionary.values.randomElement()
        agentName.text = agentRandom!
        agentImage.image = UIImage(named: agentRandom!)
        image.animation = "pop"
        image.duration = 1.0
        image.animate()
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
