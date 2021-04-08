@Library('libpipelines@pre') _

hose {
    EMAIL = 'cd'
    MODULE = 'cd-test-makefile'
    REPOSITORY = 'cd-test-makefile'
    BUILDTOOL = 'make'

    NEW_VERSIONING = 'true'
    UPSTREAM_VERSION = '0.1.0'
//     FREESTYLE_BRANCHING = true
    DEBUG = true
    ANCHORE_TEST = false

    DEV = { config ->
        doDockers(
            conf : config,
            dockerImages :[
                [
                    image : "cd-test-makefile",
                    dockerfile : "Dockerfile",
                    conf : config
                ]
            ]
        )
    }
}