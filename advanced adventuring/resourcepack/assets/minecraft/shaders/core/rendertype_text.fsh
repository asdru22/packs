#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform float GameTime;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec3 position;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    if (color.a < 0.1) {
        discard;
    }

	// #653AA0 - Rainbow Color
	if (vertexColor.r < 0.39142 && vertexColor.r > 0.39141 && vertexColor.g < 0.22478 && vertexColor.g > 0.22477 && vertexColor.b < 0.62007 && vertexColor.b > 0.62006) {
		color = texture(Sampler0, texCoord0) * vec4(cos(GameTime*1875 + 2.094395)/1.75+0.5, cos(GameTime*1875)/1.75+0.5, cos(GameTime*1875 - 2.094395)/1.75+0.5, 1) * ColorModulator;
    }
    else if (vertexColor.r < 0.09689 && vertexColor.r > 0.09688 && vertexColor.g < 0.05426 && vertexColor.g > 0.05425 && vertexColor.b < 0.15501732 && vertexColor.b > 0.15501729) {
        color = texture(Sampler0, texCoord0) * vec4(cos(GameTime*1875 + 2.094395)/8+0.15, cos(GameTime*1875)/8+0.15, cos(GameTime*1875 - 2.094395)/8+0.15, 1) * ColorModulator;
    }
	
	// #653AA4 - Blue/White
	if (vertexColor.r < 0.39142 && vertexColor.r > 0.39141 && vertexColor.g < 0.22478 && vertexColor.g > 0.22477 && vertexColor.b < 0.63558 && vertexColor.b > 0.63557) {
		color = texture(Sampler0, texCoord0) * vec4(cos(GameTime*2500)*0.25+0.3, sin(GameTime*2500 + 2)*0.257+0.637, 1, 1) * ColorModulator;
    }
    else if (vertexColor.r < 0.09689 && vertexColor.r > 0.09688 && vertexColor.g < 0.05426 && vertexColor.g > 0.05425 && vertexColor.b < 0.15890 && vertexColor.b > 0.15889) {
        color = texture(Sampler0, texCoord0) * vec4((cos(GameTime*2500)*0.25+0.3)/4+0.05, (sin(GameTime*2500 + 2)*0.257+0.637)/4+0.05, 0.243, 1) * ColorModulator;
    }
	
	// #653AA2 - Green/Yellow
	
	// #653AA3 - Red/Gold

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
