//
//  ViewController.swift
//  changeColor
//
//  Created by Alvie on 2021/10/4.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var shadowImageView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var shadowSlider: UISlider!
    @IBOutlet weak var radiusSlider: UISlider!
    @IBOutlet weak var randomBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if redSwitch.isOn {
            redSlider.isEnabled = true
        }else{
            redSlider.isEnabled = false
        }
        
        if greenSwitch.isOn {
            greenSwitch.isEnabled = true
        }else{
            greenSlider.isEnabled = false
        }
        
        if blueSwitch.isOn {
            greenSlider.isEnabled = true
        }else{
            greenSlider.isEnabled = false
        }
        
        if redSwitch.isOn , greenSwitch.isOn , blueSwitch.isOn {
            randomBtn.isEnabled = true
        }else{
            randomBtn.isEnabled = false
        }
        
    }
    
    
    
    
    @IBAction func changeColor(_ sender: UISlider) {
        movieImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        //Label依照slider的value轉換
        redLabel.text = String(format: "%.0f", redSlider.value*255)
        greenLabel.text = String(format: "%.0f", greenSlider.value*255)
        blueLabel.text = String(format: "%.0f", blueSlider.value*255)

    }
    
    //搭配亂數 隨機選色按鈕
    @IBAction func randomChange(_ sender: UIButton) {
        let red = Float.random(in: 0...1)
        let green = Float.random(in: 0...1)
        let blue = Float.random(in: 0...1)
        let alpha = Float.random(in: 0...1)
        
        movieImageView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
        
        redLabel.text = String(format: "%.0f", red*255)
        greenLabel.text = String(format: "%.0f", green*255)
        blueLabel.text = String(format: "%.0f", blue*255)
        
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
        alphaSlider.value = Float(alpha)
    
    }
    
    //陰影
    //masksToBounds屬性若被設置為true，會將超過邊筐外的sublayers裁切掉
    @IBAction func shadowSliderChange(_ sender: UISlider) {
        shadowImageView.layer.masksToBounds = false
        shadowImageView.layer.shadowColor = UIColor.darkGray.cgColor
        shadowImageView.layer.shadowOffset = CGSize(width: 1, height: 1)
        shadowImageView.layer.shadowOpacity = 0.8
        shadowImageView.layer.shadowRadius = CGFloat(shadowSlider.value)
    }
    
    //圓角
    

    @IBAction func radiusChange(_ sender: UISlider) {
        movieImageView.clipsToBounds = true
        movieImageView.layer.cornerRadius = CGFloat(radiusSlider.value)
        //陰影面也要一起圓角
        shadowImageView.layer.cornerRadius = CGFloat(radiusSlider.value)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}


