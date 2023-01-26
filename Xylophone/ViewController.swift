//
//  ViewController.swift
//  Xylophone
//
//  Created by Sayed Ali Husain on 26/01/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func KeyPressed(_ sender: UIButton) {
        if let buttonTilte = sender.currentTitle{
            playSound(title: buttonTilte)
        }
    }
    
    func playSound(title: String) {
        
        guard let path = Bundle.main.path(forResource: "Sounds/\(title)", ofType:"wav") else {
            return }
        
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

