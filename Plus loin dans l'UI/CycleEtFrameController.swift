//
//  CycleEtFrameController.swift
//  Plus loin dans l'UI
//
//  Created by Couvelard Mathieu on 27/07/2018.
//  Copyright © 2018 Couvelard Mathieu. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFrameEtBounds: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        print("Print -> \(vueFrameEtBounds.frame)")
        print("Print -> \(vueFrameEtBounds.bounds)")
        UIView.animate(withDuration: 2, animations: {
            self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 82)
        }) { (success) in
            print("Print -> \(self.vueFrameEtBounds.frame)")
            print("Print -> \(self.vueFrameEtBounds.bounds)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
