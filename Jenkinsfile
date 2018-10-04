
final name = "typeform"

node('ruby') {
  cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: '${WORKSPACE}/vendor/bundle']], maxCacheSize: 9999) {
    stage('ruby build') {
      final scmVars = checkout scm
      sh 'bundle install  --path vendor/bundle'
    }
  }

  stage('wait'){
    sh 'sleep 60'
  }
}

node('docker') {
  cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: '${WORKSPACE}/vendor/bundle']], maxCacheSize: 9999) {
    stage('unstash') {
      sh 'ls -lash'
    }
  }
}
