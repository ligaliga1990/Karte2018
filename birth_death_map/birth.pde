final float global_birth_rate = 4.3; // -- global birth rate per second

float total_births_per_day = (86400 * global_birth_rate);

final float NORTH_AMERICA_BIRTH_COEF = 0.30;
final float SOUTH_AMERICA_BIRTH_COEF = 0.23;
final float EUROPE_BIRTH_COEF = 0.21;
final float AFRICA_BIRTH_COEF = 1.32;
final float ASIA_BIRTH_COEF = 2.27;
final float OCEANIA_BIRTH_COEF = 0.1;

void calculate_todays_birth_number() {
  int s = second();  // -- values from 0 - 59
  int m = minute();  // -- values from 0 - 59
  int h = hour();    // -- values from 0 - 23
    
  global_birth_today = 0;
  global_birth_today += h * 3600 * global_birth_rate;
  global_birth_today += m * 60 * global_birth_rate;
  global_birth_today += s * global_birth_rate;
}

void append_newborns() {
  float divider = 1000 / interval;
  global_birth_today += (global_birth_rate / divider);
}

void draw_birth_number() {
  //-- draw rectangle to clear text  
  textSize(32);
  textAlign(RIGHT);
  fill(inverse_bg_color);
  text("+ " + int(global_birth_today), displayWidth - 50, 50);
}
