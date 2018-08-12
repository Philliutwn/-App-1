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
    
    var qnas : [Qna] = [Qna(qnumber: 1, question: "世界最棒的星座?", answer1: "處女座", answer2: "雙子座", answer3: "水瓶座", answer4: "天枰座"),
                        Qna(qnumber: 2, question: "誰是拯救世界的英雄？", answer1: "虎克船長", answer2: "彼得潘", answer3: "魔鬼終結者", answer4: "天然呆Baby"),
                        Qna(qnumber: 3, question: "彼得潘的另ㄧ個名字是？", answer1: "大王子", answer2: "二王子", answer3: "三王子", answer4: "小王子"),
                        Qna(qnumber: 4, question: "彼得潘的初戀女友是？", answer1: "Wendy", answer2: "小紅帽", answer3: "白雪公主", answer4: "小龍女"),
                        Qna(qnumber: 5, question: "彼得潘的身高是？", answer1: "180公分", answer2: "180.5公分", answer3: "190公分", answer4: "200公分"),
                        Qna(qnumber: 6, question: "與喜歡的人最佳距離是？", answer1: "1公尺", answer2: "10公分", answer3: "1公分", answer4: "1公釐"),
                        Qna(qnumber: 7, question: "Option的型別宣告要加？", answer1: "冒號", answer2: "問號", answer3: "乘號", answer4: "除號"),
                        Qna(qnumber: 8, question: "不是Swift發明型別的方法？", answer1: "class", answer2: "struct", answer3: "enum", answer4: "array"),
                        Qna(qnumber: 9, question: "Swift型別第一個字母應？", answer1: "大小寫不拘", answer2: "小寫", answer3: "大寫", answer4: "以上皆非"),
                        Qna(qnumber: 10, question: "struct可以繼承嗎？", answer1: "可以", answer2: "不可以", answer3: "看情形", answer4: "以上皆非")]
    
    func showQuestion (number: Int) {
        qnumberLabel.text = String (qnas [number].qnumber) + " / " + String (qnas.count)
        questionLabel.text = qnas [number].question
        answer1Button.setTitle(qnas [number].answer1, for:UIControl.State.normal)
        answer2Button.setTitle(qnas [number].answer2, for:UIControl.State.normal)
        answer3Button.setTitle(qnas [number].answer3, for:UIControl.State.normal)
        answer4Button.setTitle(qnas [number].answer4, for:UIControl.State.normal)
        resultLabel.text = ""
        scoreLabel.text = String (score) + " 分"
    }
    
    func gotScore () {
        if tested == false {
            score += 10
            scoreLabel.text = String (score) + " 分"
            tested = true
            nextButton.isEnabled = true
        } else {
            scoreLabel.text = String (score) + " 分"
        }
    }
    @IBOutlet weak var qnumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func answer1ButtonPressed(_ sender: Any) {
        switch index {
        case 0:
            resultLabel.text = "再試ㄧ次"
        case 1:
            resultLabel.text = "再試ㄧ次"
        case 2:
            resultLabel.text = "再試ㄧ次"
        case 3:
            resultLabel.text = "答對了！"
            gotScore()
        case 4:
            resultLabel.text = "再試ㄧ次"
        case 5:
            resultLabel.text = "再試ㄧ次"
        case 6:
            resultLabel.text = "再試ㄧ次"
        case 7:
            resultLabel.text = "再試ㄧ次"
        case 8:
            resultLabel.text = "再試ㄧ次"
        case 9:
            resultLabel.text = "再試ㄧ次"
        default:
            break
        }
        
    }
    
    @IBAction func answer2ButtonPressed(_ sender: Any) {
        switch index {
        case 0:
            resultLabel.text = "再試ㄧ次"
        case 1:
            resultLabel.text = "答對了！"
            gotScore()
        case 2:
            resultLabel.text = "再試ㄧ次"
        case 3:
            resultLabel.text = "再試ㄧ次"
        case 4:
            resultLabel.text = "答對了！"
            gotScore()
        case 5:
            resultLabel.text = "再試ㄧ次"
        case 6:
            resultLabel.text = "答對了！"
            gotScore()
        case 7:
            resultLabel.text = "再試ㄧ次"
        case 8:
            resultLabel.text = "再試ㄧ次"
        case 9:
            resultLabel.text = "答對了！"
            gotScore()
        default:
            break
        }
    }
    
    @IBAction func answer3ButtonPressed(_ sender: Any) {
        switch index {
        case 0:
            resultLabel.text = "答對了！"
            gotScore()
        case 1:
            resultLabel.text = "再試ㄧ次"
        case 2:
            resultLabel.text = "再試ㄧ次"
        case 3:
            resultLabel.text = "再試ㄧ次"
        case 4:
            resultLabel.text = "再試ㄧ次"
        case 5:
            resultLabel.text = "答對了！"
            gotScore()
        case 6:
            resultLabel.text = "再試ㄧ次"
        case 7:
            resultLabel.text = "再試ㄧ次"
        case 8:
            resultLabel.text = "答對了！"
            gotScore()
        case 9:
            resultLabel.text = "再試ㄧ次"
        default:
            break
        }
    }
    
    @IBAction func answer4ButtonPressed(_ sender: Any) {
        switch index {
        case 0:
            resultLabel.text = "再試ㄧ次"
        case 1:
            resultLabel.text = "再試ㄧ次"
        case 2:
            resultLabel.text = "答對了！"
            gotScore()
        case 3:
            resultLabel.text = "再試ㄧ次"
        case 4:
            resultLabel.text = "再試ㄧ次"
        case 5:
            resultLabel.text = "再試ㄧ次"
        case 6:
            resultLabel.text = "再試ㄧ次"
        case 7:
            resultLabel.text = "答對了！"
            gotScore()
        case 8:
            resultLabel.text = "再試ㄧ次"
        case 9:
            resultLabel.text = "再試ㄧ次"
        default:
            break
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        if index < 9 {
            index += 1
            tested = false
            showQuestion (number: index)
            nextButton.isEnabled = false
        } else {
            index = 0
            tested = false
            score = 0
            showQuestion (number: index)
            nextButton.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        index = 0
        tested = false
        showQuestion (number: index)
        nextButton.isEnabled = false
        
        
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
