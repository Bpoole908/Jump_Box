//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


void main()
{
    vec4 original = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4(0.101, 0.737, 0.611, original.a);//v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

