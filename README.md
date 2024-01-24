Erişimler

React
http://34.18.58.126:31373

Backend
http://34.18.58.126:30830


Argocd
https://34.18.58.126:30415/applications
admin
admin123

Jenkins
http://34.18.10.24:8080/job/fuzulev_CI/
admin
admin

Grafana
http://34.18.58.126:31170
admin
admin


Backend imageini mevcut docker-compose ile hazırladım ancak uygulamanın dökümanındaki komutları uygulayamadım.(Update-Database -Context ApplicationDbContext ...)
Bir migration işlemi gerçekleşiyorsa eğer bu yüzden gerçekleşmedi ve alttaki çıktıyı alıyorum.
http://34.18.58.126:30830/api/product?pageNumber=1&search=&pageSize=10&minPrice=0&maxPrice=0&propertyTypeEnum=2&propertyTypeEnum=3
data: null

