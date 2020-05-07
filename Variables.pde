import processing.sound.*;

int LXrect_new = 120;  //distance between the "New song" button (relative to Xrect_new) and the left side of the sketch 
int Xrect_new;         //Xpos of the "New song" button
int Yrect_new = 20;    //Ypos of the "New song", "Close" and "Back" buttons
int Wrect_new;         //width of the "New song", "Close" and "Back" buttons
int Hrect_new = 30;    //height of the "New song", "Close" and "Back" buttons

int Xrect_close = 20;  //Xpos of the "Close" and "Back" buttons. Xpos, width and height are the same as the "New song" one

int Ytop = 0;

int Ymin = 80;    //Minimum Ypos of the links

int i, j, k;        //tmp variables
String tmp;         //tmp variable
JSONArray tmp_arr;  //tmp variable

char state = 'M';  //M = menu, N = new song
char input = ' ';  //T = title, A = author

PFont font;

String title = "";  //Title of the song
String author = ""; //Author of the song
String link = "";   //Link to the song folder
int capo = 0;       //The position where the n

JSONObject index;          //The whole JSON file
JSONObject abbreviations;  //The first, constant part of the JSON file
JSONObject general;        //The second part of the JSON, where there is all general info
JSONArray songs;           //The third part of the JSON, where there is all the info about the songs

int Nsongs;
int Dim;  //see Index.json

int SongIndex;    //The index of the selected song (SongIndex = n means that it is the song with ID = n+1 due to array index starting from 0)

JSONObject song;

Minim minim = new Minim(this);
AudioPlayer audio;
PImage tab;

boolean playing = false;

int time = 0;

int Ytab;

int Max_tab_width = 1300;

int skip = 5;

boolean found;

int[] Alph;

PImage notes;
int Wnotes;
