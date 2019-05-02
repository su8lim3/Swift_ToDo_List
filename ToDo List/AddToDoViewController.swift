//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Rico Alderete on 4/30/19.
//  Copyright © 2019 Rico Alderete. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
    
            previousVC.toDos.append(toDo)
            previousVC.tableView.reloadData()
            
            navigationController?.popViewController(animated: true)
            
        }
    }
}
