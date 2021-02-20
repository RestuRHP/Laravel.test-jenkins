pipeline{
	agent any		
	stages{	
		stage("build"){		
			steps{
        			bat "docker-compose up -d --force-recreate --no-deps --build"
			}
		}
	}	
}
