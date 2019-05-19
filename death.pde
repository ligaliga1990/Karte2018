final float global_death_rate = 1.8; // -- global death rate per second

float total_deaths_per_day = (86400 * global_death_rate);

final float NORTH_AMERICA_DEATH_COEF = 0.05;
final float SOUTH_AMERICA_DEATH_COEF = 0.15;
final float EUROPE_DEATH_COEF = 0.25;
final float AFRICA_DEATH_COEF = 0.38;
final float ASIA_DEATH_COEF = 0.97;
final float OCEANIA_DEATH_COEF = 0.008;

void calculate_todays_death_number() {
  int s = second();  // -- values from 0 - 59
  int m = minute();  // -- values from 0 - 59
  int h = hour();    // -- values from 0 - 23
   
  global_death_today = 0;
  global_death_today += h * 3600 * global_death_rate;
  global_death_today += m * 60 * global_death_rate;
  global_death_today += s * global_death_rate;
}

void append_deads() {
  float divider = 1000 / interval;
  global_death_today += (global_death_rate / divider);
}

void draw_death_number() {
  //-- draw rectangle to clear text
  fill(bg_color); // color the same as bg_color
  noStroke();
  
  textSize(32);
  textAlign(LEFT);
  fill(inverse_bg_color);
  text("- " + int(global_death_today), 50, 50);
}
