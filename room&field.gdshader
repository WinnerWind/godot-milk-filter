shader_type canvas_item;


uniform sampler2D SCREEN_TEXTURE : hint_screen_texture,filter_nearest,repeat_disable;

void fragment() {
	//set pallet
	vec3 palette[8];
		palette[0] = vec3(0.000, 0.051, 0.000);
		palette[1] = vec3(0.086, 0.176, 0.094);
   		palette[2] = vec3(0.149, 0.271, 0.145);
		palette[3] = vec3(0.310, 0.486, 0.255);
		palette[4] = vec3(0.525, 0.631, 0.388);
   		palette[5] = vec3(0.969, 0.859, 0.651);
		palette[6] = vec3(0.953, 0.882, 0.769);
   		palette[7] = vec3(0.933, 0.906, 0.871);

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
