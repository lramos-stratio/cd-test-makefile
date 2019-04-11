@Library('libpipelines@master') _

hose {
    EMAIL = 'cd'
    NEW_VERSIONING = 'true'
    BUILDTOOL = 'make'

    DEV = { config ->
        echo 'THIS IS MASTER'
        doCompile(config)
        doUT(config)
        doPackage(config)
        doStaticAnalysis(config)
        doDeploy(config)
        doDocker(conf: config, skipOnPR: false)
        }
}
