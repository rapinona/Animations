//
//  ViewController.swift
//  Animations
//
//  Created by Piñón Ayala Rodrigo  on 04/11/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var loaderView: LoaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loaderView.commonInit(number: segmentedControl.selectedSegmentIndex)
    }

    @IBAction func cambioAnim(_ sender: Any) {
        loaderView.commonInit(number: segmentedControl.selectedSegmentIndex)
    }
    
}

