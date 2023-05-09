//
//  HistoryVC.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 13/01/23.
//

import Foundation
import UIKit

class HistoryVC: UIViewController{
    
    
    @IBOutlet weak var btnSemua: UIButton!
    @IBOutlet weak var btnMasuk: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnKeluar: UIButton!
    
    
    let data1: [Histori] = [
      Histori(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Gopay - 08123123123", lblDate: "11 Des, 2022 | 14:22", lblNominal: "Rp.14.000.000", imgTransaksi: "icon"),
      Histori(lblTransaksi: "Transfer", lblTransaksi1: "Ovo - 08123123123", lblDate: "01 Des, 2022 | 17:22", lblNominal: "Rp.111.000.000", imgTransaksi: "icon1"),
      Histori(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Dana - 08123123123", lblDate: "13 Des, 2022 | 11:22", lblNominal: "Rp.11.000.000", imgTransaksi: "icon2"),
      Histori(lblTransaksi: "Transfer", lblTransaksi1: "BRI - 08123123123", lblDate: "18 Des, 2022 | 12:22", lblNominal: "Rp.190.000.000", imgTransaksi: "icon3"),
      Histori(lblTransaksi: "Transfer", lblTransaksi1: "BNI - 08123123123", lblDate: "09 Des, 2022 | 00:22", lblNominal: "Rp.18.000.000", imgTransaksi: "icon4"),
      Histori(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Shopepay - 08123123123", lblDate: "19 Des, 2022 | 10:22", lblNominal: "Rp.15.000.000", imgTransaksi: "icon5"),
      Histori(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Shopepay - 08123123123", lblDate: "19 Des, 2022 | 10:22", lblNominal: "Rp.15.000.000", imgTransaksi: "icon5"),
      Histori(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Shopepay - 08123123123", lblDate: "19 Des, 2022 | 10:22", lblNominal: "Rp.15.000.000", imgTransaksi: "icon5"),
      Histori(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Shopepay - 08123123123", lblDate: "19 Des, 2022 | 10:22", lblNominal: "Rp.15.000.000", imgTransaksi: "icon5"),



    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CellMutasi", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellMutasiItem")
        tableView.dataSource = self
        tableView.delegate = self
        setstyle()
        
        
        
        
        
        
        
    
        
    }
    func setstyle(){
        btnMasuk.layer.cornerRadius = 15
        btnSemua.layer.cornerRadius = 15
        btnKeluar.layer.cornerRadius = 15
        btnMasuk.layer.borderColor = UIColor(red: 0.183, green: 0.508, blue: 1, alpha: 1).cgColor
        btnKeluar.layer.borderColor = UIColor(red: 0.183, green: 0.508, blue: 1, alpha: 1).cgColor
        btnMasuk.layer.borderWidth = 1
        btnKeluar.layer.borderWidth = 1
    }
}
extension HistoryVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data1.count
//        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Mutasi = data1[indexPath.row]
        let CellMutasi = tableView.dequeueReusableCell(withIdentifier: "CellMutasiItem", for: indexPath) as! CellMutasi
        CellMutasi.imgTransaksi.image = UIImage(named: Mutasi.imgTransaksi)
        CellMutasi.lblTansaksi.text = Mutasi.lblTransaksi
        CellMutasi.lblTransaksi1.text = Mutasi.lblTransaksi1
        CellMutasi.lblDate.text = Mutasi.lblDate
        CellMutasi.lblNominal.text = Mutasi.lblNominal
        return CellMutasi
    }
}
struct Histori{
    let lblTransaksi: String
    let lblTransaksi1: String
    let lblDate: String
    let lblNominal: String
    let imgTransaksi: String
}
