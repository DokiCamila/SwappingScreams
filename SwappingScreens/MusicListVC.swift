//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Camila Doki on 10/03/17.
//  Copyright © 2017 Camila Doki. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
               view.backgroundColor = UIColor.blue

    }

    @IBAction func BackBtnPress(_ sender: Any) {
        
        dismiss(animated: true , completion: nil)
        
    }
    
    @IBAction func loas3rdScreenPress(_ sender: Any) {
    
        let songTitle = "Down"
        
        performSegue(withIdentifier: "SongVc", sender: songTitle)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if let  NextDestination = segue.destination as? PlaySongVC{
            
            if let song = sender as? String{
                NextDestination.selectedSong = song
            }
            
            
        }
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
