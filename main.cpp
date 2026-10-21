#include <iostream>

#include <cpr/cpr.h>

#define PROJECTNAME "Gargoogol Molybdenum"

void argCheck(int argCount) {
	if (argCount < 2) {
		std::cout << PROJECTNAME << ", Error 1: No URL provided.";
		exit(1);
	}
}

void ggmb_main(int argc, char *argv[]) {
	argCheck(argc);
	cpr::Response r = cpr::Get(
		cpr::Url{argv[1]},
		cpr::Authentication{"user", "pass", cpr::AuthMode::BASIC},
		cpr::Parameters{{"anon", "true"}, {"key", "value"}}
	);
	std::cout << r.text << "\n";
}

//Some ugly fugly shit
int main(int argc, char *argv[]) {
	ggmb_main(argc, argv);
	exit(0);
	return 0;
}