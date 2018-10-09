
final name = "typeform"

node('ruby') {
    stage('ruby build') {
      final scmVars = checkout scm
      cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*.gem', path: '${WORKSPACE}/vendor/cache']], maxCacheSize: 9999) {
        sh 'bundle package --path=.'
        sh 'bundle install --path=vendor/bundle'
      }
    }
}

node('docker') {
    stage('inspect cache') {
      cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*.gem', path: '${WORKSPACE}/vendor/cache']], maxCacheSize: 9999) {
        sh 'ls -lash'
      }
    }
}
