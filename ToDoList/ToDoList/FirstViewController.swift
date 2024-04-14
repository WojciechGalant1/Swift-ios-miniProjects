//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Student Informatyki on 10/04/2024.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tasksList: [String] = []
    
    @IBOutlet weak var toDoList: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasksList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                cell.textLabel?.text = tasksList[indexPath.row]
                return cell
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            toDoList.reloadData()
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        toDoList.delegate = self
        toDoList.dataSource = self
        
        let tasks = UserDefaults.standard.object(forKey: "tasksList") as? [String]
        
        print(tasks)

    }
    
    
    

    

}
