@Library('libpipelines@master') _

hose {
    EMAIL = 'cd'
    NEW_VERSIONING = 'true'
    BUILDTOOL = 'make'
    DEPLOYONPRS = true

    DEV = { config ->
        echo 'THIS IS MASTER'
        doCompile(config)
        doUT(config)
        doPackage(config)
        doDeploy(config)
        doDocker(conf: config, skipOnPR: false)
        }
}
