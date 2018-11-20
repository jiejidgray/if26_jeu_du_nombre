//
//  JeuViewController.swift
//  ji_nombre
//
//  Created by 季婕 on 19/11/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit

class JeuViewController: UIViewController {

  
    @IBOutlet weak var borneInt: UILabel!
    @IBOutlet weak var borneSup: UILabel!
  
    @IBOutlet weak var testButton: UIButton!
    
    @IBOutlet weak var inputNumber: UITextField!
    var rejouer : Bool = false
    var nombreHasard : Int = 0
    var compteur : Int = 0
    var sup : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        borneInt.text! = String(0)
        borneSup.text! = String(sup)
        // Do any additional setup after loading the view.
        //bloquer l'interaction du bouton valider
        testButton.isEnabled = false
        // modifier input keyboard type
        inputNumber.keyboardType = UIKeyboardType.numberPad
        //chosir un nombre au hasard
        choisirNombreAuHasard()
    }
    
    func choisirNombreAuHasard(){
        self.nombreHasard = Int.random(in:0...self.sup)
    }
    
    @IBAction func entrerNum(_ sender: UITextField) {
        if ( self.inputNumber.text!.count != 0) {
            testButton.isEnabled = true
        } else {
            testButton.isEnabled = false
        }
    }
    
    @IBAction func testNombre(_ sender: UIButton) {
            let nombre = Int(inputNumber.text!)!
            if nombre < Int(borneInt.text!)! || nombre > Int(borneSup.text!)! {
                self.compteur += 1
            } else if nombre < self.nombreHasard {
                borneInt.text! = String(nombre)
                self.compteur += 1
            } else if nombre > self.nombreHasard {
                borneSup.text! = String(nombre)
                self.compteur += 1
            } else if nombre == self.nombreHasard{
                self.compteur += 1
            
                let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

                let lastViewController = storyboard.instantiateViewController(withIdentifier: "lastView") as! LastViewController
                self.present(lastViewController, animated:true, completion:nil)
            }
            
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destination: LastViewController = segue.destination as! LastViewController
        print(self.compteur)

        destination.valC = self.compteur
    }
}
