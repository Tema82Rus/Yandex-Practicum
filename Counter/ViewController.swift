//
//  ViewController.swift
//  Counter
//
//  Created by Artem Yaroshenko on 26.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    //связь между лейблом
    @IBOutlet weak var counterLabel: UILabel!
    
    //связь между кнопкой
    @IBOutlet weak var changeButton: UIButton!
    
    //нажатие на кнопку
    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
    }
    
    //переменная для счёта нажатий
    var count: Int = 0
    
    //view создано и готово к показу
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counterLabel.text = "Значение счётчика: \(count)"
    }


}

