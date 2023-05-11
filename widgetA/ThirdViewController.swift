//
//  ThirdViewController.swift
//  widgetA
//
//  Created by Shamsa Mohamed on 5/5/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var medNameTF: UITextField!
    @IBOutlet weak var medWhenTF: UITextField!
    @IBOutlet weak var medRepeatTF: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
//        let newDay = JournalEntry(mainText: "\(textFeidl.text ?? "")", date: "\(dateFeild.text ?? "")", title: "\(titleFeild.text ?? "") ", mood: "")
//          allJournal.append(newDay)
        let newDay = MedsEnter(medsName: "\(medNameTF.text ?? "")", when: "\(medWhenTF.text ?? "")", repeatWhen: "\(medRepeatTF.text ?? "")")
        allMeds.append(newDay)

    }
    
   

}
