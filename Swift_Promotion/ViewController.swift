//
//  ViewController.swift
//  Swift_Promotion
//
//  Created by Po wei Lin on 2018/10/15.
//

import UIKit

class ViewController: UIViewController {
    var ResultLabel:UILabel!
    var totalNum:Double = 0
    var firstNum:Double = 0
    var secondNum:Double = 0
    var stillTyping = false
    var operation = ""
    var input: Double{
        get{
            return Double(ResultLabel.text!)!
        }
        set{
            ResultLabel.text = "\(newValue)"
            stillTyping = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fullScreenSize = UIScreen.main.bounds.size
        let Number_Button_langh = (fullScreenSize.width - 50)/4
        
        
        
        ResultLabel = UILabel(frame: CGRect(x: 0, y: 64, width: fullScreenSize.width * 0.8, height: 70))
        ResultLabel.center = CGPoint(x: self.view.center.x, y: (fullScreenSize.height - 40 - 4*Number_Button_langh)/2)
        ResultLabel.text = "Result"
        ResultLabel.layer.borderWidth = 1
        ResultLabel.layer.borderColor = UIColor.black.cgColor
        ResultLabel.textAlignment = NSTextAlignment.right
        self.view.addSubview(ResultLabel)
        
        let Number_one_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_one_Button .setTitle("1", for: .normal)
        Number_one_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_one_Button.layer.borderColor = UIColor.blue.cgColor
        Number_one_Button.layer.borderWidth = 1
        Number_one_Button.layer.cornerRadius = Number_one_Button.frame.width/2
        Number_one_Button.center = CGPoint(x: 10 + Number_Button_langh/2, y: fullScreenSize.height - 40 - 3.5*Number_Button_langh)
        Number_one_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_one_Button)
        
        let Number_two_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_two_Button .setTitle("2", for: .normal)
        Number_two_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_two_Button.layer.borderColor = UIColor.blue.cgColor
        Number_two_Button.layer.borderWidth = 1
        Number_two_Button.layer.cornerRadius = Number_two_Button.frame.width/2
        Number_two_Button.center = CGPoint(x: Number_one_Button.center.x + 10 + Number_Button_langh, y: fullScreenSize.height - 40 - 3.5*Number_Button_langh)
        Number_two_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_two_Button)
        
        let Number_three_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_three_Button .setTitle("3", for: .normal)
        Number_three_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_three_Button.layer.borderColor = UIColor.blue.cgColor
        Number_three_Button.layer.borderWidth = 1
        Number_three_Button.layer.cornerRadius = Number_three_Button.frame.width/2
        Number_three_Button.center = CGPoint(x: Number_two_Button.center.x + 10 + Number_Button_langh, y: fullScreenSize.height - 40 - 3.5*Number_Button_langh)
        Number_three_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_three_Button)
        
        let Number_four_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_four_Button .setTitle("4", for: .normal)
        Number_four_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_four_Button.layer.borderColor = UIColor.blue.cgColor
        Number_four_Button.layer.borderWidth = 1
        Number_four_Button.layer.cornerRadius = Number_four_Button.frame.width/2
        Number_four_Button.center = CGPoint(x: Number_one_Button.center.x, y: Number_one_Button.center.y + Number_Button_langh + 10)
        Number_four_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_four_Button)
        
        
        let Number_five_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_five_Button .setTitle("5", for: .normal)
        Number_five_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_five_Button.layer.borderColor = UIColor.blue.cgColor
        Number_five_Button.layer.borderWidth = 1
        Number_five_Button.layer.cornerRadius = Number_five_Button.frame.width/2
        Number_five_Button.center = CGPoint(x: Number_two_Button.center.x, y: Number_one_Button.center.y + Number_Button_langh + 10)
        Number_five_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_five_Button)
        
        let Number_six_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_six_Button .setTitle("6", for: .normal)
        Number_six_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_six_Button.layer.borderColor = UIColor.blue.cgColor
        Number_six_Button.layer.borderWidth = 1
        Number_six_Button.layer.cornerRadius = Number_six_Button.frame.width/2
        Number_six_Button.center = CGPoint(x: Number_three_Button.center.x, y: Number_one_Button.center.y + Number_Button_langh + 10)
        Number_six_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_six_Button)
        
        let Number_seven_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_seven_Button .setTitle("7", for: .normal)
        Number_seven_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_seven_Button.layer.borderColor = UIColor.blue.cgColor
        Number_seven_Button.layer.borderWidth = 1
        Number_seven_Button.layer.cornerRadius = Number_seven_Button.frame.width/2
        Number_seven_Button.center = CGPoint(x: Number_one_Button.center.x, y: Number_four_Button.center.y + Number_Button_langh + 10)
        Number_seven_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_seven_Button)
        
        let Number_eight_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_eight_Button .setTitle("8", for: .normal)
        Number_eight_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_eight_Button.layer.borderColor = UIColor.blue.cgColor
        Number_eight_Button.layer.borderWidth = 1
        Number_eight_Button.layer.cornerRadius = Number_eight_Button.frame.width/2
        Number_eight_Button.center = CGPoint(x: Number_two_Button.center.x, y: Number_four_Button.center.y + Number_Button_langh + 10)
        Number_eight_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_eight_Button)
        
        let Number_nine_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_nine_Button .setTitle("9", for: .normal)
        Number_nine_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_nine_Button.layer.borderColor = UIColor.blue.cgColor
        Number_nine_Button.layer.borderWidth = 1
        Number_nine_Button.layer.cornerRadius = Number_nine_Button.frame.width/2
        Number_nine_Button.center = CGPoint(x: Number_three_Button.center.x, y: Number_four_Button.center.y + Number_Button_langh + 10)
        Number_nine_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_nine_Button)
        
        let Number_AC_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_AC_Button .setTitle("AC", for: .normal)
        Number_AC_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_AC_Button.layer.borderColor = UIColor.blue.cgColor
        Number_AC_Button.layer.borderWidth = 1
        Number_AC_Button.layer.cornerRadius = Number_AC_Button.frame.width/2
        Number_AC_Button.center = CGPoint(x: Number_one_Button.center.x, y: Number_seven_Button.center.y + Number_Button_langh + 10)
        Number_AC_Button.addTarget(self, action: #selector(ViewController.clearButtonPressed(_:)), for:.touchUpInside)
        self.view.addSubview(Number_AC_Button)
        
        let Number_zero_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_zero_Button .setTitle("0", for: .normal)
        Number_zero_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_zero_Button.layer.borderColor = UIColor.blue.cgColor
        Number_zero_Button.layer.borderWidth = 1
        Number_zero_Button.layer.cornerRadius = Number_zero_Button.frame.width/2
        Number_zero_Button.center = CGPoint(x: Number_two_Button.center.x, y: Number_seven_Button.center.y + Number_Button_langh + 10)
        Number_zero_Button.addTarget(self, action: #selector(ViewController.PressNumberButton), for:.touchUpInside)
        self.view.addSubview(Number_zero_Button)
        
        let Number_point_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_point_Button .setTitle("=", for: .normal)
        Number_point_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_point_Button.layer.borderColor = UIColor.blue.cgColor
        Number_point_Button.layer.borderWidth = 1
        Number_point_Button.layer.cornerRadius = Number_point_Button.frame.width/2
        Number_point_Button.center = CGPoint(x: Number_three_Button.center.x, y: Number_seven_Button.center.y + Number_Button_langh + 10)
        Number_point_Button.addTarget(self, action: #selector(ViewController.equalityButton(_:)), for:.touchUpInside)
        self.view.addSubview(Number_point_Button)
        
        let Number_Add_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_Add_Button .setTitle("+", for: .normal)
        Number_Add_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_Add_Button.layer.borderColor = UIColor.blue.cgColor
        Number_Add_Button.layer.borderWidth = 1
        Number_Add_Button.layer.cornerRadius = Number_Add_Button.frame.width/2
        Number_Add_Button.center = CGPoint(x: Number_three_Button.center.x + 10 + Number_Button_langh, y: Number_one_Button.center.y)
        Number_Add_Button.backgroundColor = UIColor.orange
        Number_Add_Button.addTarget(self, action: #selector(ViewController.operationButtonPressed(_:)), for:.touchUpInside)
        self.view.addSubview(Number_Add_Button)
        
        let Number_Minus_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_Minus_Button .setTitle("-", for: .normal)
        Number_Minus_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_Minus_Button.layer.borderColor = UIColor.blue.cgColor
        Number_Minus_Button.layer.borderWidth = 1
        Number_Minus_Button.layer.cornerRadius = Number_point_Button.frame.width/2
        Number_Minus_Button.center = CGPoint(x: Number_Add_Button.center.x, y: Number_Add_Button.center.y + Number_Button_langh + 10)
        Number_Minus_Button.backgroundColor = UIColor.orange
        Number_Minus_Button.addTarget(self, action: #selector(ViewController.operationButtonPressed(_:)), for:.touchUpInside)
        self.view.addSubview(Number_Minus_Button)
        
        let Number_Mount_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_Mount_Button .setTitle("×", for: .normal)
        Number_Mount_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_Mount_Button.layer.borderColor = UIColor.blue.cgColor
        Number_Mount_Button.layer.borderWidth = 1
        Number_Mount_Button.layer.cornerRadius = Number_Mount_Button.frame.width/2
        Number_Mount_Button.center = CGPoint(x: Number_Add_Button.center.x, y: Number_Minus_Button.center.y + Number_Button_langh + 10)
        Number_Mount_Button.backgroundColor = UIColor.orange
        Number_Mount_Button.addTarget(self, action: #selector(ViewController.operationButtonPressed(_:)), for:.touchUpInside)
        self.view.addSubview(Number_Mount_Button)
        
        let Number_Divided_Button = UIButton(frame: CGRect(x: 0, y: 0, width: Number_Button_langh, height: Number_Button_langh))
        Number_Divided_Button .setTitle("÷", for: .normal)
        Number_Divided_Button .setTitleColor(UIColor.blue, for: .normal)
        Number_Divided_Button.layer.borderColor = UIColor.blue.cgColor
        Number_Divided_Button.layer.borderWidth = 1
        Number_Divided_Button.layer.cornerRadius = Number_Divided_Button.frame.width/2
        Number_Divided_Button.center = CGPoint(x: Number_Add_Button.center.x, y: Number_Mount_Button.center.y + Number_Button_langh + 10)
        Number_Divided_Button.backgroundColor = UIColor.orange
        Number_Divided_Button.addTarget(self, action: #selector(ViewController.operationButtonPressed(_:)), for:.touchUpInside)
        self.view.addSubview(Number_Divided_Button)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func PressNumberButton(_ sender:UIButton){
        let number = sender.currentTitle!
        
        if stillTyping {
            // 如果是在還沒開始輸入的狀態，就開始輸入數字並放入resultLabel.text
            if ResultLabel.text!.characters.count < 16 {
                ResultLabel.text = ResultLabel.text! + number
            }
            
        } else {
            if number != "0"{
                ResultLabel.text = number
                stillTyping = true
            } else {
                ResultLabel.text = "0"
                stillTyping = false
            }
        }
    }
    
    // 按下某個運算符號
    @objc func operationButtonPressed(_ sender: UIButton) {
        operation = sender.currentTitle!
        stillTyping = false
        firstNum = input
    }
    
    // 取得兩個數字
    func getTwoInputs (operand1: Double, operand2: Double) -> Double{
        switch operation {
        case "+":
            totalNum = operand1 + operand2
        case "-":
            totalNum = operand1 - operand2
        case "×":
            totalNum = operand1 * operand2
        case "÷":
            totalNum = operand1 / operand2
        default:
            break
        }
        return totalNum
    }
    
    // 按下等於
    @objc func equalityButton(_ sender: UIButton) {
        secondNum = input
        ResultLabel.text = "\(getTwoInputs(operand1: firstNum, operand2: secondNum))"
    }
    
    // 按下AC按鈕
    @objc func clearButtonPressed(_ sender: Any) {
        ResultLabel.text = ""
    }
}

