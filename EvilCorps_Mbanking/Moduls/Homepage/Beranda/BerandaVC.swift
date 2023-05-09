//
//  BerandaVC.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 13/01/23.
//

import Foundation
import UIKit

class BerandaVC: UIViewController{
    @IBOutlet var viewbg: UIView!
    @IBOutlet weak var bgAvatar: UIView!
    @IBOutlet weak var bgNotif: UIView!
    @IBOutlet weak var btnNotif: UIButton!
    
    @IBOutlet weak var viewTable: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var btnTransfer: UIButton!
    
    
    let data: [Transaksi] = [
        Transaksi(lblTransaksi1: "Top Up E-Wallet", lblTransaksi2: "Gopay - 08123123123", lblNominal: "Rp.14.000.000", imgTransaksi: "icon"),
        Transaksi(lblTransaksi1: "Transfer Masuk", lblTransaksi2: "BRI - 3453 3434 3435", lblNominal: "Rp.130.000.000", imgTransaksi: "icon1"),
        Transaksi(lblTransaksi1: "Pembelian", lblTransaksi2: "Telkomsel - 08123123123", lblNominal: "Rp.140.000.000", imgTransaksi: "icon2")
    ]
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setbg()
        btnNotif.addTarget(self, action: #selector(navNotification), for: .touchUpInside)
        let nib = UINib(nibName: "CellList", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellListItem")
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        
        
        
        //        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        //        backgroundImage.image = UIImage(named: "bg_image")
        //        backgroundImage.contentMode = UIViewContentMode.scaleAspectfill
        //        self.view.insertSubview(backgroundImage, at: 0)
        btnTransfer.addTarget(self, action: #selector(navTransfer), for: .touchUpInside)
        
        
        
        
    }
    func setbg(){
        let bgView = UIImage(named: "bgHome")
        let Avatar = UIImage(named: "bgAvatar")
        _ = UIImage(named: "bgCard")
        viewbg.layer.contents = bgView?.cgImage
        bgAvatar.layer.contents = Avatar?.cgImage
        //        bgAvatar.layer.contents = Avatar?.cgImage
        //        bgAvatar.contentMode = .scaleToFill
        //        imgAvatar.contentMode = .scaleToFill
        //        bgAvatar.backgroundColor = .red
        //        imgcard.contentMode = .scaleToFill
        bgNotif.layer.cornerRadius = 8
        bgAvatar.layer.cornerRadius = 16
        viewTable.layer.cornerRadius = 15
        
    }
    
    
    
    @objc func navNotification(){
        let notif = NotifikasiVC()
        self.navigationController?.pushViewController(notif, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @objc func navTransfer(){
        let transfer = TransferVC()
        self.navigationController?.pushViewController(transfer, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
}
    


extension BerandaVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
//        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Transaksi = data[indexPath.row]
        let CellList = tableView.dequeueReusableCell(withIdentifier: "CellListItem", for: indexPath) as! CellList
        CellList.imgTransaksi.image = UIImage(named: Transaksi.imgTransaksi)
        CellList.lblTransaksi1.text = Transaksi.lblTransaksi1
        CellList.lblTransaksi2.text = Transaksi.lblTransaksi2
        CellList.lblNominal.text = Transaksi.lblNominal
        return CellList
    }
    
    
    
}
struct Transaksi{
    let lblTransaksi1: String
    let lblTransaksi2: String
    let lblNominal: String
    let imgTransaksi: String
}

    
//    func setGradient(){
//        let backgroundImage = UIImage(named: "bgAvatar")
//        avatarbg.layer.contents = backgroundImage?.cgImage
//    }

//class CustomView: UIView {
//    let viewCard : UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        self.addSubview(viewCard)
//        // Set the frame
//
//        // Set the corner radius
//        viewCard.layer.cornerRadius = 16
//
//
//
////         Set the gradient
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = viewCard.bounds
//        gradientLayer.colors = [UIColor(red: 0.55, green: 0.43, blue: 1.0, alpha: 1.0).cgColor, UIColor(red: 0.1, green: 0.63, blue: 0.95, alpha: 0.82).cgColor]
//        gradientLayer.locations = [0.12, 0.72]
//        gradientLayer.endPoint = CGPoint(x: 0.25, y: 0.05)
//        gradientLayer.startPoint = CGPoint(x: 0.75, y: 0.5)
//        viewCard.layer.insertSublayer(gradientLayer, at: 0)
//
//        // Set the drop shadow
//        viewCard.layer.shadowColor = UIColor(red: 0.27, green: 0.34, blue: 0.58, alpha: 0.35).cgColor
//        viewCard.layer.shadowRadius = 10
//        viewCard.layer.shadowOpacity = 1
//        viewCard.layer.shadowOffset = CGSize(width: 1, height: 3)
//
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

