@Library('libpipelines@preproduction') _

hose {
    EMAIL = 'cd'
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