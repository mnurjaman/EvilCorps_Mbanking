//
//  NotifikasiVC.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 19/01/23.
//

import Foundation
import UIKit


class NotifikasiVC: UIViewController{
    
    
    @IBOutlet weak var btnBack: UIButton!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    

    let data1: [Notifikasi] = [
        Notifikasi(imgNotif: "imgnotif1", lbl1: "Virtual Account Payment", lbl2: "Anda berhasil melakukan transaksi di Tokopedia", lbl3: "10 Des 2022 - 14:52"),
        Notifikasi(imgNotif: "imgnotif2", lbl1: "Hati hati Modus Penipuan", lbl2: "Waspada jangan berikan OTP anda kepada orang", lbl3: "12 Des 2022 - 15:52"),
        Notifikasi(imgNotif: "imgnotif3", lbl1: "Diskon 20% di Shopee", lbl2: "Dapatkan diskon 20% di shopee melalui EvilCorps", lbl3: "15 Des 2022 - 04:52"),
        Notifikasi(imgNotif: "imgnotif4", lbl1: "Transaksi Mata Uang Asing", lbl2: "Dapatkan cashback setiap transaksi mata uang", lbl3: "20 Des 2022 - 10:52"),
        Notifikasi(imgNotif: "imgnotif5", lbl1: "Virtual Account Payment", lbl2: "Anda berhasil melakukan transaksi di Tokopedia", lbl3: "10 Des 2022 - 19:52"),
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        
        let nib = UINib(nibName: "CellNotif", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellNotifItem")
        tableView.dataSource = self
        tableView.delegate = self
        
        btnBack.addTarget(self, action: #selector(navHome), for: .touchUpInside)
        
        
        
        
        
        
        
    }
}
extension NotifikasiVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data1.count
//        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Notif = data1[indexPath.row]
        let CellNotif = tableView.dequeueReusableCell(withIdentifier: "CellNotifItem", for: indexPath) as! CellNotif
        CellNotif.imgNotif.image = UIImage(named: Notif.imgNotif)
        CellNotif.lbl1.text = Notif.lbl1
        CellNotif.lbl2.text = Notif.lbl2
        CellNotif.lbl3.text = Notif.lbl3
        return CellNotif
    }
    @objc func navHome(){
        let home = TabbarVC()
        self.navigationController?.pushViewController(home, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
}
    
    
struct Notifikasi{
    let imgNotif: String
    let lbl1: String
    let lbl2: String
    let lbl3: String

}
