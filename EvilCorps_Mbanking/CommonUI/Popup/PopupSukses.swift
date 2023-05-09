//
//  PopupBerhasil.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 28/12/22.
//

import Foundation
import UIKit

class PopupSukses : ViewController {
    
    @IBOutlet weak var viewContent: UIView!
    
    @IBOutlet weak var lblDeskripsi: UILabel!
    
    @IBOutlet weak var lblHeader: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewContent.layer.cornerRadius = 15
        
    }
}
