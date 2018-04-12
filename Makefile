all: clean compile

change-version:
	bin/change-version.sh ${version}

clean:
	bin/clean.sh

compile:
	bin/compile.sh

package:
	bin/package.sh

deploy:
	bin/deploy.sh

