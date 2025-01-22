# Milk Filter for Godot
Post Processing effects for Godot, with close reference to the game Milk Outside of a Bag of Milk Outside of a Bag of Milk

# How to use.
![image](https://github.com/user-attachments/assets/bd3ceba6-0c46-4999-92b4-17819b3f1ac2)
1. Grab the Pixelate `.gdshader` and the effect of your choice `.gdshader` from the repo.
2. Set up two Canvas Layers as in the photo.
3. Set up two ColourRects. Make sure that their anchor is set to Full Rect.
4. Set up a new Shader Material on them, and make it use the scripts which you downloaded above. See the picture on their ordering.
5. Set a Pixel Size for the Pixelate shader. Remember that larger the Pixel Size, more is the pixelation. Ideally you want this really low.
6. (Optional) If you used the Palleted shader, then remember to define colours in the ShaderMaterial
7. Enjoy!
# File List
- `pixelate.gdshader` -> Pixelation Filter
- `milk1.gdshader` -> A filter based on Milk Inside of a Bag of Milk Inside of a Bag of Milk
- `milk2.gdshader` -> A filter based on Milk Outside of a Bag of Milk Outside of a Bag of Milk
- `room&field.gdshader` -> A filter based on the Room and Field ending from Milk Outside of a Bag of Milk Outside of a Bag of Milk
- `stairs.gdshader` -> A filter based on the Stairs ending from Milk Outside of a bag of Milk Outside of a Bag of milk
- `palleted.gdshader` -> Same shaders as above, but with colours that can be configured.

# Samples
## No Shader
![image](https://github.com/user-attachments/assets/10acbf31-1422-4b4f-a042-477ecfcbd516)
## Just Pixelate
![image](https://github.com/user-attachments/assets/04de46bb-9ea8-4e73-8017-c1fc73e07fad)
## Milk1 
![image](https://github.com/user-attachments/assets/09d4308a-675d-4f4c-a9b4-5aeacab5248a)
## Milk2
![image](https://github.com/user-attachments/assets/67edb7e4-23e1-4e44-b21c-85aa048169f9)
## Room & Field
![image](https://github.com/user-attachments/assets/1bc36310-4eb2-4035-bf55-b5f50e73c08d)
## Stairs
![image](https://github.com/user-attachments/assets/96ceb97e-2907-46ee-a115-6e273bb53927)

# END
Please [contact me](https://winnerwind.github.io) in case of errors. Enjoy!
