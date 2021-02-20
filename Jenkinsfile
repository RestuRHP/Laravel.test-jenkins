pipeline{

	agent any	
	
	stages{
	
		stage("build"){
		
			steps{
				bat "docker-compose down"
        			bat "docker-compose up -d --force-recreate --no-deps --build"
				bat "docker-compose exec php composer install"
				winpty "docker-compose exec php php artisan key:generate"
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
