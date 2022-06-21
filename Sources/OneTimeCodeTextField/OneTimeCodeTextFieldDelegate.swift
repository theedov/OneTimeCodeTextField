import UIKit

public class OneTimeCodeTextFieldDelegate: NSObject, UITextFieldDelegate {

    public var allowedCharacters: CharacterSet = .decimalDigits

    let oneTimeCodeTextField: OneTimeCodeTextField
    
    init(oneTimeCodeTextField: OneTimeCodeTextField) {
        self.oneTimeCodeTextField = oneTimeCodeTextField
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard allowedCharacters.isSuperset(of: CharacterSet(charactersIn: string)),
              let characterCount = textField.text?.count else { return false }
        return characterCount < oneTimeCodeTextField.digitLabels.count || string == ""
    }
}
