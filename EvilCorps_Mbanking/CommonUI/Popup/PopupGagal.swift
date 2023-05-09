//
//  PopupGagal.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 28/12/22.
//

import Foundation
import UIKit

class PopupGagal : ViewController {
    @IBOutlet weak var imgPopup: UIImageView!
    
    @IBOutlet weak var btnClose: UIButton!
    
    @IBOutlet weak var viewContent: UIView!
    
    
    
    @IBOutlet weak var lblDeskripsi: UILabel!
    
    @IBOutlet weak var btnPopup: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewContent.layer.cornerRadius = 15
        
    }
}
