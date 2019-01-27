# immunotherapyReadability
Compute readability scores from the text of top URLs from a standard Google search term.

# googleHits.py
Saves a text file of the top N URLs for a standard google search for a keyword

# readAll.sh
Uses the URL text file to automatically extract the body of text from each URL, stripping away any script/markup language. 

# tokenizer/readScoresCommand.sh
Uses the tokenizer to parse text into sentences and saves a CSV file of the readability metrics for each website.

# Required Dependencies 
Readability (saved as readScores due to redudant package names): https://pypi.org/project/readability/

Tokenizer: http://moin.delph-in.net/WeSearch/DocumentParsing

Googlesearch: https://pypi.org/project/google/

Beautifulsoup4: https://pypi.org/project/beautifulsoup4/

requests: https://pypi.org/project/requests/

readability: https://pypi.org/project/readability-lxml/

html2text: https://pypi.org/project/html2text/
