//
//  PomodoroViewController.swift
//  addNewTask
//
//  Created by Arnold Sidiprasetija on 08/04/22.
//

import UIKit

class PomodoroViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var timeRemaining: Int = 25
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Pomodoro"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
        }
        
    @IBAction func playTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(step), userInfo: nil, repeats: true)
    }
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        timeRemaining = 25
        label.text = "\(timeRemaining)"
    }
    
    @objc func step(){
        if timeRemaining > 0{
            timeRemaining -= 1
        }
        else{
            timer.invalidate()
            timeRemaining = 10
        }
        label.text = "\(timeRemaining)"
    }
    
}
