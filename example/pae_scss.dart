import 'package:sass/sass.dart' as sass;

void main() {
  final result = sass.compileStringToResult(
    '''
\$primary-color: #3498db;
\$font-family: 'Arial', sans-serif;

@mixin button-styles(\$bg-color: \$primary-color) {
  background-color: \$bg-color;
  color: #fff;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
}

@function calculate-border-radius(\$size) {
  @return \$size * 0.2;
}

%card-styles {
  background-color: #fff;
  padding: 20px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  border-radius: calculate-border-radius(10px);
}

body {
  background-color: #f4f4f4;
  color: #333;
  font-family: \$font-family;

  .container {
    width: 80%;
    margin: 0 auto;
  }

  .button {
    @include button-styles;
  }

  .primary-button {
    @include button-styles(\$primary-color);
  }

  .card {
    @extend %card-styles;
  }
}

''',
  );
  print(result.css);
}

int plusOne(int number) {return number++;}

// sass to css
// function to sass callable
// css to scoped
