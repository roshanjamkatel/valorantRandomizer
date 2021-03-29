//
//  setAgentPreferenceViewController.swift
//  valorantRandomizer
//
//  Created by Roshan Jamkatel on 3/12/21.
//

import UIKit
import MaterialComponents.MaterialButtons
import MaterialComponents
import MaterialComponents.MaterialContainerScheme
import MaterialComponents.MaterialTextFields_Theming

class setAgentPreferenceViewController: UIViewController {

    let buttonScheme = MDCContainerScheme()
    @IBOutlet weak var agentsSelected: UILabel!
    @IBOutlet var agentButtons: [MDCButton]!
    @IBOutlet var controllerAgents: [MDCButton]!
    @IBOutlet var sentinelAgents: [MDCButton]!
    @IBOutlet var initiatorAgents: [MDCButton]!
    @IBOutlet var duelistAgents: [MDCButton]!
    

    @IBAction func resetAgents(_ sender: Any) {
        for button in agentButtons {
            changeColor(sender: button, action: "Append")
        }
        savedAgents.sharedInstance.reset()
        agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
    }
    
    @IBAction func selectControllers(_ sender: MDCButton) {
        for button in controllerAgents {
            queueAgent(button)
            
        }
        agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
    }
    
    @IBAction func selectSentinels(_ sender: MDCButton) {
        for button in sentinelAgents {
            queueAgent(button)
        }
        agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
    }
    
    @IBAction func selectInitiators(_ sender: MDCButton) {
        for button in initiatorAgents {
            queueAgent(button)
        }
        agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
    }
    
    @IBAction func selectDuelists(_ sender: MDCButton) {
        for button in duelistAgents {
            queueAgent(button)
        }
        agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
        for button in agentButtons {
            button.translatesAutoresizingMaskIntoConstraints = false
            button.applyContainedTheme(withScheme: buttonScheme)
            button.backgroundColor = ApplicationScheme.shared.colorScheme.primaryColor
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func queueAgent(_ sender: MDCButton) {
        if let agentName = sender.currentTitle{
            
            let key = findKeyForValue(value: agentName,dictionary:  savedAgents.sharedInstance.dictionary)
            
            if (key == nil) {
                savedAgents.sharedInstance.dictionary[savedAgents.sharedInstance.dictionary.count+1] = agentName
                agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
                changeColor(sender: sender, action: "Append")
            } else {
                savedAgents.sharedInstance.dictionary.removeValue(forKey: key!)
                agentsSelected.text = String(savedAgents.sharedInstance.dictionary.count)
                changeColor(sender: sender, action: "Delete")
            }
            
            
        }

    }
    
    func changeColor(sender: MDCButton, action: String){
        if (action == "Delete"){
            sender.backgroundColor = ApplicationScheme.shared.colorScheme.secondaryColor
        } else {
            sender.backgroundColor = ApplicationScheme.shared.colorScheme.primaryColor
        }
    }
    
    func findKeyForValue(value: String, dictionary: [Int: String]) ->Int?
    {
        for (key, name) in dictionary
        {
            if (name == value)
            {
                return key
            }
        }

        return nil
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
