//
//  ViewControllerFirst.swift
//  TwoPagesARC
//
//  Created by KaiChieh on 2018/2/5.
//  Copyright © 2018年 KaiChieh. All rights reserved.
//

import UIKit

class ViewControllerFirst: UIViewController {
    var secondVC: ViewControllerSecond!

    // MARK: - IBActions
    @IBAction func btnNext(_ sender: UIButton) {
        if self.secondVC == nil {
            let secondVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerSecond") as! ViewControllerSecond
            secondVC.firstVC = self
            self.secondVC = secondVC
        }
        present(secondVC, animated: true, completion: nil)
    }

    // MARK: - Lifecycle
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
