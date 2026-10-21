#include <iostream>

#include <cpr/cpr.h>

#define PROJECTNAME "placeholder"

void argCheck(int argCount) {
	if (argCount < 2) {
		std::cout << PROJECTNAME << ", Error 1: No URL provided.";
		exit(1);
	}
}

int main(int argc, char *argv[]) {
	argCheck(argc);
	cpr::Response r = cpr::Get(
		cpr::Url{argv[1]},
		cpr::Authentication{"user", "pass", cpr::AuthMode::BASIC},
		cpr::Parameters{{"anon", "true"}, {"key", "value"}}
	);
	std::cout << r.text << "\n";
	return 0;
}