//
//  ViewController.swift
//  FunFacts
//
//  Created by Muhammed Khalid on 5/25/17.
//  Copyright © 2017 Muhammed Khalid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var newFactButton: UIButton!
    
    let factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionButton() {
        textLabel.text = factProvider.randomFact()
        let rColor = backgroundColorProvider().randomColor()
        view.backgroundColor = rColor
        newFactButton.tintColor = rColor
    }

}

