This application reads in text supplied in a file, analyzes it for various patters and statistics and prints out the results to the user.

Basic Features:

- Character count
- Character count (excluding spaces)
- Line count
- Word count
- Sentence count
- Paragraph count
- Average number of words per sentence
- Average number of sentences per paragraph

Flow Chart:

1) Load in a file containing the text or document you want to analyze.
2) As you load the file line by line, keep a count of how many lines there were.
3) Put the text into a string and mesure its length to get your character count.
4) Temporarily remove all whitespace and mesure the length of the resulting string to get the character count excluding spaces.
5) Split out all the whitespace to find out how many words there are.
6) Split on full stops to find out how many sentences there are.
7) Split on double newlines to find out how many paragraphs there are.
8) Perform calculations to work out the averages.
