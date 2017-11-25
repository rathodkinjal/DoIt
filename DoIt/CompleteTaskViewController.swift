//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Rathod, Kinjal on 11/24/17.
//  Copyright © 2017 Rathod, Kinjal. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task : Task? = nil
    //var previousVC = TasksViewController()

    
    @IBAction func completeTapped(_ sender: Any) {
        //previousVC.tasks.remove(at: //previousVC.selectedIndex)
        //previousVC.tableView.reloadData()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
        // Do any additional setup after loading the view.
    }
}
