shader_type canvas_item;

uniform vec3 palette[3];
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture,filter_nearest,repeat_disable;

void fragment() {
	//Find closest colour

	vec3 screen_texture_color = texture(SCREEN_TEXTURE,UV).rgb;
	vec3 difference = screen_texture_color - palette[0]; //Assume first colour is the difference
	float dist = dot(difference,difference); //Find length squared between difference and difference

	float closest_distance = dist; //Assume we already found the closest distance
	vec3 closest_color = palette[0]; //Assume we found the closest colour to be the first.b

	for(int i = 0;i< palette.length(); i++)
	{
		difference = screen_texture_color - palette[i];
		dist = dot(difference,difference); // Get length

		if(dist<closest_distance){ //This colour must be closer to the original
			closest_distance = dist;
			closest_color = palette[i];
		}
	}
	COLOR.rgb = closest_color;
}
