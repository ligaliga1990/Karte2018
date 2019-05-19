final int display = 2;
final int interval = 100; // -- 100 ms

float global_birth_today = 0;
float global_death_today = 0;

PImage map_transparent_bg_img;
PImage map_transparent_map_img;

final color bg_color = color(255);
final color inverse_bg_color = color(0);

void setup() {
  fullScreen(display);
  map_transparent_bg_img = loadImage("world_map_bg_transparent.png");
  //map_transparent_bg_img.resize(displayWidth, displayHeight);
  map_transparent_map_img = loadImage("world_map_transparent.png");
  //map_transparent_map_img.resize(displayWidth, displayHeight);
  
  background(bg_color);
  image(map_transparent_bg_img, 0, 0);
  init();
  
  println(get_coord_alpha_value(0, 0));
}

void draw() {  
  draw_birth_death_data();
  image(map_transparent_map_img, 0, 0);
  
  calculate_todays_birth_number();
  calculate_todays_death_number();
  
  draw_birth_number();
  draw_death_number();
}
