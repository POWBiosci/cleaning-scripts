# cleaning-scripts
Contains bash and python scripts to clean batch record offline data to machine readable format

# Installation

```bash
git clone -b testing https://github.com/POWBiosci/cleaning-scripts.git
```

# Contents
Repository consist of two main files, a bash script (clean.sh) and a python script (clean.py) The bash script performs preliminary cleaning on the csv file and pipes the cleaned output to the python script which strips out all unecessary characters and returns a JMP ready csv.

# Running the Script
Ensure you are in the directory which contains both clean.py and clean.sh and the csv file you have downloaded. Your file structure should like something like the directory below 

```bash
.
├── clean.py
├── clean.sh
└── data.csv
```
Because this is intended for running on the common lab computer you will first have to access bash from the windows terminal. Open the terminal and run the following command

```bash
wsl bash
```
The terminal should then display a # sign to indicate you are now running bash. Now run 

```bash
bash clean.sh 
```
And input the filename of the file you want to clean, the script will now clean your data and output a file named cleaned_data.csv 

# Important Comments
* Make sure your "fermentation samples" sheet is downloaded as a CSV
* Make sure the comments column contains NO commas
* Make sure there is a reactor column that contains the correct reactor corresponding the the case 
* Make sure the initials column only contains initials for samples that were taken 

