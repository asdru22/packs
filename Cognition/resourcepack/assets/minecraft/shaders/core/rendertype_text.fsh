#version 150

#moj_import <minecraft:fog.glsl>

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

    // Reduce the modulus value from 750 to 100 for more frequent diagonal lines
    float offset = mod(position.x + position.y, 100);
    float gameTimeMod = mod(GameTime * 75000, 100);

	// #653AA0 - Specific color check for applying the effect
	if (vertexColor.r < 0.39142 && vertexColor.r > 0.39141 && vertexColor.g < 0.22478 && vertexColor.g > 0.22477 && vertexColor.b < 0.62007 && vertexColor.b > 0.62006) {
		// Apply the effect more frequently by comparing with the new offset
		if (gameTimeMod <= offset && gameTimeMod >= offset - 8) {
            color = texture(Sampler0, texCoord0) * vec4(1.0, 0.843, 0.66, 1) * ColorModulator;
        }
        else {
            color = texture(Sampler0, texCoord0) * vec4(vertexColor.b, 0.3294, 0.3294, 1) * ColorModulator;
        }
    }
    // Another specific color check for different visual treatment
    else if (vertexColor.r < 0.09689 && vertexColor.r > 0.09688 && vertexColor.g < 0.05426 && vertexColor.g > 0.05425 && vertexColor.b < 0.15501732 && vertexColor.b > 0.15501729) {
        if (gameTimeMod <= offset && gameTimeMod >= offset - 8) {
            color = texture(Sampler0, texCoord0) * vec4(0.243, 0.243, 0.243, 1) * ColorModulator;
        }
        else {
            color = texture(Sampler0, texCoord0) * vec4(vertexColor.b, 0.082, 0.082, 1) * ColorModulator;
        }
    }

    // Apply fog
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
