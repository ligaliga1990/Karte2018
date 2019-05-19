int o = 500; //Changes the number of bacteria

int largest_number = 0;
long next_tick;

Animation[] n_america; //Declaration of the class
Animation[] s_america; //Declaration of the class
Animation[] europe; //Declaration of the class
Animation[] africa; //Declaration of the class
Animation[] asia; //Declaration of the class
Animation[] oceania; //Declaration of the class

int [][] n_america_coords = {
  { 295, 561, 1, 0 },
  { 352, 406, 1, 0 },
  { 394, 531, 15, 0 },
  { 702, 180, 15, 0 },
  { 394, 235, 15, 0 },
  { 202, 465, 10, 0 }
};

int [][] s_america_coords = {
  { 390, 622, 45, 0 },
  { 580, 840, 25, 0 },
  { 631, 733, 20, 0 },
  { 421, 790, 10, 0 }
};

int [][] europe_coords = {
  { 909, 315, 40, 0 },
  { 873, 310, 25, 0 },
  { 834, 300, 10, 0 },
  { 987, 324, 10, 0 },
  { 1150, 291, 5, 0 },
  { 837, 394, 1, 0 }
};

int [][] africa_coords = {
  { 901, 438, 30, 0 },
  { 916, 609, 35, 0 },
  { 1102, 598, 20, 0 },
  { 1075, 669, 10, 0 },
  { 1155, 816, 5, 0 },
  { 895, 432, 1, 0 },
  { 825, 453, 1, 0 }
};

int [][] asia_coords = {
  { 1342, 522, 50, 0 },
  { 1537, 477, 31, 0 },
  { 1653, 615, 7, 0 },
  { 1195, 285, 6, 0 },
  { 1576, 738, 3, 0 },
  { 1573, 741, 2, 0 },
  { 1627, 702, 1, 0 }, 
  { 1441, 495, 1, 0 },
  { 1138, 511, 1, 0 },
  { 1122, 481, 1, 0 }
  
};

int [][] oceania_coords = {
  { 1749, 928, 45, 0 },
  { 1756, 717, 30, 0 },
  { 1575, 909, 20, 0 },
  { 1716, 988, 1, 0 },
  { 1902, 954, 4, 0},
  { 1587, 679, 4, 0 },
  { 1513, 697, 2, 0 }
};

void init() {

  int africa_points = (int)( total_births_per_day / 100 * AFRICA_BIRTH_COEF + total_deaths_per_day / 100 * AFRICA_DEATH_COEF) / 10;
  int n_america_points = (int)( total_births_per_day / 100 * NORTH_AMERICA_BIRTH_COEF + total_deaths_per_day / 100 * NORTH_AMERICA_DEATH_COEF) / 10;
  int s_america_points = (int)( total_births_per_day / 100 * SOUTH_AMERICA_BIRTH_COEF + total_deaths_per_day / 100 * SOUTH_AMERICA_DEATH_COEF) / 10;
  int europe_points = (int)( total_births_per_day / 100 * EUROPE_BIRTH_COEF + total_deaths_per_day / 100 * EUROPE_DEATH_COEF) / 10;
  int asia_points = (int)( total_births_per_day / 100 * ASIA_BIRTH_COEF + total_deaths_per_day / 100 * ASIA_DEATH_COEF) / 10;
  int oceania_points = (int)( total_births_per_day / 100 * OCEANIA_BIRTH_COEF + total_deaths_per_day / 100 * OCEANIA_DEATH_COEF) / 10;
  
  if (africa_points > largest_number) largest_number = africa_points;
  if (n_america_points > largest_number) largest_number = n_america_points;
  if (s_america_points > largest_number) largest_number = s_america_points;
  if (europe_points > largest_number) largest_number = europe_points;
  if (asia_points > largest_number) largest_number = asia_points;
  if (oceania_points > largest_number) largest_number = oceania_points;
  
  africa = new Animation[africa_points];
  n_america = new Animation[n_america_points];
  s_america = new Animation[s_america_points];
  europe = new Animation[europe_points];
  asia = new Animation[asia_points];
  oceania = new Animation[oceania_points];
    
  for(int i=0; i < largest_number; i++) {    
    if (n_america.length > i) {
      n_america[i] = new Animation("n_america", n_america_coords, NORTH_AMERICA_BIRTH_COEF, NORTH_AMERICA_DEATH_COEF, n_america_points);
    }
    
    if (s_america.length > i) {
      s_america[i] = new Animation("s_america", s_america_coords, SOUTH_AMERICA_BIRTH_COEF, SOUTH_AMERICA_DEATH_COEF, s_america_points);
    }
    
    if (europe.length > i) {
      europe[i] = new Animation("europe", europe_coords, EUROPE_BIRTH_COEF, EUROPE_DEATH_COEF, europe_points);
    }
    
    if (africa.length > i) {
      africa[i] = new Animation("africa", africa_coords, AFRICA_BIRTH_COEF, AFRICA_DEATH_COEF, africa_points);
    }
    
    if (asia.length > i) {
      asia[i] = new Animation("asia", asia_coords, ASIA_BIRTH_COEF, ASIA_DEATH_COEF, asia_points);
    }
    
    if (oceania.length > i) {
      oceania[i] = new Animation("oceania", oceania_coords, OCEANIA_BIRTH_COEF, OCEANIA_DEATH_COEF, oceania_points);
    }
  }
}

void draw_birth_death_data() {
  if (millis() > next_tick) {
    for(int i=0; i < largest_number; i++){ //Each object does these actions  
      if (n_america.length > i) {
        n_america[i].walk(); //moves
        n_america[i].show(); //draws
      }
      
      if (s_america.length > i) {
        s_america[i].walk(); //moves
        s_america[i].show(); //draws
      }
      
      if (europe.length > i) {
        europe[i].walk(); //moves
        europe[i].show(); //draws
      }
      
      if (africa.length > i) {
        africa[i].walk(); //moves
        africa[i].show(); //draws
      }
      
      
      if (asia.length > i) {
        asia[i].walk(); //moves
        asia[i].show(); //draws
      }
      
      if (oceania.length > i) {
        oceania[i].walk(); //moves
        oceania[i].show(); //draws
      }
    }
    next_tick = millis() + (long) random(0, 100);
  }
}

int get_coord_alpha_value(int x, int y) {
    PImage tmpImage = map_transparent_bg_img.get(x, y, 1, 1);
    int t_alpha_value = (int) alpha(tmpImage.pixels[0]);
    return t_alpha_value;
  }

class Animation {
  int c_myX, c_myY;
  int n_myX, n_myY;
  int line_color;
  float birth_coef, death_coef;
  
  
  Animation(String type, int[][] coord_list, float g_birth_coef, float g_death_coef, int area_total_points) {
    int active_index = (int)random(0, coord_list.length);
    
    //for(int i = 0; i < coord_list.length; i++) {
    //  int used_points = coord_list[i][3];
    //  int percents = used_points / area_total_points * 200;
    //  println(type);
    //  println(percents);
      
    //  if (percents < coord_list[i][2]) {
    //    active_index = i;
    //    coord_list[i][3] += 1;

    //    switch(type) {
    //      case "n_america":
    //        n_america_coords[i][3] += 1;
    //        break;
    //      case "s_america":
    //        s_america_coords[i][3] += 1;
    //        break;
    //      case "europe":
    //        europe_coords[i][3] += 1;
    //        break;
    //      case "africa":
    //        africa_coords[i][3] += 1;
    //        break;
    //      case "asia":
    //        asia_coords[i][3] += 1;
    //        break;
    //      case "oceania":
    //        oceania_coords[i][3] += 1;
    //        break;
    //    }
    //    break;
    //  }
    //}
    
    //int random_place_index = (int) random(0, coord_list.length);
    
    c_myX = (int) coord_list[active_index][0]; //Start x
    c_myY = (int) coord_list[active_index][1]; //Start y
    
    birth_coef = g_birth_coef;
    death_coef = g_death_coef;
    
    line_color = (int) random(0, 255);
  }
  
  void calculate_new_coords() {
    int t_myX, t_myY;
    
    int rand_x = (int) (Math.random() * 3) - 1;
    int rand_y = (int) (Math.random() * 3) - 1;
    
    t_myX = (int) c_myX + rand_x;
    t_myY = (int) c_myY + rand_y;
   
    int t_alpha_value = get_coord_alpha_value(t_myX, t_myY);
 
    if (t_alpha_value > 200) {
      n_myX = t_myX;
      n_myY = t_myY;
      return;
    } 
  }
  
  void walk(){ // Normal walk == moves one space in a random direction
    calculate_new_coords();
  }
  
  void show(){ //Draws Bacteria/ Bacteria Trail
    noStroke();
   
    fill(line_color); //Change for differnt colors
    
    c_myX = n_myX;
    c_myY = n_myY;
    
    ellipse(c_myX, c_myY, .75, .75);    
  }
}
