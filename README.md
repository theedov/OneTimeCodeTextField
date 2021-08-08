# OneTimeCodeTextField

## Example configuration

```
class ViewController: UIViewController {
    @IBOutlet weak var codeTxt: OneTimeCodeTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Configure has to be called first
        codeTxt.configure(with: 6)
        
        // Customization
        codeTxt.codeBackgroundColor = .systemIndigo
        codeTxt.codeTextColor = .white
        codeTxt.codeFont = .systemFont(ofSize: 30, weight: .black)
        codeTxt.codeMinimumScaleFactor = 0.2
        codeTxt.codeCornerRadius = 2
        codeTxt.codeCornerCurve = .continuous
        
        

        codeTxt.didReceiveCode = { code in
            print(code)
        }
    }
}
```
