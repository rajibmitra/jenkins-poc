# jenkins-poc

poc for jenkins plugins manager

# Build the image

docker build -t myjenkins-2.361.1 .  

# Run the docker image

docker run --name jenkins-2.361.1 --restart=on-failure --detach \
   --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 --publish 50000:50000 \
myjenkins-2.361.1

# intermitten issues
<!-- => => # Dec 01, 2022 7:37:46 PM org.apache.http.impl.execchain.RetryExec execute                                                                                    
 => => # INFO: I/O exception (org.apache.http.NoHttpResponseException) caught when processing request to {s}->https://updates.jenkins.io:443: The target server faile
 => => # d to respond                                                                                                                                                
 => => # Dec 01, 2022 7:37:46 PM org.apache.http.impl.execchain.RetryExec execute                                                                                    
 => => # INFO: Retrying request to {s}->https://updates.jenkins.io:443    -->


 ## Observations 
 jenkins/jenkins:2.346.2 has junit vulnerability 
 jenkins/jenkins:2.346.3 has this issue HTTP/2 denial of service vulnerability in bundled Jetty

 ## Solution 

 Jenkins LTS should be updated to version 2.361.1