//
//  FourthViewController.swift
//  widgetA
//
//  Created by Shamsa Mohamed on 5/7/23.
//

import UIKit

class FourthViewController: UIViewController {
// PAST
    
    @IBOutlet weak var medNameLabel: UILabel!
    @IBOutlet weak var repeatLabel: UILabel!
    @IBOutlet weak var whenLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
whenClicked()
        // Do any additional setup after loading the view.
    }
    
    func whenClicked(){
        medNameLabel.text = ("\(selectedMeds.medsName)")
        repeatLabel.text = ("\(selectedMeds.when)")
        whenLabel.text = ("\(selectedMeds.repeatWhen)")
    }
   
/// strech next add a date picker and have a alarm clock sorta layout :P
}
