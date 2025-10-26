//
//  ViewController.swift
//  Counter
//
//  Created by Artem Yaroshenko on 26.10.2025.
//

import UIKit

class ViewController: UIViewController {
    //переменная для хранения счёта нажатий
    var count: Int = 0
    
    //переменная для хранения истории изменений
    var history: UITextView?
    
    //связь между текстовым полем "История изменений:"
    @IBOutlet weak var textHistory: UITextView!
    
    //связь между лейблом "Значение счётчика:"
    @IBOutlet weak var counterLabel: UILabel!
    
    //связь между кнопкой "+"
    @IBOutlet weak var buttonIncrement: UIButton!
    
    //связь между кнопкой "-"
    @IBOutlet weak var buttonDecrement: UIButton!
    
    //связь между кнопкой "Обнулить"
    @IBOutlet weak var buttonReset: UIButton!
    
    //связь между кнопкой посчитать
    @IBOutlet weak var changeButton: UIButton!
    
    //метод увеличить счёт
    @IBAction func buttonIncrementTap(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
        history = "значение изменено на +1"
        textHistory = history
    }
    
    //метод уменьшить счёт
    @IBAction func buttonDecrementTap(_ sender: Any) {
        if !(count == 0) {
            count -= 1
            counterLabel.text = "Значение счётчика: \(count)"
        } else { count = 0 }
    }
    
    //метод обнулить счёт
    @IBAction func buttonResetTap(_ sender: Any) {
        count = 0
        counterLabel.text = "Значение счётчика: \(count)"
    }
    
    //метод нажатие на кнопку
    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
    }
    
    //view создано и готово к показу
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counterLabel.text = "Значение счётчика: \(count)"
    }


}

