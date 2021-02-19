pipeline{

	agent any	
	
	stages{
	
		stage("build"){
		
			steps{
				bat "docker-compose down"
        			bat "docker-compose up -d --force-recreate --no-deps --build"
				bat "docker-compose exec php php /var/www/html/compose install"
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
