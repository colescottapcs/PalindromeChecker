public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String letters = word.replaceAll("[^A-Za-z]+", "").toLowerCase();
  return letters.substring(0,(letters.length()/2) + 1).equals(new StringBuilder(letters.substring(letters.length()/2,letters.length())).reverse().toString());
}

