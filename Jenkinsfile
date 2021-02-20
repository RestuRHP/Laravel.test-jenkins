pipeline{

	agent any	
	
	stages{
	
		stage("build"){
		
			steps{
        			bat "docker-compose up -d --force-recreate --no-deps --build"
				bat "docker-compose exec -T php composer install"
				bat "docker-compose exec -T php php artisan key:generate"
				echo 'building the application...'
				echo 'the application is d'
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
