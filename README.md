# SMButton
SMButton is an UIButton class displays round button, manages border layer button.

# Example

Clone the repo and run the example project. This Example demonstrate how to use the SMButton class, it contains actions for toggle buttons and how to make a round button.

# Installation

Drag and drop SMButton.swift into your project.

# Usage

1. open a storyboard or xib file.
2. Drag and drop SMButton to your UIView, UIViewController,...
3. In Identity inspector, replace the class from UIButton with SMButton. You will be able to see all IBDesignable settings in the storyboard (or xib file).

# Properties

- **isActivate** : default value is true. This property sets isUserInteractionEnabled and it sets backgroundColor for each status.
- **activateBackgroundColor** : the background color when isActivate is true.
- **deactivateBackgroundColor** : the background color when isActivate is false.
- **cornerRadius** : default value 0 (no corner radius).
- **isRoundButton** : default value is false. By setting this property to true, it creates a round button.

# Author

Sihem MOHAMED
