
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Uygulamamın Dark modunda değişmemesini istiyorsak Bunu Kullanırız.
        overrideUserInterfaceStyle = .light // Telefon mod una hiç bakmadan Kullanılan View Ekranını Direkt Light Moda çevirecektir.Tek tek Her sayfa ıcın yazmak yerıne "iNFO" Ya gelip Burada + ya bazıp "user Interface Style" yazıp sag tarafına Dark veya Light yazarız.
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Kullanıcı Telefonu Hangi modda kullandığını anlıyabilmek için kullanıcı arayüz stiline ihtiyacımız var  bunuda tradeCollection dıye bır yerden alırız.
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        // button rengımız dark ve lıght da mavı renk gozukur. Bız bunu dark modda Sarı , light modda kırmızı gözüksün demek ıstersek kullanırız.
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.yellow
        }else {
            changeButton.tintColor = UIColor.red
            
        }
    }

    // telefon ayarlarından dark modu acınca , sonra tekrar uygulamayı acınca algılamıyor.Degısıklıgı algıladıgınca calısacak bir method içine kodları yazmamız gerekiyor.
    //Her trait degıstırıldıgınde Bu method cagırılır.Sürekli Uygulamayı Dinliyor
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        <#code#>  // Kullanıcı Telefonu Hangi modda kullandığını anlıyabilmek için kullanıcı arayüz stiline ihtiyacımız var  bunuda tradeCollection dıye bır yerden alırız.
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        // button rengımız dark ve lıght da mavı renk gozukur. Bız bunu dark modda Sarı , light modda kırmızı gözüksün demek ıstersek kullanırız.
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.yellow
        }else {
            changeButton.tintColor = UIColor.red
            
        }
    }
}

