shader_type canvas_item;


uniform sampler2D SCREEN_TEXTURE : hint_screen_texture,filter_nearest,repeat_disable;

void fragment() {
	//set pallet
	vec3 palette[3];
		palette[0] = vec3(0.000, 0.000, 0.000);
		palette[1] = vec3(0.365, 0.004, 0.125);
		palette[2] = vec3(0.486, 0.075, 0.553);

	// find closest colour
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
