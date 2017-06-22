


Service auto registration via Eureka | http://localhost:9090/api/customer-service/customer/1
Service registration by address | http://localhost:9090/api/customer-by-address/customer/1
Service registration by Eureka service id | http://localhost:9090/api/customer-by-service/customer/1
Display Routes | http://localhost:9090/routes
Static response | http://localhost:9090/api/static
Static response | http://localhost:9090/api/static/dsf.svg
Dynamic routing | http://localhost:9090/api/redirect



SERVER_PORT=9999 mvn spring-boot:run
http://localhost:9090/api/customer-by-service/customer/1
http://localhost:9090/api/customer-service/customer/1



http://localhost:8089/hystrix
http://localhost:8087/turbine/turbine.stream


code
http://localhost:8844/#/

eureka
http://localhost:8761/

