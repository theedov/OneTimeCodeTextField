# OneTimeCodeTextField
<p align="center">
    <img src="https://user-images.githubusercontent.com/30866972/128622571-7f0a3c38-cd0f-465c-8efa-71866f55f6a9.jpeg" width="200"> 
  </p>

### Example configuration

```
class ViewController: UIViewController {
    @IBOutlet weak var codeTxt: OneTimeCodeTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure has to be called first
        codeTxt.configure(withSlotCount: 6, andSpacing: 8)              // Default: 6 slots, 8 spacing
        
        
        // Customisation(Optional)
        codeTxt.codeBackgroundColor = .secondarySystemBackground        // Default: .secondarySystemBackground
        codeTxt.codeTextColor = .label                                  // Default: .label
        codeTxt.codeFont = .systemFont(ofSize: 30, weight: .black)      // Default: .system(ofSize: 24)
        codeTxt.codeMinimumScaleFactor = 0.2                            // Default: 0.8
        
        codeTxt.codeCornerRadius = 12                                   // Default: 8
        codeTxt.codeCornerCurve = .continuous                           // Default: .continuous

        codeTxt.codeBorderWidth = 1                                     // Default: 0
        codeTxt.codeBorderColor = .label                                // Default: .none
        
        // Allow alphanumeric code
        codeTxt.oneTimeCodeDelegate.allowedCharacters = .alphanumerics  // Default: .decimalDigits
        //You should also specify which corresponding keyboard should be shown, like
        codeTxt.keyboardType = .asciiCapable                            // Default: .numberPad
        
        // Get entered Passcode
        codeTxt.didReceiveCode = { code in
            print(code)
        }

        // Clear textfield
        codeTxt.clear()
    }
}
```
