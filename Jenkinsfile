
final name = "typeform"
cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: 'vendor/bundle']], maxCacheSize: 9999) {

  node('ruby') {
    stage('ruby build') {
        final scmVars = checkout scm
        sh 'bundle install  --path vendor/bundle'

    }
  }

  node('docker') {
    stage('unstash') {
      sh 'ls -lash'
    }
  }
}




