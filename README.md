# Song_scroller
This is a pc application, made by a guitarist for musicians, in particular for other guitar players.

# Compatibility
This app works on Windows and Linux. I do not have the possibility to test it on macOS.

# Programming language
This application is written using Processing 3 in Java mode, which is the default mode with Processing. You can write and compile your own programs with Processing 3 simply downloading it from [here](https://processing.org/download/)

# Disclaimer
I have made this application for myself, and then decided to share it with other musicians who need it. However, since I'm ok with how it works, I do not think I will apply any changes. If you do want to modify the code, please feel free to download my code and modify it as you like. However, please do not ask me to add more functionalities, since I do not intend to continue working on this app, I just want to enjoy using it. However, if you report something that is different from what is described here, it is clearly a bug, and you should feel free to report it. Thanks

# Install
## Windows
- From the [download page]() download the application for the version of your Windows (x32 or x64)
- Unzip the zipped folder wherever you want on your computer
- Launch the "Music.exe", and you are ready to go

## Linux
todo

# Usage
## Data storage
All data are stored in the "data" folder.
Inside that folder you should have at least an image called "notes.png", a JSON file called "Index.json" and a subfolder for every song you have in the application.
The download comes with 3 JSON files:
- "Index.json" is the one which is used, at the moment oh download it is empty
- "Index (empty).json" is a copy of an empty JSON, if you needed to reset the index, you can just delete the other one and rename this to "Index.json"
- "Index (example).json" is a JSON with 2 songs already inserted. If you want to see how the app works before inserting your ones, you can just delete the other JSON file and rename this to "Index.json"
In the newly-downloaded app, in the "data" folder there are two sub-folders, each one containing one of the example songs.

If you need to modify a song's seggings, just edit the JSON file. However, if you want to remove a song, it will be a bit more tricky, please refer underneath to do that. 

## Main menu
In the main menu you have the list of the songs you have.
You can:
- select one song by clicking on it
- scroll the song list using either your mouse wheel or the up/down arrows
- close the application with the "Close" button
- insert a new song with the "New song" button

## New song
You will be asked to insert, in this order, the song title, the artist, the folder name and the capo. Do not worry if you do not see a cursor, there isn't.
The capo (for non-guitar players) is a tool that guitarists use to transpose down the tune of a song (eg a song played in Emajor with the capo 1, results in the same song if it was played in Fmajor on a normal guitar). If you do not play the guitar, you can still use the capo field to write the transpose you need, but please remember that negative numbers are not accepted.

When you create a new song, you will also have to create a sub-folder, in the "data" folder, with the same name you insert into the "Folder name" in the app. Please consider using a name without spaces, I do not guarantee it would work in that case
Inside this folder, you will have to put a file called "Audio.mp3" and another one called "tab.png". Please check all your spelling and capital letters, both in the name of the folder and these files, because even a single misspell would break the app. 

The mp3 file should be as long as the song itself (so please remove all the silences at the beginning and at the end), or you will risk the autoscroll not to work properly.
For the same reason, the tab should have the same lenght in time and in lines (eg if a line of the tab lasts for 2 beats, each line of the tab should last 2 beats)

## Song
Now it's time to play the song you have chosen.
In this menu you will be able to:
- see the title and the artist of the song, and see which capo (or transpose) settings you need
- start and pause the audio and the autoscroll of the song using either the "Play" and "Pause" buttons or the spacebar
- return to the begginning of the song by pressing the number 0
- move 5 seconds forward or backwards using the left and right arrow keys
Unfortunatelly I have tried to add volume control, but it doesn't work

# Remove a song
Since I do not really need it, I haven't done an automated way to do so.
However, if you really have to remove a song, you can do it by following these steps in the "Index.json" file:
- look at the ID of the song you want to remove
- lower all the following IDs by one
- in the "General"/"Alph" list, lower every number greater than your ID by one, and remove the number which is equal to your ID
- remove the section that represents your song (similar to what below)
- please check that after every closing brace there is one comma, except for the last one which should have a closed square bracket instead
'''
    {
      "capo": 6,
      "link": "The_sound_of_silence",
      "Title": "The Sound of Silence",
      "Author": "Disturbed",
      "ID": 0
    }
'''
