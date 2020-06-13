//
//  ViewController.swift
//  Tableview
//
//  Created by 伴大輔 on 2020/06/06.
//  Copyright © 2020 伴大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    let infoLists: [kameInfo] = [
            kameInfo(iconName: "02", title: "食事", description: "食事の準備から食べ終わるまで"),
            kameInfo(iconName: "12", title: "整容", description: "歯磨き、髭剃り、化粧、整髪"),
            kameInfo(iconName: "14", title: "運転や操作", description: "車の運転、車の乗り降り"),
            kameInfo(iconName: "19", title: "屋外の移動", description: "屋外の歩行、外出、自宅外から目的地"),
            kameInfo(iconName: "22", title: "子供の世話", description: "育児、オムツ替え、哺乳瓶"),
            kameInfo(iconName: "28", title: "洗濯", description: "洗濯機、洗濯物干し"),
            kameInfo(iconName: "32", title: "友人との交流", description: "談話、近況報告、グチの言い合い"),
            kameInfo(iconName: "29", title: "仕事", description: "金銭を稼ぐ、社会での意義"),
            kameInfo(iconName: "35", title: "ペットの世話", description: "犬、ねこ、ウサギなど"),
            kameInfo(iconName: "38", title: "囲碁・将棋", description: "日本文化、ボードゲーム"),
            kameInfo(iconName: "avatar", title: "旅行", description: "世界、日本、いろいろな場所")
        ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoLists.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt  indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kameTableViewCell", for: indexPath)as! kameTableViewCell
        cell.iconView.image = UIImage(named: infoLists[indexPath.row].iconName)
        cell.titleLavel.text = infoLists[indexPath.row].title
        cell.discriptionLavel.text = infoLists[indexPath.row].description
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "作業療法プログラム\(section)"
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureTableViewCell()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func configureTableViewCell(){
        let nib = UINib(nibName: "kameTableViewCell",bundle: nil)
        let cellID = "kameTableViewCell"
        tableView.register(nib, forCellReuseIdentifier:  cellID)
    }

}

