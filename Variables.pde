import ddf.minim.*;    //The library needed for the audio player

int LXrect_new = 120;  //distance between the "New song" button (relative to Xrect_new) and the left side of the sketch 
int Xrect_new;         //Xpos of the "New song" button
int Yrect_new = 20;    //Ypos of the "New song", "Play/Pause", "Close" and "Back" buttons
int Wrect_new;         //width of the "New song", "Play/Pause", "Close" and "Back" buttons
int Hrect_new = 30;    //height of the "New song", "Play/Pause", "Close" and "Back" buttons

int Xrect_close = 20;  //Xpos of the "Play/Pause", "Close" and "Back" buttons. Xpos, width and height are the same as the "New song" one

int Ytop = 0;     //The (non-positive) Ypos where the app is starting writing the songs title (used for the scrolling in the menu). Ytop is not relative to Y = 0 but Y = Ytop 

int Ymin = 80;    //Minimum Ypos of the links

int i, j, k;        //tmp variables
String tmp;         //tmp variable
JSONArray tmp_arr;  //tmp variable

char state = 'M';  //What screen the app has to display: M = menu, N = new song, S = song
char input = ' ';  //What input the app is taking when inserting a new song: T = title, A = author, L = link, C = capo

PFont font;      //The font used in the app

String title = "";  //Title of the song
String author = ""; //Author of the song
String link = "";   //Link to the song folder
int capo = 0;       //The position where the n

JSONObject index;          //The whole JSON file
JSONObject abbreviations;  //The first, constant part of the JSON file
JSONObject general;        //The second part of the JSON, where there is all general info
JSONArray songs;           //The third part of the JSON, where there is all the info about the songs

int Nsongs;    //Number of songs
int Dim;       //Height of half the clickable box

int SongIndex;    //The index of the selected song

JSONObject song;    //All the JSON information of the selected song

Minim minim = new Minim(this);  //Needed for the audio player
AudioPlayer audio;              //The audio player itself
PImage tab;                     //The image of the tab

boolean playing = false;    //Is the application playing a song?

int Ytab;      //Ypos of the tab image

int Max_tab_width = 1300;  //Max width of the tab imgae

int skip = 5;      //Number of seconds to skip when we want to skip while playing a song

boolean found;    //Has the position where to put the new song in Alph been found?

int[] Alph;    //The Id list of the songs ordered alphabetically by title

PImage notes;  //The image of the notes you see in the main menu
int Wnotes;    //The width of the image of the notes you see in the main menu
