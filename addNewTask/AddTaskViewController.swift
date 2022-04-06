//
//  AddTaskViewController.swift
//  addNewTask
//
//  Created by Arnold Sidiprasetija on 05/04/22.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    @IBAction func tapToYourTask(unwindSegue: UIStoryboardSegue){
        performSegue(withIdentifier: "YourTask", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "New Task"
        // Do any additional setup after loading the view.
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
