//
//  ViewController.swift
//  TaijukeVer.2
//
//  Created by Kota Takagi on 2019/07/03.
//  Copyright © 2019 sea&see. All rights reserved.
//

import UIKit

extension UIView {
    
    // 枠線の色
    @IBInspectable var borderColor: UIColor? {
        get {
            return layer.borderColor.map { UIColor(cgColor: $0) }
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    // 枠線のWidth
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    // 角丸設定
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    /// 影の色
    @IBInspectable var shadowColor: UIColor? {
        get {
            return layer.shadowColor.map { UIColor(cgColor: $0) }
        }
        set {
            layer.shadowColor = newValue?.cgColor
            layer.masksToBounds = false
        }
    }
    
    /// 影の透明度
    @IBInspectable var shadowAlpha: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    /// 影のオフセット
    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    /// 影のぼかし量
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }

}

class ViewController: UIViewController {
    
    // @IBAction が　Unwind Segue の印
    // 「Unwind Segue」で戻ってきた時に行う処理
    // 参考 https://yuu.1000quu.com/how_to_use_segue
    @IBAction func backToTop(segue: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

