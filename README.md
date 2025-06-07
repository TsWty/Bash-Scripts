# Bash-Scripts

Bu depo çeşitli sistem yönetim görevlerini otomatikleştiren Bash scriptlerini içerir.

## Dizinler

- `backup-script` - Belgeler klasörünün yedeğini alır.
- `firewall-visualizer` - Mevcut firewall kurallarını raporlar.
- `log-analyzer` - Sistem günlüklerini analiz eder.
- `old_file_cleaner` - Kullanılmayan eski dosyaları temizler.
- `ping_monitor` - Belirli bir hosta ping atıp sonucu kaydeder.
- `port_scanner` - Hedef makinada port taraması yapar.
- `ssh_guard` - Başarısız SSH girişlerini izler ve IP engeller.
- `sys_dashboard` - Terminalde canlı sistem kaynaklarını gösterir.
- `system_audit` - Ayrıntılı sistem denetim raporu üretir.
- `uptime_monitor` - Uptime ve performans bilgilerini kaydeder.
- `disk_usage_alert` - Disk kullanım eşiğini aşınca uyarı verir.
- `memory_monitor` - Bellek kullanımını günlükler.
- `service_status_checker` - Belirli servislerin durumunu kontrol eder

Her script için önce çalıştırma izni verip ardından scripti başlatabilirsiniz:
```bash
chmod +x script_adi.sh
./script_adi.sh
```

Bu proje MIT lisansı ile dağıtılmaktadır. Ayrıntılar için `LICENSE` dosyasına göz atın.
