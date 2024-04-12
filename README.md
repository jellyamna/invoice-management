Virtual Account
  - Mandiri
  - BCA
  - BRI
  
  
e Wallet
  - ovo
  - gopay
  

## set db via docker #
# -d jalan sebagai daemon/services kita tidak usah pakai, \
di ganti jadi -rm saja jadi setiap di running ulang akan di destroy dan buat ulang
sehingga bersih filenya.
- dan juga file postgresql ini akan ada di lokal
- jangan gunakan latest harus pakai tag postgresql:15 , jika tidak maka default latest dan ini akan masalah
- ada mapping ke port lain karna sudah di pakai

$ sudo docker run --rm \
	--name invoice-db \
	-e POSTGRES_DB=invoice-db \
	-e POSTGRES_USER=invoice \
	-e POSTGRES_PASSWORD=limau2 \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
	-v "$PWD/invoicedb-data:/var/lib/postgresql/data" \
	-p 5454:5432 \
	postgres:15
	
	
	psql -h 127.0.0.1 -U invoice -p 5454 invoice-db
	
	psql => \d -- untuk melihat skema
