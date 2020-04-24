# ubuntu ppa
https://www.ubuntuupdates.org/package/google_chrome/stable/main/base/google-chrome-stable


## build version

```
docker build -t jhaoheng/chrome . && \
version=$(docker run --rm jhaoheng/chrome:latest google-chrome-stable --version | awk '{print $3}') && \
docker tag jhaoheng/chrome:latest jhaoheng/chrome:$version && \
docker push jhaoheng/chrome:$version
```

# chrome driver
https://chromedriver.storage.googleapis.com/index.html