FROM tomcat:8
ADD target/HelloWorld03.war C:\Program Files\apache-tomcat-8.5.58\webapps
EXPOSE 8080
CMD ["catalina.bat", "run"]
