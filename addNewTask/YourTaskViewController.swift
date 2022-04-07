//
//  YourTaskViewController.swift
//  addNewTask
//
//  Created by Arnold Sidiprasetija on 05/04/22.
//

import UIKit


class YourTaskViewController: UIViewController {
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        
    }

    @IBOutlet var tableView: UITableView!
    
    let task = [
        "Task 1",
        "Task 2",
        "Task 3",
        "Task 4",
        "Task 5",
        "Task 6",
        "Task 7",
        "Task 8",
        "Task 9",
        "Task 10",
        ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "EditTask" {
          // perform custom segue operation.
       }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Your Task"
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension YourTaskViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
}

extension YourTaskViewController: UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = task[indexPath.row]
        
        return cell
        
    }
}
