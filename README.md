Dosyalar

Terraform --> main.tf

Scipts --> scripts

Yaml -->

backend/

frontend/

frontend/deployment

Erişimler
React
http://34.18.58.126:31373

Backend
http://34.18.58.126:30830

Jenkins
http://34.18.10.24:8080/job/fuzulev_CI/
admin
admin

Argocd
https://34.18.58.126:30415/applications
admin
admin123


Grafana
http://34.18.58.126:31170
admin
admin

**Önemli:**
Backend image için mevcut docker-compose file'ı kullandım ancak uygulamanın dökümanındaki komutları uygulayamadım.(Update-Database -Context ApplicationDbContext ...)
Bir migration işlemi gerçekleşiyorsa eğer bu yüzden gerçekleşmedi ve alttaki çıktıyı veriyor.
http://34.18.58.126:30830/api/product?pageNumber=1&search=&pageSize=10&minPrice=0&maxPrice=0&propertyTypeEnum=2&propertyTypeEnum=3
data: null

Terraform ile gcp üzerinde 1master-1worker ve jenkins-docker olmak üzere 3 vm hazırlandı ve gerekli network ayarları yapıldı.

sciptler ile kubeadm(master.sh->master,worker.sh->worker) jenkins ve docker kuruldu.

backend ve frontend için ayrı Jenkinsfile yazıldı ancak aynı pipeline kullanılıyor.

github webhook ve argocd ile değişiklikler algılanıp kubernetes üzerine deploy işlemi gerçekleştiriliyor.

grafana üzerine websocket plugini kurdum ancak uygulama düzgün çalışmadığı için test edemedim. 


