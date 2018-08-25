//
//  ScoreViewController.swift
//  選擇題App
//
//  Created by 劉鴻祥 on 2018/8/24.
//  Copyright © 2018年 劉鴻祥. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var finalScore: String = ""
    var initialScore: String = ""
    var index: Int = 0
    var enabled: Bool = false
    var hidden: Bool = true
    var tested: Bool = false
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScoreLabel.text = finalScore

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        initialScore = "0"
        index = 0
        enabled = false
        hidden = true
        tested = false
    }


}
