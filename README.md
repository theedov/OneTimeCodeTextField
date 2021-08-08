# OneTimeCodeTextField
<p align="center">
    <img src="https://user-images.githubusercontent.com/30866972/128621686-4fa4b27a-92ce-42c8-a121-94d098288dca.jpeg" width="200"> 
  </p>

### Example configuration

```
class ViewController: UIViewController {
    @IBOutlet weak var codeTxt: OneTimeCodeTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure has to be called first
        codeTxt.configure(withSlotCount: 6, andSpacing: 8)              // Default: 6 slots, 8 spacing
        
        // Customization(Optional)
        codeTxt.codeBackgroundColor = .systemIndigo                     // Default: .secondarySystemBackground
        codeTxt.codeTextColor = .white                                  // Default: .black
        codeTxt.codeFont = .systemFont(ofSize: 30, weight: .black)      // Default: .system(ofSize: 24)
        codeTxt.codeMinimumScaleFactor = 0.2                            // Default: 0.8
        codeTxt.codeCornerRadius = 2                                    // Default: 8
        codeTxt.codeCornerCurve = .continuous                           // Default: .continuous
        
        

        codeTxt.didReceiveCode = { code in
            print(code)
        }
    }
}
```
