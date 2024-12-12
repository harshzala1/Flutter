void printColored(String text, String color) {
  // ANSI escape codes for different colors
  const colors = {
    'black': '\x1B[30m',
    'red': '\x1B[31m',
    'green': '\x1B[32m',
    'yellow': '\x1B[33m',
    'blue': '\x1B[34m',
    'magenta': '\x1B[35m',
    'cyan': '\x1B[36m',
    'white': '\x1B[37m',
    'reset': '\x1B[0m'
  };

  // If the color is not in the map, use the default reset color
  String colorCode = colors[color] ?? colors['reset']!;

  // Print the colored text
  print('$colorCode$text${colors['reset']}');
}
