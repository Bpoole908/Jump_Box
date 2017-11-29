//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


void main()
{
    vec4 original = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4(0.423, 0.478, 0.537, original.a);//v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

