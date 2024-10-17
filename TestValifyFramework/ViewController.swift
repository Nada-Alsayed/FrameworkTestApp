//
//  ViewController.swift
//  TestValifyFramework
//
//  Created by 2B on 17/10/2024.
//

import UIKit
import ValifyFrameWork

class ViewController: UIViewController {

    @IBOutlet weak var yourImage: UIImageView!
    @IBOutlet weak var captureBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        captureBtn.addTarget(self, action: #selector(captureButtonAction), for: .touchUpInside)
    }
    
    @objc func captureButtonAction() {
        ValifyFrameworkManager.takeSelfie(from: self, delegate: self)
    }
}

extension ViewController: ApprovableProtocol{
    func passCapturedImage(selfie: UIImage) {
        self.yourImage.image = selfie
    }
}
