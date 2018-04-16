all: clean compile

change-version:
	bin/change-version.sh ${version}

clean:
	bin/clean.sh ${version}

compile:
	bin/compile.sh ${version}

package:
	bin/package.sh ${version}

deploy:
	bin/deploy.sh ${version}

