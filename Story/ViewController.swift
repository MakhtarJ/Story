//
//  ViewController.swift
//  Story
//
//  Created by user253148 on 2/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    let Backstory = OmniManInfo(info: "Omni-Man, Nolan Grayson, is a formidable Viltrumite superhero in 'Invincible.' Initially Earth's guardian, he shockingly turns against the Guardians of the Globe, revealing his true allegiance. His narrative weaves a complex tale of familial ties, moral ambiguity, and the consequences of his allegiance, adding depth to the Invincible series.", image: UIImage(named: "images")!)
    
    let Power = OmniManInfo(info:"Omni-Man possesses superhuman strength, speed, flight, and invulnerability typical of Viltrumites. His longevity and advanced healing abilities make him nearly immortal. Additionally, he has superior combat skills and can manipulate energy, showcasing a formidable array of powers that define his dominance as a Viltrumite warrior in 'Invincible.'", image: UIImage(named: "fotonoticia_20231116104127_640")!)
    
    let Weakness = OmniManInfo(info:"Despite Omni-Man's formidable powers, his main weakness lies in his emotional attachments, particularly to his son, Mark. This vulnerability becomes evident as conflicting loyalties create internal turmoil, exposing his emotional fragility. This weakness becomes a crucial element in the intricate narrative of Omni-Man's character in 'Invincible", image: UIImage(named: "thinkmarkthumbnail")!)
    
    var infoList: [OmniManInfo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        infoList = [Backstory, Power, Weakness]
        
    }
    
    
    
@IBAction func buttonTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "detailSegue", sender: sender)

}
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "detailSegue", let button = sender as? UIButton, let infoVC = segue.destination as? InfoVC {
            infoVC.OmniManInf = infoList[button.tag]
        }
    }
    
}
