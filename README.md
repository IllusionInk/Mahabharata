# Battle of Destinies

> The role and depiction of Karna in the Mahabharata is quite intriguing, considering how he has always kept his word irrespective of the situations. However, his choices have often caused him trouble.
    On the other  hand, Arjuna has been consistently favoured by the gods and other charachters placing him in a favourable position.
    This interesting dichotomy urged me to study the portrayal of these two charachters as written in the book.

### Dataset 
---
#### Source
I decided to pick the English translation by KM Ganguly ([here](http://www.sacred-texts.com/hin/maha/index.htm)), as it was the only one to cover the entire epic and is considered as its most reliable translation. 
The source material had to be edited to rectify for incorrect parva numbering and redundant text formatting. I have uploaded the final version of the text file in the data folder 
- [x] 18 books combined
- [x] 'Parva' numbering rectified
- [x] Unwanted spacing corrected.

#### Initial Explorations
In order to study the depiction of the characters, I framed certain intial questions :
- How frequently are these charachters mentioned ?
- Which charachters are frequently mentioend with Karna and Arjuna? 
- How are Karna and Arjuna described qualitatively in the book?
- What events brought them closer ?

#### Text Analysis
- The text analysis was carried out compeltely in Python, using libraries such as  pandas, numpy and spaCy.
- Mahabharata is composed of 18 books and has multiple sections with each. (while some have 6 sections, other have 200)
- In order to find out the distribution of characters and their associations across these books, I began with splitting the epic into various books and its sections.
- Libraries such as pandas, numpy helped greatly to store this data into relevant data structures (dataframes) and carrying out basic arithmetic operations on the same.
- I further went about splitting the sections into respective sentences and words. THis was primarily done with *spaCy* using word tokenization.
> Our faculty - Amit Kapoor helped us extensively with the word tokenization, helping us write required functions to split the text content into sentences and words.
- Once the dataset reached its most modular level. I could proceed with carrying out the actual analysis - figuring out the characters mentioned around Karna and Arjuna, figuring out the adjectives used around them (POS - Part of Speech tagging in spaCy).Also, how ahve their names changed in the text.
- As the desired datasets were achieved, I exported them as CSVs to perform some further analysis in MS Excel.

#### Dataset
- Python Dataframes
![Data](https://github.com/IllusionInk/Mahabharata/blob/master/assets/Python_dataframe.jpg)

- Final Shape
![Data](https://github.com/IllusionInk/Mahabharata/blob/master/assets/Final_Dataset.jpg)

#### Final Datasets
- Arjun_names: various names of Arjun
- Karna_names: various names of Karna
- Arjun_assoc: charachters closest to Arjuna
- Karna_assoc: charachters closest to Karna
- Arjun_adj: adjectives used around Arjuna
- Karna_adj: adjectives used around Karna

#### Intiail Visualisation - Processing
Before beginning the visualisation, it was essential to get an understanding of their occurence in the text, which books mentioned them more, what parts of the book; rather which events brought them closer.
- A basic density plot in the books helped to view this.
- Since the books are of unequal length, normalising the character appearances as per parts (10%, 20%, ....90%) helped to know when did the characters get mentioned more in the narrative arcs.

![render1](https://github.com/IllusionInk/Mahabharata/blob/master/art_renders/Processing_renders/mhb_chars.jpg)
![render2](https://github.com/IllusionInk/Mahabharata/blob/master/art_renders/Processing_renders/mhb_chars_norm.jpg)

### Visualization Concept - War formations.
---
Considering how Mahabharata has been a battle between the charachter’s fates. I have tried visualizing the same in a battlefield chase setting.
 - The battlefield is divided into 18 sections (based on the 18 books.)
- The protagonists are depicted by chariots
- Their closest associations are the horses driving these chariots (Size determiend by the no. of mentions. The more no. of times a charachter is mentioned with the protagonist , the closer it is to the concerned protagonist.)
- The leash for the horse would determine the no. of chapters the charachter and protagonist appear together.
- The soldiers in the background would depict the qualitative strength of these protagonists.

#### Concept Sketches
![sketch](https://github.com/IllusionInk/Mahabharata/blob/master/art_renders/Sketches/sketches.jpg)


#### Final Processing Renders
Base plots rendered in processing
- Chariots
![processing_plot](https://github.com/IllusionInk/Mahabharata/blob/master/art_renders/Processing_renders/char_chariots-02.jpg)
----
- Horses
![processing_plot](https://github.com/IllusionInk/Mahabharata/blob/master/art_renders/Processing_renders/maha_karna_horses-01.jpg)

### Final Visualization (W.I.P.)
---
- The final visualization is an A1 sized print visualisation [full size image](https://www.easyzoom.com/imageaccess/cb8e1fb906c0432c82e40b44e852e92a)
![final_viz](https://github.com/IllusionInk/Mahabharata/blob/master/art_renders/Mahabharata_full.jpg)


### Tasks to be done
---
- [x] Adjective soldiers
- [x] Leash for the horses
- [x] Annotations
- [x] Brief description

### Tools 
---
- **Python**:
   - ***spacy, nltk*** : Natural language processing libraries used for structuring the dataset on each word and other operations as word tokenization, part of speech detection etc.
   - ***pandas, numpy*** : Python libraries used for basic python operations such as generating dataframes (tables to store data), arithmetic operations on these dataframes and more.

- **Processing**: 
   - Generating base plots for charachter mentions, closest associated charachters and adjectives used for charachter descriptions.
   - ***processing.pdf***: Used for exporting plots as pdf, to be edited later in Illustrator.

- **Illustrator** - Composing the rendered charts in the final layout. Adding annotations and insights to the visualization.

### References
---
- Source Material [The book - Mahabharata](http://www.sacred-texts.com/hin/maha/index.htm)
 - Other Reference visualizations - [Gramener](https://gramener.com/mahabharatha/)

