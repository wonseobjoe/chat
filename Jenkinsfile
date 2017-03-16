node {
   // Mark the code checkout 'stage'....
   stage 'Checkout'
   echo 'Hello, from SCM checkout stage'

   // Get some code from a GitHub repository
   git url: 'https://github.com/wonseobjoe/go-middelware-demo.git'
   sh "git rev-parse --short HEAD > .git/commit-id"                        
   commit_id = readFile('.git/commit-id').trim()

   // Get the maven tool.
   // ** NOTE: This 'M3' maven tool must be configured
   // **       in the global configuration.           
   def mvnHome = tool 'M3'

   // Mark the code build 'stage'....
   stage 'Build'
   // Run dummy build
   echo 'Hello, from build stage'
   
   stage 'Deploy'
   echo 'Hello, from deployment stage'
   // sh "output=$(pwd)"
   // sh "apc target cloud.explab.net"
   // sh "apc login --google"
   // sh "apc app create go-middelware-demo --batch --start"
   sh "apc app create go-middleware-demo-${commit_id} --allow-egress --allow-ssh --routes http://go-middleware-demo-${commit_id}.wsjoe78.sandbox.cloud.explab.net --batch"
   sh "apc app update go-middleware-demo-${commit_id} --port-add 8080"
   sh "Y"
   sh "apc route http://go-middleware-demo-${commit_id}.wsjoe78.sandbox.cloud.explab.net --app go-middleware-demo-${commit_id} --port 8080"
   sh "Y"
   sh "apc app start go-middleware-demo-${commit_id}"
}
