//
//  randomStratViewController.swift
//  valorantRandomizer
//
//  Created by Roshan Jamkatel on 3/13/21.
//

import UIKit
import MaterialComponents.MaterialButtons
import MaterialComponents
import MaterialComponents.MaterialContainerScheme
import MaterialComponents.MaterialTextFields_Theming
import Spring

class randomStratViewController: UIViewController {
    
    let repository = Repository(apiClient: APIClient())
    let buttonScheme = MDCContainerScheme()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.applyContainedTheme(withScheme: buttonScheme)
        button.backgroundColor = ApplicationScheme.shared.colorScheme.primaryColor
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var randomStrat: UILabel!
    @IBOutlet weak var difficulty: UILabel!
    @IBOutlet weak var playingSide: UILabel!
    
    // Spring Animations
    @IBOutlet weak var difficultySide: SpringView!
    
    
    @IBOutlet weak var button: MDCButton!
    @IBAction func getStrat(_ sender: Any) {
        getRandomStrat()
        difficultySide.animation = "pop"
        difficultySide.duration = 1.0
        difficultySide.animate()
        
    }
    
    
    func getRandomStrat(){
        let randInt = Int.random(in:1..<400)
        savedLink.sharedInstance.endpoint = "https://api.diah.info/valorant/roulette.php?id=\(randInt)&format=json"

            self.repository.getStrats { (result) in
                        switch result {
                        case .success(let items):
                            
                            DispatchQueue.main.async {
                                self.randomStrat.text = items.description
                                self.difficulty.text = items.difficulty
                                self.playingSide.text = items.side
                            }
                        case .failure(let error):
                            print("\(self) retrive error on get strats: \(error)")
                        
            }
        }
    }
        
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
         
         var cid: String
         var description: String
         var scoring: String
         var difficulty: String
         var side: String
    */

}

