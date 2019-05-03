//
//  CompleteToDoViewController.swift
//  ToDo List
//
//  Created by Rico Alderete on 5/2/19.
//  Copyright © 2019 Rico Alderete. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previuosVC = ToDoTableViewController()
    var selectedToDo : ToDoCoreData?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo?.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let theToDo = selectedToDo {
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
        }
        
        /*
         var index = 0
         for toDo in previuosVC.toDos {
         if toDo.name == selectedToDo.name {
         previuosVC.toDos.remove(at: index)
         previuosVC.tableView.reloadData()
         navigationController?.popViewController(animated: true)
         break
         }
         index += 1
         }
         */
    }
    
}
