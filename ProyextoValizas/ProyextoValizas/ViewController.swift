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
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func SOS(_ sender: Any) {
        contadorSOS.start(beginingValue: 3)
        contadorSOS.delegate = self
        
    }

    
    
    
    func timerDidEnd() {
        print("Tiempo!!!")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

