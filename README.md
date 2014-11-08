sliding_bar
===========

Processing içerisinde akıcı grafik gösterimi için algoritma denemeleri


Bu depoda processing içerisinde -genelde- seri porttan alınan verinin gösterimi sırasında oluşan tamamen ekrana basıp sonra sıfırdan başlama durumu engellenmeye çalışıldı.

İlk versiyon (master) her karede dizinin tamamını bir eleman kaydırıp sonra yeni bir random sayı atıyor ve bu dizinin yine tamamını ekrana çiziyor.

İkinci versiyon (v2) iki farklı diziden faydalanıyor. Başta ilk dizinin tamamını ekrana çiziyor. Sonraki karede ilk dizinin n-1. elemanını, ikinci dizinin ilk elemanını sona çizip devam ediyor. İlk dizi tamamen sola kaydığında tekrar sağ taraftan başlıyor. Dizi elemanlarını kaydırma işlemi tamamen kalkmış oldu.


