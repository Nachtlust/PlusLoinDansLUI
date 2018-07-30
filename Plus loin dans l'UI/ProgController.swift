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
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?
    var maPremiereIV: UIImageView?
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        // guard monPremierUIView != nil else { return }
        scroll.addSubview(monPremierUIView!)
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .center
        scroll.addSubview(monPremierLabel!)
        
        monPremierBouton = UIButton(frame: CGRect(x: view.frame.width / 2 - 75, y: (monPremierLabel?.frame.maxY)! + 220, width: 150, height: 40))
        monPremierBouton?.setTitle("Appuyez", for: UIControlState.normal)
        monPremierBouton?.tintColor = UIColor.white
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        scroll.addSubview(monPremierBouton!)
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        maPremiereIV = UIImageView(frame: CGRect(x: 30, y: view.frame.height / 2 - (largeur / 2), width: largeur, height: largeur))
        maPremiereIV?.image = UIImage(named: "codabee")
        maPremiereIV?.contentMode = .scaleAspectFill
        maPremiereIV?.clipsToBounds = true
        maPremiereIV?.layer.cornerRadius = maPremiereIV!.frame.width / 2
        maPremiereIV?.isUserInteractionEnabled = true
        maPremiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))
        scroll.addSubview(maPremiereIV!)
        
        //view.sendSubview(toBack: maPremiereIV!)
        scroll.bringSubview(toFront: monPremierBouton!)
        
        let couleurs: [UIColor] = [.red, .blue, .white, .black]
        var maximum: CGFloat = (maPremiereIV?.frame.maxY)!
        for couleur in couleurs {
            let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: 100, height: 100))
            vue.backgroundColor = couleur
            scroll.addSubview(vue)
            maximum = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width * 2, height: maximum + 100)
    }
    
    @objc func boutonAppuye() {
        print("Tu as bien appuyé")
    }
    
    @objc func imageAppuye(){
        print("Image touchée")
    }
}
