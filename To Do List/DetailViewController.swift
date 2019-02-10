//
//  DetailViewController.swift
//  To Do List
//
//  Created by Kim, Young-Tae on 2/10/19.
//  Copyright © 2019 David Kim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    
    @IBOutlet weak var toDoField: UITextField!
    var toDoItem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let toDoItem = toDoItem{
            toDoField.text = toDoItem
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UnWindFromSave"{
            toDoItem = toDoField.text
        }
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentedViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
