//
//  TransferVC.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 24/01/23.
//

import Foundation
import UIKit


class TransferVC: UIViewController{
    
    @IBOutlet weak var btnAddPenerima: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchField: UISearchBar!
    
    @IBOutlet weak var btnBack: UIButton!
    
    let data: [Riwayat] = [
        Riwayat(lblInisial: "Ayu", lblNama: "A", lblNoRekening: "Bank Central Asia - 7058975904"),
        Riwayat(lblInisial: "Bayu", lblNama: "B", lblNoRekening: "Bank Negara Indonesia - 52003023375904"),
        Riwayat(lblInisial: "Bana", lblNama: "B", lblNoRekening: "Bank Central Asia - 1224234234"),
        Riwayat(lblInisial: "Chandra", lblNama: "C", lblNoRekening: "Bank Rakyat Indonesia - 7058975904"),
        Riwayat(lblInisial: "Dadan", lblNama: "D", lblNoRekening: "Bank Central Asia - 20323121204"),
        Riwayat(lblInisial: "Erna", lblNama: "E", lblNoRekening: "Bank Central Asia - 74124234344"),
        Riwayat(lblInisial: "Mamat", lblNama: "M", lblNoRekening: "Bank Central Asia - 299424124124")
        
     
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let nib = UINib(nibName: "CellTransfer", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellTransferList")
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        
        
        
        btnBack.addTarget(self, action: #selector(homepage), for: .touchUpInside)
        setstyle()
        btnAddPenerima.addTarget(self, action: #selector(Transfer), for: .touchUpInside)
        
    }
}
extension TransferVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
//        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Transfer = data[indexPath.row]
        let CellList = tableView.dequeueReusableCell(withIdentifier: "CellTransferList", for: indexPath) as! CellTransfer
        CellList.lblInisial.text = Transfer.lblInisial
        CellList.lblInisial.text = Transfer.lblNama
        CellList.lblNoRekening.text = Transfer.lblNoRekening
        return CellList
    }
    func setstyle(){
        btnAddPenerima.layer.cornerRadius = 8
        btnBack.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        btnBack.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        btnBack.layer.shadowRadius = 1.0
        btnBack.layer.shadowOpacity = 1
        btnBack.layer.cornerRadius = 10
        
    }
    @objc func homepage(){
        let home = TabbarVC()
        self.navigationController?.pushViewController(home, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func Transfer(){
        let transfer = Transfer2()
        self.navigationController?.pushViewController(transfer, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    
    
}
struct Riwayat{
    let lblInisial: String
    let lblNama: String
    let lblNoRekening: String
}
