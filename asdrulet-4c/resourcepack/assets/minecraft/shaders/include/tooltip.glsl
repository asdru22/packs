//generated for tooltip shader by Godlander
vec2 pad = vec2(1,3);
ivec3 sizes = ivec3(23,1,7);
uint base = 0x121316f0u;
uint[] tl = uint[](0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x888ca4ffu,0x888ca4ffu,0x474a54ffu,0x888ca4ffu,0x474a54ffu,0x474a54ffu,0xb0b0fffu,0x888ca4ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0xb0b0fffu,0x474a54ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0xb0b0fffu,0x888ca4ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u);
uint[] tr = uint[](0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0x474a54ffu,0x474a54ffu,0x888ca4ffu,0x474a54ffu,0x888ca4ffu,0x888ca4ffu,0xb0b0fffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x888ca4ffu,0xb0b0fffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x474a54ffu,0xb0b0fffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x888ca4ffu,0xb0b0fffu);
uint[] bl = uint[](0xb0b0fffu,0x474a54ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0xb0b0fffu,0x888ca4ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0xb0b0fffu,0x474a54ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0xb0b0fffu,0x888ca4ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0xb0b0fffu,0x888ca4ffu,0x888ca4ffu,0x474a54ffu,0x888ca4ffu,0x474a54ffu,0x474a54ffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u);
uint[] br = uint[](0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x474a54ffu,0xb0b0fffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x888ca4ffu,0xb0b0fffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x474a54ffu,0xb0b0fffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x888ca4ffu,0xb0b0fffu,0x474a54ffu,0x474a54ffu,0x888ca4ffu,0x474a54ffu,0x888ca4ffu,0x888ca4ffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u);
uint[] t = uint[](0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x686e8bffu,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x686e8bffu,0x0u,0x0u,0x0u,0x0u,0x686e8bffu,0x8588aaffu,0x686e8bffu,0x0u,0x0u,0x0u,0x0u,0x686e8bffu,0x0u,0x0u,0x0u,0x0u,0x0u,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0x474a54ffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x474a54ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u);
uint[] l = uint[](0xb0b0fffu,0x474a54ffu,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u);
uint[] r = uint[](0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x474a54ffu,0xb0b0fffu);
uint[] b = uint[](0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x121316f0u,0x474a54ffu,0x474a54ffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x686e8bffu,0x474a54ffu,0x686e8bffu,0x474a54ffu,0x474a54ffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0x8588aaffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0x686e8bffu,0xb0b0fffu,0xb0b0fffu,0xb0b0fffu,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x686e8bffu,0x0u,0x0u,0x0u,0x686e8bffu,0x0u,0x0u,0x0u,0x686e8bffu,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u,0x0u);