//
//  ventanaProgramadorViewController.swift
//  Calculadora
//
//  Created by CETYS on 10/10/17.
//  Copyright © 2017 CETYS. All rights reserved.
//

import UIKit

class ventanaProgramadorViewController: UIViewController {

    @IBOutlet weak var pantalla2: UILabel!
    
   
    var elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero2 : Bool = false
    
    var operando1 : Int = 0
    var operacion : String = ""
    
    
   /* @IBAction func enterPulsado(_ sender: UIButton) {
        operacion = sender.currentTitle!
        let numero : NSString = pantalla2.text! as NSString
        operando1 = Int(numero.intValue)
        let resultado = realizaOperacion()
        pantalla2.text = String(format:"%g",resultado)
    }*/
    
    
    
    @IBAction func binario() {
        let numero = pantalla2.text!
        let numeroOk = Int(numero)
        operando1 = numeroOk!
        let str = String(operando1, radix:2)
        print(str)
        pantalla2.text! = str
    }
    
    @IBAction func hexa() {
        let numero = pantalla2.text!
        let numeroOk = Int(numero)
        operando1 = numeroOk!
        let str = String(operando1, radix:16)
        print(str)
        pantalla2.text! = str
    }
    
    @IBAction func octal() {
        let numero = pantalla2.text!
        let numeroOk = Int(numero)
        operando1 = numeroOk!
        let str = String(operando1, radix: 8)
        print(str)
        pantalla2.text! = str
    }
    
    @IBAction func numeroPulsado2(_ sender: UIButton) {
        let digito : String! = sender.currentTitle
        
        if elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero2
        {
            
            pantalla2.text = pantalla2.text! + digito
        }
        else
        {
            pantalla2.text = digito
            elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero2 = true
        }
        
        print(digito)
    }
    
    @IBAction func borrarTodo(_ sender: UIButton) {
        pantalla2.text! = "0"
        elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero2 = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
