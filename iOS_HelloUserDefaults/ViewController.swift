//
//  ViewController.swift
//  iOS_HelloUserDefaults
//
//  Created by 王麒翔 on 2023/7/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Save Info to UserDefaults // set
        UserDefaults.standard.set("Richy", forKey: "name")
    
        // Load Info to UserDefaults // get
        print(UserDefaults.standard.value(forKey: "name")) // Optional(Richy)
        
        // optional binding
        if let loadedName = UserDefaults.standard.value(forKey: "name") as? String {
            print(loadedName) // Richy
        }
        
        
        let fruitArray = ["apple","banana","mango"]
        UserDefaults.standard.set(fruitArray, forKey: "sweetFruit")
        // UserDefaults.standard.array(forKey: "sweetFruit")
        // UserDefaults.standard.stringArray(forKey: "sweetFruit")
        if let loadedFruit = UserDefaults.standard.value(forKey: "sweetFruit") as? [String] {
            print(loadedFruit[0])
        }
        
    }


}

