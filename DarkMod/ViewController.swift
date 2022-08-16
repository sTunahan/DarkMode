
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //If we want my app to be in Dark mode We Use This.
        overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle // Used to detect phone mode
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.yellow
        }else {
            changeButton.tintColor = UIColor.red
            
        }
    }

    
    //This method is called every time the trait is changed. It is constantly listening to the application.
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
       
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.yellow
        }else {
            changeButton.tintColor = UIColor.red
            
        }
    }
}

