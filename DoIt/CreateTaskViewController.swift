//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Rathod, Kinjal on 11/24/17.
//  Copyright © 2017 Rathod, Kinjal. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!

    @IBOutlet weak var importantSwitch: UISwitch!
    
    //var previousVC = TasksViewController()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: AnyObject) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //previousVC.tasks.append(task)
        //previousVC.tableView.reloadData()
        //Pop back
    navigationController!.popViewController(animated: true)
    }

}
