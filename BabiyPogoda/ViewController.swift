//
//  ViewController.swift
//  BabiyPogoda
//
//  Created by Сергей Бабий on 28.08.2020.
//  Copyright © 2020 Сергей Бабий. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameCity: UILabel!
    @IBOutlet weak var temperatura: UILabel!
    @IBOutlet weak var prognoz: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let parsing = Parser ()
        parsing.parsing(lat: 49.2328, lon: 28.481) { jcon in
            self.nameCity.text = jcon.city_name
            self.temperatura.text =  String(jcon.data[0].app_max_temp)
            self.prognoz.text = String(jcon.data[0].wind_spd)
            
        }
    }
}

