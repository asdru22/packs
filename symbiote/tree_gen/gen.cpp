#include <iostream>
#include <string>
#include <fstream>
#include <string.h>
using namespace std;

void replace_all(
	string& s,
	string const& toReplace,
	string const& replaceWith
) {
	string buf;
	size_t pos = 0;
	size_t prevPos;

	// Reserves rough estimate of final size of string.
	buf.reserve(s.size());

	while (true) {
		prevPos = pos;
		pos = s.find(toReplace, pos);
		if (pos == string::npos)
			break;
		buf.append(s, prevPos, pos - prevPos);
		buf += replaceWith;
		pos += toReplace.size();
	}

	buf.append(s, prevPos, s.size() - prevPos);
	s.swap(buf);
}

const string r1 = "{\"texture_size\":[64,64],\"textures\":{\"0\":\"asy:block/billboard/display/background\",\"1\":\"asy:block/billboard/display/";
const string r2 = "\"},\"elements\":[{\"from\":[8,-16,-16],\"to\":[8,32,32],\"rotation\":{\"angle\":0,\"axis\":\"y\",\"origin\":[8,0,8]},\"faces\":{\"west\":{\"uv\":[0,0,16,16],\"texture\":\"#0\"}}},{\"from\":[8,-16,-16],\"to\":[8,32,32],\"rotation\":{\"angle\":0,\"axis\":\"y\",\"origin\":[8,0,8]},\"faces\":{\"west\":{\"uv\":[0,0,16,16],\"texture\":\"#1\"}}}],\"display\":{\"thirdperson_righthand\":{\"rotation\":[75,45,0],\"translation\":[0,2.5,0],\"scale\":[0.375,0.375,0.375]},\"thirdperson_lefthand\":{\"rotation\":[75,45,0],\"translation\":[0,2.5,0],\"scale\":[0.375,0.375,0.375]},\"firstperson_righthand\":{\"rotation\":[0,45,0],\"scale\":[0.4,0.4,0.4]},\"firstperson_lefthand\":{\"rotation\":[0,225,0],\"scale\":[0.4,0.4,0.4]},\"ground\":{\"translation\":[0,3,0],\"scale\":[0.25,0.25,0.25]},\"gui\":{\"rotation\":[30,225,0],\"scale\":[0.625,0.625,0.625]},\"head\":{\"rotation\":[0,180,0],\"translation\":[5,-30.09,0],\"scale\":[1.602,1.602,1.602]},\"fixed\":{\"scale\":[0.5,0.5,0.5]}}}";
const string g1 = "{\"texture_size\":[32,32],\"textures\":{\"0\":\"asy:block/billboard/buttons/";
const string g2 = "\"},\"elements\":[{\"from\":[0,0,8],\"to\":[16,16,8],\"faces\":{\"north\":{\"uv\":[16,0,0,16],\"texture\":\"#0\"},\"east\":{\"uv\":[0,0,0,8],\"texture\":\"#0\"},\"south\":{\"uv\":[0,0,16,16],\"texture\":\"#0\"},\"west\":{\"uv\":[0,0,0,8],\"texture\":\"#0\"},\"up\":{\"uv\":[8,0,0,0],\"texture\":\"#0\"},\"down\":{\"uv\":[8,0,0,0],\"texture\":\"#0\"}}}],\"display\":{\"head\":{\"rotation\":[0,90.5,0],\"translation\":[7.75,-33,0],\"scale\":[0.8,0.8,0.8]}}}";

int models(string type) {
	int cmd = 0;
	cout << type;
	if (type == "$en") cmd = 1;
	else if (type == "$es") cmd = 2;
	else if (type == "$ew") cmd = 3;
	else if (type == "$ns") cmd = 4;
	else if (type == "$nw") cmd = 5;
	else if (type == "$sw") cmd = 6;
	else if (type == "$wns") cmd = 7;
	else if (type == "$ens") cmd = 8;
	else if (type == "$enw") cmd = 9;

	else (cmd * 2 + 1) / 2;
	return cmd;
}
int main() {
	ifstream inf;
	inf.open("C:/Users/aln20/Documents/GitHub/electromancy/tree_gen/in.txt");
	string st;

	if (inf.fail()) cout << "fail";
	while (inf >> st) {
		//get elegant code
		st.erase(0, 125);
		st = st.substr(0, st.size() - 6);
		replace_all(st, "},{", "\n");
		st.erase(0, 1);
		//remove uneceessary data
		replace_all(st, "id:'{\"text\":\"", "");
		replace_all(st, "\"}',progress:", " ");
		replace_all(st, ",x:", " ");
		replace_all(st, ",z:", " ");
	}
	inf.close();
	ofstream outp;
	outp.open("C:/Users/aln20/Documents/GitHub/electromancy/tree_gen/in.txt");
	outp << st;
	outp.close();

	ofstream file, glass, gunpowder, writer;
	file.open("C:/Users/aln20/Documents/GitHub/electromancy/datapack/data/asy/functions/block/billboard/handling/tree.mcfunction");
	glass.open("C:/Users/aln20/Documents/GitHub/electromancy/resourcepack/assets/minecraft/models/item/glass.json");
	gunpowder.open("C:/Users/aln20/Documents/GitHub/electromancy/resourcepack/assets/minecraft/models/item/gunpowder.json");

	int x, y, cmd, counter = 0, iter = 0;
	ifstream infile;
	string str, type, progress;
	infile.open("C:/Users/aln20/Documents/GitHub/electromancy/tree_gen/in.txt");

	gunpowder << "{\"parent\": \"minecraft:item/generated\",\"textures\": {\"layer0\": \"minecraft:item/gunpowder\"},\"overrides\": [";
	glass << "{\"parent\": \"minecraft:block/cube_all\",\"textures\": {\"all\": \"minecraft:block/glass\"},\"overrides\": [";

	if (infile.fail()) cout << "fail";
	while (infile >> str) { // id, progress, x,z
		//cout << str << endl;
		if (counter == 0) {
			type = str;
			if (type[0] == '$') cmd = models(str);
		}
		else if (counter == 1) {
			progress = str;

		}
		else if (counter == 2) x = stoi(str);
		else if (counter == 3) {
			y = stoi(str);
			file << "execute if score .progress asy.data matches " << progress << ".. run summon armor_stand ~ ~" << -y / 2.0 << " ~" << x / 2.0;
			file << " {NoGravity:1b, Invulnerable : 1b, Marker : 1b, Invisible:1b, Tags : [\"asy.billboard\", \"asy.display\", \"asy.setup\"], ArmorItems : [{}, {}, {}, { id:\"minecraft:";
			if (type[0] == '$') {// if connector
				type = "connector";
				file << "quartz\",Count : 1b,tag : {CustomModelData:" << 6901000 + cmd << "}}]}\n";

			}
			else {
				file << "gunpowder\",Count : 1b,tag : {CustomModelData:" << 6901000 + iter << ",asy:{cmd:" << 6901000 + iter << ",click:\"" << type << "\"}}}]}\n";

				glass << "{\"predicate\": {\"custom_model_data\": " << 6901000 + iter << "},\"model\": \"asy:block/billboard/display/" << type << "\"},\n";
				gunpowder << "{\"predicate\": {\"custom_model_data\": " << 6901000 + iter << "},\"model\": \"asy:block/billboard/buttons/" << type << "\"},\n";

				writer.open("C:/Users/aln20/Documents/GitHub/electromancy/resourcepack/assets/asy/models/block/billboard/buttons/" + type + ".json");
				writer << g1 << type << g2;
				writer.close();

				writer.open("C:/Users/aln20/Documents/GitHub/electromancy/resourcepack/assets/asy/models/block/billboard/display/" + type + ".json");
				writer << r1 << type << r2;
				writer.close();

				iter += 1;
			}
			cmd = 0;
			counter = -1;
		}
		counter += 1;
	}
	file << "\nexecute as @e[type=#asy:billboard,tag=asy.billboard,tag=asy.setup] run function asy:block/billboard/handling/setup";
	glass << "{\"predicate\": {\"custom_model_data\":"<< 6901000+iter<<"},\"model\": \"item/diamond\"}]}";
	gunpowder << "{\"predicate\": {\"custom_model_data\":"<< 6901000+iter<<"},\"model\": \"item/diamond\"}]}";
	glass.close();
	gunpowder.close();

	infile.close();
	outp.open("C:/Users/aln20/Documents/GitHub/electromancy/tree_gen/in.txt");
	outp << "Done!";
	outp.close();
	return 0;
}