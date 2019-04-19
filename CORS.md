## curl CORS
#### 1. CORS preflight
```
curl -H 'Origin: http://a.cn' \
 -H 'Access-Control-Request-Method: GET' \
 -H 'Access-Control-Request-Headers: X-Requested-With' \
 -X OPTIONS -v http://127.0.0.1
```

#### 2. CORS GET
```
curl -H 'Origin: http://a.cn' -v http://127.0.0.1
```

## CORS test website
https://www.test-cors.org/

