//
//  TableViewController.swift
//  tableViewApp
//
//  Created by VERTEX20 on 2019/08/04.
//  Copyright © 2019 VERTEX20. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // 速報ボタンを押したあとに表示される、画面のニュースタイトルを入れています。
    let news: [String] = [
        "東京ジャズ、上原ひろみ出演決定",
        "スナーキー・パピー、10月単独公演",
        "ハイレゾ普及率10%",
        "最高気温42度"
    ]

    
    // 配列
   let images: [UIImage] = [
        UIImage(named: "trumpet")!,
        UIImage(named: "drum")!,
        UIImage(named: "onpu")!,
        UIImage(named: "onpu")!,
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // セクション(セルをグループ化させたもの)の数を設定。
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // セルの数を設定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return news.count
    }

    // もともと文字化されている。自分で消す
    // セルの操作。""の中を変える(今回だとidentiferからNewsCell)
    // IndexPath.rowで各配列に対応した文を入れる
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)

        // ニュースをセルにセットする
        cell.textLabel?.text = news[indexPath.row]
        cell.imageView?.image = images[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
