if [ -d target ]
then
	echo "\nStep 1: Deleting /target folder..."
	if rm -r target
	then
		echo "\nSuccessfully deleted !!"
	fi
fi

echo "\nStep 2: Running the maven build command..."
if mvn clean package -Dmaven.javadoc.skip=true -DskipTests
then
	echo "\nStep3: Executing Command: mvn spring-boot:run"	
	mvn spring-boot:run -Dspring-boot.run.profiles=second
	
fi
