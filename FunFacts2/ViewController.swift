//
//  ViewController.swift
//  FunFacts2
//
//  Created by Samuel Calvert on 4/9/15.
//  Copyright (c) 2015 SprayMonet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let factBook = FactBook()
    let colorWheel = ColorWheel()
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }
}


