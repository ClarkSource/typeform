
final name = "typeform"

node('ruby') {
  cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: '${WORKSPACE}/vendor/bundle']], maxCacheSize: 9999) {
    stage('ruby build') {
      final scmVars = checkout scm
      sh 'ls -lash'
      sh 'ls -R'
      sh 'cd ${WORKSPACE}'
    }


  }

  stage('wait'){
    sh 'ls -R'
    sh 'ls -lash'

  }
}

node('docker') {
  cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: '${WORKSPACE}/vendor/bundle']], maxCacheSize: 9999) {
    stage('unstash') {
      sh 'ls -lash'
    }
  }
}
