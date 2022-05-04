//
//  ViewController.swift
//  getJoke
//
//  Created by 2lup on 04.05.2022.
//

import UIKit

class ViewController: UIViewController {

    //var joke = Joke()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getJoke()
        
    }

    @IBAction func testButton(_ sender: UIButton) {
        self.testLabel.text = getJoke()
    }
    
    @IBOutlet weak var testLabel: UILabel!
    
    
}

