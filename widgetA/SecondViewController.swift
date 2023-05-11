//
//  SecondViewController.swift
//  widgetA
//
//  Created by Shamsa Mohamed on 5/5/23.
//

import UIKit

var allMeds: [MedsEnter] = []
var selectedMeds = MedsEnter(medsName: "", when: "", repeatWhen: "")

class SecondViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
   
    @IBOutlet weak var tableView: UITableView!
    
    var aa = ["1","2","3"]
    var allDays: [MedsEnter] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allMeds.append(testOne)


    }
    
    override func viewDidAppear(_ animated: Bool) {
//        animated = true
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMeds.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier:"cellId", for: indexPath)
        cell.textLabel?.text = allMeds[indexPath.row].medsName
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // we are going to take whatever you selected and assign it to a variable, intresting so yes.
        selectedMeds = allMeds[indexPath.row]
    }
  
    @IBAction func newButton(_ sender: UIBarButtonItem) {
        let newDay = MedsEnter(medsName: "", when: "", repeatWhen: "")
          allDays.append(newDay)
    }
    
    
}
