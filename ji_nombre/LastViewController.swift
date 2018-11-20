//
//  LastViewController.swift
//  ji_nombre
//
//  Created by 季婕 on 19/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    @IBOutlet weak var coupLabel: UILabel!
     var valC : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coupLabel.text! = String(valC)
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
