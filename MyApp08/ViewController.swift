//
//  ViewController.swift
//  MyApp08
//
//  Created by iii on 2017/6/22.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    @IBAction func backHere(segue: UIStoryboardSegue){
        print("back home")
    }
    
    private let mydata = ["猜數字V1","猜數字V2","切換場景","簽名板",
                          "Item1","自訂Cell","練習Touch事件","Item4",
                          "Item1","Item2","Item3","Item4",
                          "Item1","Item2","Item3","Item4",]
    
  
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return mydata.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
    let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
    cell?.textLabel?.text = mydata[indexPath.row]
        return cell!
    }
    // 觸發選項 ==> indexPath.row
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        gotoVC(whereVC: indexPath.row)
    }
    
    private func gotoVC(whereVC:Int){
        switch (whereVC) {
        case 2:
            if let vc2 = storyboard?.instantiateViewController(withIdentifier: "vc2") {
                show(vc2, sender: self)
            }
        case 3:
            if let vc3 = storyboard?.instantiateViewController(withIdentifier: "paintervc") {
                show(vc3, sender: self)
            }
        case 5:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "customcellvc") {
                show(vc, sender: self)
            }
            break
        case 6:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "touchvc") {
                show(vc, sender: self)
            }
            
            break
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

