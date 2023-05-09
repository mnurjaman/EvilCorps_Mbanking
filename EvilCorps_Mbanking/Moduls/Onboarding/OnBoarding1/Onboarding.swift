//
//  Onboarding.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 03/01/23.
//

import Foundation
import UIKit

class Onboarding: UIViewController{
    
    @IBOutlet var viewbg: UIView!
    @IBOutlet weak var btnSkip: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
     super.viewDidLoad()

        self.setbackground()
        
        btnNext.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        btnSkip.addTarget(self, action: #selector(skippage), for: .touchUpInside)
        
        
        
        
    }
    func setbackground(){
        let backgroundImage = UIImage(named: "onboarding01")
        viewbg.layer.contents = backgroundImage?.cgImage
    }
    @objc func nextpage(){
        let Onboaring = Onboarding2()
        self.navigationController?.pushViewController(Onboaring, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func skippage(){
        let login = Login()
        self.navigationController?.pushViewController(login, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    
}

