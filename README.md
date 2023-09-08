# VSCode Starter
install extension in vscode karate from karate labs
 

# Karate
ความสามารถหลัก มี 4 อย่าง
1. API Testing
2. API Mocks
3. performance-testing
4. UI automation

# ตัวอย่าง API Testing

`./api-tests/httpbin.feature`

# ตัวอย่าง API Mocks
`./api-mocks/payment-mock.feature`

วิธี run test
- ที่ project ต้องมี file karate.jar ก่อน
download ได้จาก https://github.com/karatelabs/karate/releases

- run mock server
```
java -jar karate-1.4.0.jar -m payment-mock.feature -p 8080
```

- ลอง curl test
```
# response จาก parameter ที่ set ไว้
curl localhost:8080/payments
curl localhost:8080/payments/ -d mock
curl localhost:8080/payments/1

# response จาก file
curl localhost:8080/sample

```

# ตัวอย่าง performance-testing

# UI automation



# Reference
https://github.com/karatelabs/karate/wiki/Get-Started:-Visual-Studio-Code

https://github.com/karatelabs/karate/tree/master/examples/consumer-driven-contracts

https://github.com/karatelabs/karate/tree/master/karate-netty#consumer-provider-example

https://github.com/karatelabs/karate/blob/master/examples/consumer-driven-contracts/payment-producer/src/test/java/payment/producer/mock/payment-mock.feature