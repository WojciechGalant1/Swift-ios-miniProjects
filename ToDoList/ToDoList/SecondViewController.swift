//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Student Informatyki on 10/04/2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var firstView: FirstViewController = FirstViewController()

    
    @IBOutlet weak var itemToAdd: UITextField!
    
    @IBAction func addNewItem(_ sender: Any) {
        firstView.tasksList.append(itemToAdd.text!)
        itemToAdd.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

}
