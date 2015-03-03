public class reverse_string {
  public static void main (String[] args) {
    if (args.length < 0) {
      System.out.println("Too few arguments");
      System.exit(-1);
    }
    String input = new String();
    for (String s: args) {
      input += s;
    }
    System.out.println("Original:\t\t"+input);

    char[] chars = input.toCharArray();

    int middle = 0;
    if (chars.length%2==0) {
      middle = chars.length/2;
    } else {
      middle = (chars.length/2) - 1;
    }
    for (int i = 0; i<=middle; i++) {
      chars[i] = chars[i] ^ chars[chars.length-1-i];
      chars[chars.length-1-i] = chars[i] ^ chars[chars.length-1-i];
      chars[i] = chars[i] ^ chars[chars.length-1-i];
    }
    System.out.println("Reversed:\t\t"+chars);
  }
}
