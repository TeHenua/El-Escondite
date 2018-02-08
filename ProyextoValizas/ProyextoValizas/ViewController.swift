//
//  ViewController.swift
//  ProyextoValizas
//
//  Created by Carlos Hernández on 31/1/18.
//  Copyright © 2018 Carlos Hernández. All rights reserved.
//

import UIKit

import SRCountdownTimer

class ViewController: UIViewController, SRCountdownTimerDelegate {

    @IBOutlet weak var contadorSOS: SRCountdownTimer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contadorSOS.delegate = self
        
    }
    
    
    @IBAction func mantenerPulsado(_ sender: UIButton) {
        //este es el que cancela la accion
        contadorSOS.start(beginingValue: 3)
        contadorSOS.pause()

        
        
    }
    
    @IBAction func cancelarPulsado(_ sender: UIButton) {
        
        //este boton es el que inicia
         contadorSOS.start(beginingValue: 3)
        
    }
    
    
    
    func timerDidEnd() {
        
        //envia el aviso
        print("SOS!!!!")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

