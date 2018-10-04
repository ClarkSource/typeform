
final name = "typeform"

  node('ruby') {
    stage('ruby build') {
        final scmVars = checkout scm
        cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: 'vendor/bundle']], maxCacheSize: 9999) {
          sh 'bundle install  --path vendor/bundle'
        }
    }
  }

  node('docker') {
    stage('unstash') {
     cache(caches: [[$class: 'ArbitraryFileCache', excludes: '', includes: '**/*', path: 'vendor/bundle']], maxCacheSize: 9999) {
      sh 'ls -lash'
     }
    }
  }




