//
//  ViewControllerThird.swift
//  TwoPagesARC
//
//  Created by KaiChieh on 2018/2/5.
//  Copyright © 2018年 KaiChieh. All rights reserved.
//

import UIKit

class ViewControllerThird: UIViewController {
    weak var secondVC: ViewControllerSecond!

    @IBAction func buttonClick(_ sender: UIButton) {
        dismiss(animated: true) {//remove second page at closure
            self.secondVC.dismiss(animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
