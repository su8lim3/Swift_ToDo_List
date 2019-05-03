//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Rico Alderete on 4/30/19.
//  Copyright © 2019 Rico Alderete. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previuosVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        /*
         let toDo = ToDo()
         
         if let titleText = titleTextField.text {
         toDo.name = titleText
         toDo.important = importantSwitch.isOn
         
         previuosVC.toDos.append(toDo)
         previuosVC.tableView.reloadData()
         
         navigationController?.popViewController(animated: true)
         }
         */
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let toDo = ToDoCoreData(entity: ToDoCoreData.entity(), insertInto: context)
            
            if let titleText = titleTextField.text {
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
            }
            
            try? context.save()
            
            navigationController?.popViewController(animated: true)
        }
        
        
    }
    
}
