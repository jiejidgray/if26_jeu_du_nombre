//
//  ViewController.swift
//  ji_nombre
//
//  Created by 季婕 on 19/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var status: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var jouerButton: UIView!
    
    var sup : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        status.selectedSegmentIndex = 0
        sup = 100
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch status.selectedSegmentIndex {
        case 0 :
            self.sup = 100
        case 1 :
            self.sup = 1000
        case 2 :
            self.sup = 10000
        default :
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let dest: JeuViewController = segue.destination as! JeuViewController
        dest.sup = self.sup
    }
    
}

