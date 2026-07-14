Dockerfile Example with Explanation:

FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]


##########################################################################

#FROM
--> Downloads an image that already contains Ubuntu Linux and Java 17
Instead of installing Java yourself
##########################################

#WORKDIR/app
Creates /app inside the container.
Everything after this happens there.

##########################################

 #COPY --> COPY target/*.jar app.jar Copies target/hello-server-0.0.1-SNAPSHOT.jar from your computer into the container.
--> Inside Docker it becomes /app/app.jar
##############################################

#EXPOSE --> EXPOSE 8080 Says that My application listens on port 8080

#################################################

#ENTRYPOINT ["java","-jar","app.jar"] --> When Docker starts the container, it automatically runs java -jar app.jar