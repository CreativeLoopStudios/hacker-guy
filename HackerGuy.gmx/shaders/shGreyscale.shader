//
// Simple passthrough vertex shader
//
attribute vec4 in_Position;                  // (x,y,z,j)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 vTc;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    vTc = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 vTc;

void main()
{
    vec4 irgba = texture2D(gm_BaseTexture, vTc);
    float luminance = dot(irgba.rgb, vec3(0.2125, 0.7154, 0.0721));
    gl_FragColor = vec4(luminance, luminance, luminance, irgba.a);
}

