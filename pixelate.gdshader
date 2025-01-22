shader_type canvas_item;
render_mode unshaded;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture,filter_nearest,repeat_disable; //Get screen texture
uniform float pixel_size:hint_range(0.0, 10.0, 1.0) = 3; //Set pixel size here

void fragment() {
	float xcoord = FRAGCOORD.x - mod(FRAGCOORD.x,pixel_size); //Magic
	float ycoord = FRAGCOORD.y - mod(FRAGCOORD.y,pixel_size);
	float shift = floor(pixel_size/2.0);
	COLOR = texture(SCREEN_TEXTURE,vec2(xcoord+shift,ycoord+shift)*SCREEN_PIXEL_SIZE);
}
