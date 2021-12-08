//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by admin on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func reserButton(_ sender: UIButton) {
        game = [0,0,0,0,0,0,0,0,0]
    activePlayer = 1
        for i in 1...9 {
            let button = view.viewWithTag(i) as! UIButton
            button.backgroundColor = .gray
        }
    }
    @IBOutlet weak var winner: UILabel!
    var game = [0,0,0,0,0,0,0,0,0]
var activePlayer = 1
    var winning = [[0,1,2], [3,4,5], [6,7,8], [0,3,6],[1,4,7], [2,5,8],[0,4,8],[2,4,6]]
    @IBAction func playButton(_ sender: UIButton) {
        
//            button1.setBackgroundImage(UIImage(named: "x.png"), for: UIControl.State())
        if game[sender.tag - 1] == 0 {
            game[sender.tag - 1] =  activePlayer
            if activePlayer == 1 {
            sender.backgroundColor = .red
                activePlayer = 2
            }
            
             else if activePlayer == 2 {
            sender.backgroundColor = .blue
                activePlayer = 1
            }
        }
        for i in winning {
            if  game[i[0]] != 0 && game[i[0]] == game[i[1]]  &&  game[i[1]] == game[i[2]]  {
                
               sender.isEnabled = false
                if game[i[0]] == 1 {
                    winner.text = "Red player has win"
                    
                }
                else  if game[i[0]] == 2 {
                    winner.text = "blue player has win"
                    
                }
                else {
                    winner.text = "No one has win"

                }
            }
        }
        func resets () {
            
         
            sender.backgroundColor = .gray
        }

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


}

 
