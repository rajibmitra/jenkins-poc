FROM jenkins/jenkins:2.346.2-lts-centos7

USER jenkins

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY --chown=jenkins:jenkins plugins.txt /tmp

RUN /bin/jenkins-plugin-cli  --plugin-file  /tmp/plugins.txt

