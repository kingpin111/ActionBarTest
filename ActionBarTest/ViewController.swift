//
//  ViewController.swift
//  ActionBarTest
//
//  Created by Victor K Lee on 12/04/2019.
//  Copyright © 2019 Victor K Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordBtn: UIButton!
    @IBOutlet weak var SheetBtn: UIButton!
    @IBOutlet weak var SlideBtn: UIButton!
    @IBOutlet weak var PDFBtn: UIButton!
    @IBOutlet weak var EditorBtn: UIButton!
    @IBOutlet var actionBarView: UIView!
    @IBOutlet weak var backroundView: UIView!
    @IBOutlet weak var dummyView: UIView!
    lazy var hideBackgroundView = self.backroundView.heightAnchor.constraint(equalToConstant: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        switch sender {
        case wordBtn:
            backroundView.backgroundColor = UIColor(hex: "#1d7ffaff")
            dummyView.backgroundColor = UIColor(hex: "#1d7ffaff")
        case SheetBtn:
            backroundView.backgroundColor = UIColor(hex: "#51b41bff")
            dummyView.backgroundColor = UIColor(hex: "#51b41bff")
        case SlideBtn:
            backroundView.backgroundColor = UIColor(hex: "#fc8900ff")
            dummyView.backgroundColor = UIColor(hex: "#fc8900ff")
        case PDFBtn:
            backroundView.backgroundColor = UIColor(hex: "#f85c5dff")
            dummyView.backgroundColor = UIColor(hex: "#f85c5dff")
        case EditorBtn:
            backroundView.backgroundColor = UIColor(hex: "#fafafaff")
            dummyView.backgroundColor = UIColor(hex: "#fafafaff")
        default:
            backroundView.backgroundColor = UIColor(hex: "#1d7ffaff")
            dummyView.backgroundColor = UIColor(hex: "#1d7ffaff")
        }
        
//        if #available(iOS 11.0, *) {
//            backroundView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//        } else {
//            backroundView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//        }
        
        
        hideBackgroundView.isActive = true
        self.view.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.5, delay: 0.2, options: [], animations: {
            //self.backroundView.heightAnchor.constraint(equalToConstant: bgHeight).isActive = true
            self.hideBackgroundView.isActive = false
            self.view.layoutIfNeeded()
//            if #available(iOS 11.0, *) {
//                backroundView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//            } else {
//                backroundView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//            }
        }, completion: nil)
    }
    


}

