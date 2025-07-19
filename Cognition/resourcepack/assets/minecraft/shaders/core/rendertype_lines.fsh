#version 150

#moj_import <fog.glsl>

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;

out vec4 fragColor;

#define EQ(a,b) (length(a - b) < 0.01)

void main() {
    // Remove fishing rod under certain conditions
    if (vertexColor.rgb == vec3(0.0) && vertexColor.a > 0.9 && vertexDistance < 1.0) discard;
    
    // Calculate color with modulator
    vec4 color = vertexColor * ColorModulator;
    
    // Adjust fog based on vertex distance
    if (vertexDistance >= 5.0) {
        // If the vertexDistance is 5 or more, potentially adjust rendering logic here
        // For example, bypass fog to ensure visibility
        fragColor = color;
    } else {
        // Apply fog normally
        fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
    }
}

