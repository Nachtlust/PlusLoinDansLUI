//
//  ProgController.swift
//  Plus loin dans l'UI
//
//  Created by Couvelard Mathieu on 30/07/2018.
//  Copyright © 2018 Couvelard Mathieu. All rights reserved.
//

import UIKit

class ProgController: UIViewController {

    var monPremierUIView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else { return }
        view.addSubview(monPremierUIView!)
        print(monPremierUIView?.frame)
        print(monPremierUIView?.bounds)
        
        let secondeVue = UIView(frame: monPremierUIView!.frame)
        secondeVue.center.y += 100
        view.addSubview(secondeVue)
        secondeVue.backgroundColor = UIColor.red
        
        let troisiemeVue = UIView(frame: monPremierUIView!.bounds)
        secondeVue.center.y += 200
        view.addSubview(troisiemeVue)
        troisiemeVue.backgroundColor = UIColor.brown
    }
}
