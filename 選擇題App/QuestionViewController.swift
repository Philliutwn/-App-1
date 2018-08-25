//
//  QuestionViewController.swift
//  選擇題App
//
//  Created by 劉鴻祥 on 2018/8/12.
//  Copyright © 2018年 劉鴻祥. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var index: Int = 0
    var score: Int = 0
    var tested: Bool = false
    
    @IBOutlet weak var qnumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreButton: UIButton!
    
    let qnas : [Qna] = [Qna(qnumber: 1, question: "世界最棒的星座?", option1: "處女座", option2: "雙子座", option3: "水瓶座", option4: "天枰座", answer:"水瓶座"),
                        Qna(qnumber: 2, question: "誰是拯救世界的英雄？", option1: "虎克船長", option2: "彼得潘", option3: "魔鬼終結者", option4: "天然呆Baby", answer:"彼得潘"),
                        Qna(qnumber: 3, question: "彼得潘的另ㄧ個名字是？", option1: "大王子", option2: "二王子", option3: "三王子", option4: "小王子", answer: "小王子" ),
                        Qna(qnumber: 4, question: "彼得潘的初戀女友是？", option1: "Wendy", option2: "小紅帽", option3: "白雪公主", option4: "小龍女",answer: "Wendy"),
                        Qna(qnumber: 5, question: "彼得潘的身高是？", option1: "180公分", option2: "180.5公分", option3: "190公分", option4: "200公分", answer: "180.5公分"),
                        Qna(qnumber: 6, question: "與喜歡的人最佳距離是？", option1: "1公尺", option2: "10公分", option3: "1公分", option4: "1公釐", answer:"1公分"),
                        Qna(qnumber: 7, question: "Option的型別宣告要加？", option1: "冒號", option2: "問號", option3: "乘號", option4: "除號", answer:"問號"),
                        Qna(qnumber: 8, question: "不是Swift發明型別的方法？", option1: "class", option2: "struct", option3: "enum", option4: "array", answer: "array"),
                        Qna(qnumber: 9, question: "Swift型別第一個字母應？", option1: "大小寫不拘", option2: "小寫", option3: "大寫", option4: "以上皆非", answer: "大寫"),
                        Qna(qnumber: 10, question: "struct可以繼承嗎？", option1: "可以", option2: "不可以", option3: "看情形", option4: "以上皆非", answer: "不可以")]
    
    func showQuestion (number: Int) {
        qnumberLabel.text = String (qnas [number].qnumber) + " / " + String (qnas.count)
        questionLabel.text = qnas [number].question
        option1Button.setTitle(qnas [number].option1, for:UIControl.State.normal)
        option2Button.setTitle(qnas [number].option2, for:UIControl.State.normal)
        option3Button.setTitle(qnas [number].option3, for:UIControl.State.normal)
        option4Button.setTitle(qnas [number].option4, for:UIControl.State.normal)
        resultLabel.text = ""
        scoreLabel.text = String (score) + " 分"
    }
    
    func gotScore () {
        if tested == false {
            score += 10
            index += 1
        }
        
        if index > qnas.count-1 {
            index = qnas.count-1
            tested =  true
            scoreButton.isEnabled = true
            scoreButton.isHidden = false
        }
        showQuestion(number: index)
        scoreLabel.text = String (score) + " 分"
        
    }
   
    func noScore(){
        index += 1
        if index > qnas.count-1 {
            index = qnas.count-1
            scoreButton.isEnabled = true
            scoreButton.isHidden = false
        }
        showQuestion(number: index)
        scoreLabel.text = String (score) + " 分"
    }
   
    @IBAction func option1ButtonPressed(_ sender: Any) {
        
    
        if option1Button.titleLabel!.text! == qnas[index].answer {
            gotScore()
        } else {
            noScore()
        }
    }
    
    @IBAction func option2ButtonPressed(_ sender: Any) {

        if option2Button.titleLabel!.text! == qnas[index].answer {
            gotScore()

        } else {
            noScore()
        }
    }
    
    @IBAction func option3ButtonPressed(_ sender: Any) {
        if option3Button.titleLabel!.text! == qnas[index].answer {
            gotScore()
        } else {
            noScore()
        }
    }
    
    
    @IBAction func option4ButtonPressed(_ sender: Any) {
        if option4Button.titleLabel!.text! == qnas[index].answer {
            gotScore()
        } else {
            noScore()
    }
}
    
    
    @IBAction func scoreButtonPressed(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        index = 0
        tested = false
        showQuestion (number: index)
        scoreButton.isEnabled = false
        scoreButton.isHidden = true
        // Do any additional setup after loading the view.
        //print("\(self) \(#function)")
        
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //print(finalScore)
        if let controller = segue.destination as? ScoreViewController {
            controller.finalScore = scoreLabel.text!
        }
        
    }
    
    
    @IBAction func unwindToQuestionView(segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.source as? ScoreViewController {
            index = controller.index
            score = Int (controller.initialScore)!
            scoreButton.isEnabled = controller.enabled
            scoreButton.isHidden = controller.hidden
            tested = controller.tested
            showQuestion(number: index)

        }
    
    }
    
   /*
    override func viewWillAppear( _ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(self) \(#function) ")
    }
    override func viewDidAppear( _ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(self) \(#function) ")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("\(self) \(#function) ")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(self) \(#function) ")
    }
 */
    
}
