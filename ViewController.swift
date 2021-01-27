//
//  ViewController.swift
//  KatesGyroApp
//
//  Created by KatesAndroid on 2021/1/27 PM 3:05
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    let cmmm = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // after nib.
        
        //cmmm.startGyroUpdates(to: <#T##OperationQueue#>, withHandler: <#T##CMGyroHandler##CMGyroHandler##(CMGyroData?, Error?) -> Void#>)
        cmmm.startGyroUpdates(to: OperationQueue()){
            (data, error) in
            if let data = data{
                let tmp = data.rotationRate
                print("(x, y, z) = (\(tmp.x), \(tmp.y), \(tmp.z)")
            }
        }
        
        //cmmm.stopGyroUpdates()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        cmmm.stopGyroUpdates()
    }


}

