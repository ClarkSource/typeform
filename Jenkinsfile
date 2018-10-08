
final name = "typeform"

node('ruby') {
    stage('ruby build') {
      final scmVars = checkout scm
      cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: '${WORKSPACE}/vendor/bundle']], maxCacheSize: 9999) {

      sh 'bundle install'

      stash name: 'typeform', includes:'**'
    }


  }

  stage('wait'){
    sh 'ls -R'
    sh 'ls -lash'

  }
}

node('docker') {
    stage('unstash') {
      unstash 'typeform'
      sh 'ls -lash'
  }
}
