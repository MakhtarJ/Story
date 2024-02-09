
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var informationType: String?
    var textToShow: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        guard let informationType = informationType?.lowercased() else {
            return
        }

        titleLabel.text = informationType
        descriptionLabel.text = textToShow

        switch informationType {
        case "Backstory":
            imageView.image = UIImage(named: "images")
        case "Power":
            imageView.image = UIImage(named: "fotonoticia_20231116104127_640")
        case "Weakness":
            imageView.image = UIImage(named: "thinkmarkthumbnail")
        default:
            break
        }
    }
        

    
    
    
}
