# Easy OCR

## How to build

```shell
docker build -t cr.liplum.net/pub/easy-ocr .
docker push cr.liplum.net/pub/easy-ocr
```

## How to use


```yaml
services:
  easy-ocr:
    image: cr.liplum.net/pub/easy-ocr
    name: easy-ocr
    ports:
      - "8000:8000"
    restart: always
```