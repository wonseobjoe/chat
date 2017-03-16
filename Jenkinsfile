node {
   // Mark the code checkout 'stage'....
   stage 'Checkout'
   echo 'Hello, from SCM checkout stage'

   // Get some code from a GitHub repository
   git url: 'https://github.com/wonseobjoe/chat.git'
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
   sh "apc app create go-chat-demo --path target --batch --start"
}
