//
//  DetailViewController.swift
//  sampleTabelView001
//
//  Created by 濱野将士 on 2017/11/05.
//  Copyright © 2017年 Masashi Hamano. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myDescription: UITextView!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    //受け取った行番号を保存しておく変数
    var passedIndex:Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("2枚め表示されたよ")
        print("受け取った行は\(passedIndex)行目です")
        
        
        myLabel.text = teaList[passedIndex]
        myDescription.text = json.txt[passedIndex]
        myImageView.image = UIImage(named: "\(passedIndex).jpg")
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
