import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

/// A sign in button that matches Facebook's design guidelines.
///
/// The button text can be overridden, however the default text is recommended
/// in order to be compliant with the design guidelines and to maximise
/// conversion.
class FacebookSignInButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double borderRadius;

  /// Creates a new button. The default button text is 'Continue with Facebook',
  /// which apparently results in higher conversion. 'Login with Facebook' is
  /// another suggestion.
  FacebookSignInButton({
    this.onPressed,
    this.borderRadius = defaultBorderRadius,
    this.text = 'Continue with Facebook',
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: Color(0xFF4267B2),
      borderRadius: borderRadius,
      onPressed: onPressed,
      buttonPadding: 5.0,
      children: <Widget>[
        // Facebook doesn't provide strict sizes, so this is a good
        // estimate of their examples within documentation.

        Image(
          image: AssetImage(
            "graphics/flogo-HexRBG-Wht-100.png",
            package: "flutter_auth_buttons",
          ),
          height: 24.0,
          width: 24.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            text,
            style: TextStyle(
              // default to the application font-style
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
