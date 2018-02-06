//
//  ViewControllerSecond.swift
//  TwoPagesARC
//
//  Created by KaiChieh on 2018/2/5.
//  Copyright © 2018年 KaiChieh. All rights reserved.
//

import UIKit

class ViewControllerSecond: UIViewController {
    weak var firstVC: ViewControllerFirst!

    // MARK: - IBAction
    @IBAction func backAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    // MARK: segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let thirdVC = segue.destination as! ViewControllerThird
        thirdVC.secondVC = self
        
    }
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    deinit {
        print("Second viewController is released")
    }
}
