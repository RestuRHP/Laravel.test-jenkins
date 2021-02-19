pipeline{

	agent any	
	
	stages{
	
		stage("build"){
		
			steps{
				bat "cd src"
				bat "composer install"
				bat "cd .."
				bat "docker-compose down"
        			bat "docker-compose up -d --force-recreate --no-deps --build"
				echo 'building the application...'
				echo 'the application is built'
			}
		}
		stage("test"){
		
			steps{
				echo 'testing the application...'
			}
		}
		stage("deploy"){
		
			steps{
				echo 'deploying the application...'
			}
		}
	}	
}
