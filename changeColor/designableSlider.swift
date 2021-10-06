//
//  designableSlider.swift
//  designableSlider
//
//  Created by worker on 2021/10/5.
//

import UIKit

class designableSlider: UISlider {
    @IBInspectable var thumbImage : UIImage? {
        didSet{
            setThumbImage(thumbImage, for: .normal)
        }
    }
   

}
