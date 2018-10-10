import java.text.SimpleDateFormat

@Library('libpipelines@preproduction') _

hose {
    EMAIL = 'cd'
    BUILDTOOL = 'make'
    REPOSITORYLESS_BUILD = true

    DEV = { config, currentBuild, params ->
	currentBuild.description = params?.NEXT_VERSION
	def ROLLING_RELEASE = false
	if (params?.ROLLING_RELEASE) {
            ROLLING_RELEASE = params?.ROLLING_RELEASE.toBoolean()
        }
        if (ROLLING_RELEASE) {
            def df = new SimpleDateFormat("yyyyMMdd")
            config.INTERNAL_VERSION = "50.04-${df.format(new Date())}"
        } else {
            config.INTERNAL_VERSION = '50.04'
        }
        doDocker(conf: config, skipOnPR: false)
        }
}
