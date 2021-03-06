//
//  ViewController.swift
//  MyOmikuji
//
//  Created by mocchicc on 2014/12/12.
//  Copyright (c) 2014年 mocchicc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func getOmikuji(sender: AnyObject) {
        // 占うよ! ボタンを押したら実行される関数
        
        // 配列におみくじの結果を用意
        let results = [
                "大吉",
                "吉",
                "中吉",
                "末吉",
                "凶"
        ]
        
        // 乱数を生成
        // 0 - n
        // arc4random_uniform(n + 1)
        
        let random = arc4random_uniform(UInt32(results.count))
        
        // 大吉の時に赤文字に表示する
        
        if random == 0 {
            self.resultLabel.textColor = UIColor.redColor()
        } else {
            self.resultLabel.textColor = UIColor.blackColor()
        }
        
        
        // result[乱数] を resultLabel に表示
        
        self.resultLabel.text = results[Int(random)]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

