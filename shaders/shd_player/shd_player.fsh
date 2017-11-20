//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 v = texture2D( gm_BaseTexture, v_vTexcoord );
    
	float Green = v.g;
	float Red = v.r;
	float Blue = v.b;
	float Alpha = v.a;
	
	
	vec4 Color = vec4(Red, Green, Blue, Alpha);
	gl_FragColor = Color;
}
