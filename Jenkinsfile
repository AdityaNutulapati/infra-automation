def bucketname = null
// library 'common-lib@jenkins_lib/v0.0.23'
pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    parameters {
    //   string description: 'Name of the S3 Bucket', name: 'bucketName'
      string description: 'OPS Ticket Number Eg: OPS-11913', name: 'ticket_number'
    //   string description: 'Variable file name (without .tfvars extension)', name: 'file_name'
}

    // }
    stages {
//         stage('Git checkout')
//         {
            
//                 steps{
//                     git branch: 'main', credentialsId: '02c515b6-f2d9-433b-914c-a18921a5dad1', url: 'https://github.com/AdityaNutulapati/test-s3-1'
                    
//                 }
//         }
        // stage('Input Bucket Name')
        // {
        //     steps{
        //         script {
        //     bucketName = input (
        //     message: 'Enter Name of the Bucket', 
        //     ok: 'Submit', 
        //     parameters: [string(name: 'bucketName', trim: true)]
        //   )
        // }
            // }
        // }
    //     stage("Dummy")
    //     {
            
    //   }
        // stage("Packer init")
        // {
        //     steps{
        //         sh "/opt/homebrew/bin/packer init"
        //     }
        // }
        stage("Packer install"){
            steps{
                //     script {

                //     sh'''#!/bin/bash 
                //                     curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo -y apt-key add -
                //                     sudo -y apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
                //                     sudo -y apt-get update && sudo -y apt-get install packer
                //                 '''
                //     }
                    // -var='aws_key=$AWS_ACCESS_KEY_ID' -var='aws_secret=$AWS_SECRET_ACCESS_KEY'
                // }
                // stage("Scale MongoDB"){
                  
                    withCredentials([[
                    $class:'AmazonWebServicesCredentialsBinding',
                    credentialsId:'aws-credentials',
                    accessKeyVariable:'AWS_ACCESS_KEY_ID',
                    secretKeyVariable:'AWS_SECRET_ACCESS_KEY']])
                    {
                        // sh "/opt/homebrew/bin/brew install docker"
                        // -chdir='QA/'$ticket_number'/'
                        // -var-file=`pwd`'/QA/variables/'$ticket_number'.pkrvars.hcl'
                        // sh "TEST=`pwd`"
                        // sh "echo TEST"
                        echo "../../pwd"
                        dir("QA/$ticket_number/")
                        {
                            sh "ls .."
                            // sh "/opt/homebrew/bin/packer build -var-file='../variables/'$ticket_number'.pkrvars.hcl'"
                            sh '''
                            if [ -f "../variables/OPS-1234.pkrvars.hcl" ] 
                                    then
                                        echo "Directory /path/to/dir exists." 
                                    else
                                        echo "Error: Directory /path/to/dir does not exists."
                                    fi
                            '''
                            // ''
                            // -var-file='abc'
                            sh "/opt/homebrew/bin/packer init ."
                            sh "/opt/homebrew/bin/packer build -var-file='../variables/'$ticket_number'.pkrvars.hcl' ."
                        }
                        
                        // sh "TEST=`pwd`"
                        // sh "sed -i '' 's/'BUCKET_NAME'/$bucketName/' `pwd`'/QA/S3/Variables/'$file_name'.tfvars'"
                        // sh "sed -i '' 's/'TICKET_NUMBER'/$ticket_number/' `pwd`'/QA/S3/Variables/'$file_name'.tfvars'"
                        // sh "terraform -chdir='QA/S3/'$ticket_number'-'$file_name plan -var-file `pwd`'/QA/S3/Variables/'$file_name'.tfvars'"
                    }
                    
                    // sh "dir=$(pwd)"
                    // sh "/opt/homebrew/bin/consul-template -template \"Dockerfile.tmpl:Dockerfile\" -once" 
                    // def dockerimage = docker.build("mongo-scaling-image")
                    // dockerimage.inside{
                    //     sh '''
                    //    atlas config set public_api_key ${PUBLIC_KEY}
                    //     atlas config set private_api_key ${PRIVATE_KEY}
                    //     atlas cluster update ${cluster_name}  --projectId ${project_id}  --tier ${cluster_size}
                    //     '''
                    // }
                    
                // }
        }
        
    }
    }
}
// }