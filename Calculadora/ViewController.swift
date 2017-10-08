//
//  ViewController.swift
//  Calculadora
//
//  Created by CETYS on 26/09/17.
//  Copyright © 2017 CETYS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pantalla: UILabel!
    
    @IBOutlet weak var miniPantalla: UILabel!
    var elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero : Bool = false
    
    var operando1 : Double = 0
    var operando2 : Double = 0
    var operacion : String = ""
    var ans : String = ""
    
    @IBAction func trigonometriaBtn(_ sender: UIButton) {
        var result : Double = 0
        if (operacion == "Cos(X)"){
            result = cos(operando1)
        } else if (operacion == "Sin(X)"){
            result = sin(operando1)
        }else {
            result = tan(operando1)
        }
        pantalla.text! = String(format:"%g", result)
        
    }
    @IBAction func copiaNumeroAnterior(_ sender: UIButton) {
        pantalla.text = ans
        
    }
    @IBAction func borrarTodo(_ sender: UIButton) {
        pantalla.text! = "0"
        miniPantalla.text! = ""
        elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero = false
    }
    @IBAction func enterPulsado() {
        let numero : NSString = pantalla.text! as NSString
        operando2 = numero.doubleValue
        let resultado = realizaOperacion()
        miniPantalla.text! = miniPantalla.text! + String(format: "%g",operando2)
        pantalla.text = String(format:"%g",resultado)
        ans = pantalla.text!
    }
    
    @IBAction func operacionPulsada(_ sender: UIButton) {
        //guardar operando1
        let numero : NSString = pantalla.text! as NSString
        operando1 = numero.doubleValue
        //guardar operacion pulsada
        operacion = sender.currentTitle!
        miniPantalla.text = pantalla.text! + operacion
        //ponemos cero al ulsar el operador
        pantalla.text = "0"
        elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero = false
        
        
    }
    @IBAction func numeroPulsado(_ sender: UIButton) {
        let digito : String! = sender.currentTitle
        
        if elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero
        {
            pantalla.text = pantalla.text! + digito
        }
        else
        {
            pantalla.text = digito
            elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero = true
        }
        
        print(digito)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func realizaOperacion() -> Double{
        var resultado : Double = 0
        //codigo para la suma
        if operacion == "+"{
            resultado = operando1 + operando2
        }else if operacion == "-"{
            resultado = operando1 - operando2
        }else if operacion == "/"{
            resultado = operando1 / operando2
        }else if operacion == "*"{
            resultado = operando1 * operando2
        }else if operacion == "^"{
            resultado = pow(operando1, operando2)
        }else {
            resultado = sqrt(operando2)
        }
        
        return resultado
    }
}

