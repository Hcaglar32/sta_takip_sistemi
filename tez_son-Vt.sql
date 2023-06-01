-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Haz 2023, 15:48:22
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tez`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isveren`
--

CREATE TABLE `isveren` (
  `id` int(11) NOT NULL,
  `sirket_adi` varchar(30) NOT NULL,
  `adres` varchar(150) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `koordinator_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `isveren`
--

INSERT INTO `isveren` (`id`, `sirket_adi`, `adres`, `mail`, `tel`, `koordinator_id`) VALUES
(4, 'Gemizi Oğlu A.Ş.', 'Kazak Mah. Hırka Cad. No 16 Samatya/İzmit', 'gimizioglu@gmail.com', '0', '7'),
(5, 'bucod', 'kocaeli', 'info@bucod', '0', '8'),
(6, 'bariz medya', 'kocaeli', 'info@barizmedya', '0', '9'),
(7, 'Bucod', 'Çelikyay Sok.', 'info@bucod.com', '0', '10'),
(13, 'engilishtime', 'istanbul', 'deneme@.com', '05051330627', '26'),
(14, 'javipos', 'denizli', 'javipos@info.com', '', '28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `KullaniciAdi` varchar(20) NOT NULL,
  `Sifre` varchar(20) NOT NULL,
  `Ad` varchar(30) NOT NULL,
  `Soyad` varchar(30) NOT NULL,
  `ogrenciNo` int(11) NOT NULL,
  `YetkiId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `KullaniciAdi`, `Sifre`, `Ad`, `Soyad`, `ogrenciNo`, `YetkiId`) VALUES
(1, 'hcaglar', '123hasan', 'Hasan Emir', 'Caglar', 19220039, 1),
(2, 'rbicer', '123rıfat', 'rıfat', 'bicer', 19220038, 1),
(3, 'admin', '123', '', '', 0, 3),
(7, 'kemal@gemizi.com', 'HaC6em', 'Kemal Durhan', '', 0, 2),
(10, 'burkay@bucod.com', 'r2PLwL', 'Burkay', '', 0, 2),
(25, 'rabia', '123rabia', 'rabia', 'özel', 19220019, 1),
(26, 'hcaglar@info.com', 'cMxRtl', 'Hasan Emir Çağlar', '', 0, 2),
(27, 'kgokcan', '123kaan', 'kaan', 'gökcan', 19220033, 1),
(28, 'mehmetkula@info.com', 'eMWOS1', 'mehmet kula', '', 0, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `AdSoyad` varchar(50) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `konu` varchar(50) NOT NULL,
  `Mesaj` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `AdSoyad`, `eposta`, `konu`, `Mesaj`) VALUES
(1, 'hasan emir çağlar', 'hcaglar19@info.com', 'deneme mesajı', 'bu phpmyadminden eklenen bir mesaj.'),
(2, '', '', '', ''),
(3, 'hasan emir çağlar', 'hcaglar@info.com', 'siteden gönderme', 'bu web sitesinden mesaj gönderme denemesidir.'),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, '', '', '', ''),
(8, '', '', '', ''),
(9, '', '', '', ''),
(10, '', '', '', ''),
(11, '', '', '', ''),
(12, '', '', '', ''),
(13, '', '', '', ''),
(14, '', '', '', ''),
(15, '', '', '', ''),
(16, '', '', '', ''),
(17, '', '', '', ''),
(18, '', '', '', ''),
(19, '', '', '', ''),
(20, '', '', '', ''),
(21, '', '', '', ''),
(22, '', '', '', ''),
(23, '', '', '', ''),
(24, '', '', '', ''),
(25, '', '', '', ''),
(26, '', '', '', ''),
(27, '', '', '', ''),
(28, '', '', '', ''),
(29, '', '', '', ''),
(30, '', '', '', ''),
(31, '', '', '', ''),
(32, '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `staj`
--

CREATE TABLE `staj` (
  `staj_id` int(11) NOT NULL,
  `staj_tur` varchar(15) NOT NULL,
  `ogrenci_id` int(11) NOT NULL,
  `staj_suresi` int(11) NOT NULL,
  `baslangic_tarihi` date NOT NULL,
  `bitis_tarihi` date NOT NULL,
  `puan` varchar(30) NOT NULL,
  `is_veren_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `staj`
--

INSERT INTO `staj` (`staj_id`, `staj_tur`, `ogrenci_id`, `staj_suresi`, `baslangic_tarihi`, `bitis_tarihi`, `puan`, `is_veren_id`) VALUES
(2, '1', 1, 30, '2023-06-15', '2023-07-18', '0', 4),
(6, '2', 1, 30, '2023-08-30', '2023-09-30', '0', 7),
(12, '1', 25, 30, '2023-05-30', '2023-06-30', '0', 13),
(56, '1', 2, 30, '2023-06-01', '2023-07-01', '', 14);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `staj_defteri`
--

CREATE TABLE `staj_defteri` (
  `Id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `staj_id` int(11) NOT NULL,
  `icerik` text NOT NULL,
  `Tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `staj_defteri`
--

INSERT INTO `staj_defteri` (`Id`, `user_id`, `staj_id`, `icerik`, `Tarih`) VALUES
(1, 1, 2, '<p>RIFAT NABER</p>', '2023-05-30'),
(2, 1, 6, 'Defter2', '2023-05-31'),
(5, 1, 2, '<p>Kemal</p>', '2023-05-30'),
(6, 1, 6, '<p>Kemal2</p>', '2023-05-30'),
(7, 1, 2, '<p>Demir</p>', '2023-06-12'),
(8, 1, 2, '<p>Test</p>', '2023-02-25'),
(9, 25, 12, '<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel consequat purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean at bibendum tellus, in tempor magna. In urna odio, mattis at euismod et, facilisis a justo. Cras ut dolor rutrum, interdum tellus in, scelerisque nisi. Vestibulum auctor justo id vestibulum varius. Vestibulum quis ex orci. Donec in sollicitudin quam. Sed vel eros purus.</p>\n<p>Pellentesque ligula sem, malesuada non orci at, condimentum pellentesque erat. Quisque tempus ipsum vel elit ultricies lacinia. Quisque rhoncus, velit non hendrerit tempor, orci sapien tempor dui, a sollicitudin elit velit vitae lacus. Nam malesuada lorem nec mauris sodales, in commodo metus commodo. Vivamus vitae risus interdum, porttitor sem et, posuere neque. Nulla egestas odio ut leo accumsan accumsan. Nulla elementum lorem et neque elementum, nec imperdiet felis fringilla. Vivamus in scelerisque sem. Nulla ac lacus hendrerit, pharetra ex id, finibus ipsum. Nulla laoreet rhoncus justo eget aliquet. Pellentesque tempor ex a efficitur fermentum. Nullam velit eros, ornare vel turpis ac, lacinia porttitor quam. Etiam varius eu eros in tincidunt. Quisque non elementum libero, in feugiat dui.</p>\n<p>Vivamus efficitur metus a congue ultricies. Vivamus ac justo a augue placerat placerat vel at nibh. Sed egestas placerat purus sed lobortis. Mauris volutpat nulla sit amet felis efficitur blandit. Donec volutpat eget augue eget rhoncus. Sed id enim est. Nam elementum sapien sit amet ante malesuada hendrerit.</p>\n<p>Phasellus vitae erat non diam interdum luctus. Quisque ut nunc urna. Curabitur ex odio, congue a diam a, egestas mattis ex. Donec efficitur magna et orci tempor feugiat. Sed ac diam at augue aliquam dignissim eget eu dui. Cras dictum aliquam neque non sodales. Aenean hendrerit ac quam hendrerit viverra. Aliquam cursus ultrices leo, in porttitor mi ultricies sit amet. Pellentesque cursus, orci tempor imperdiet efficitur, lorem turpis hendrerit leo, in fermentum tellus elit eu felis. Nunc aliquam in orci nec semper.</p>\n<p>Donec in velit fringilla libero iaculis laoreet eget nec quam. In facilisis eros ut bibendum varius. Integer eros augue, auctor non interdum a, congue sed lacus. Nulla vel odio lacinia erat lacinia commodo. Nulla eu leo vitae lectus tristique maximus non nec leo. Proin id pulvinar ipsum, sed placerat nisl. Donec ullamcorper neque et metus accumsan sagittis. Maecenas vestibulum tristique ipsum sit amet consectetur. In nec gravida nisi. Morbi eget consectetur tortor. Phasellus pretium gravida metus et feugiat.</p>\n</div>', '2023-05-30'),
(10, 1, 2, '<p>defter ekleme denemmesi</p>', '2023-06-01'),
(11, 1, 2, '<p>deneme</p>', '2023-06-01'),
(12, 2, 56, '<p>deneme</p>', '2023-06-01'),
(13, 2, 56, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dictum ultricies purus sit amet rhoncus. Sed vestibulum arcu non augue eleifend, at pharetra nulla placerat. Nulla aliquam est augue, eget imperdiet sem commodo sit amet. Suspendisse sodales sem sed sollicitudin accumsan. Nulla vitae ante in odio lacinia sagittis. Cras arcu mi, consectetur vitae gravida id, finibus vel quam. Donec vel metus vel risus vulputate tempor accumsan ac erat. Aliquam vitae tellus rhoncus, facilisis risus sit amet, dignissim enim. Vivamus vestibulum tincidunt pretium. Phasellus lacinia vel massa eleifend eleifend. Vivamus ac turpis eu nulla maximus dictum vitae vitae risus. In aliquet lacinia dolor, in tristique diam. Duis sodales nunc quis mauris rutrum, id bibendum quam condimentum. Etiam sed lectus ac urna finibus venenatis non quis risus. Nam semper nisl vel sagittis vulputate.</p>\r\n<p>Pellentesque blandit malesuada porttitor. Duis dapibus augue odio, in venenatis nunc consequat quis. Curabitur scelerisque at dui vel aliquam. Donec convallis sem ut nibh volutpat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed euismod fermentum sapien vel rhoncus. Nullam magna arcu, fringilla in elementum et, bibendum sit amet augue. Maecenas venenatis massa sit amet finibus sagittis. Nam accumsan vulputate interdum.</p>\r\n<p>Integer malesuada, libero convallis elementum semper, tellus lectus varius diam, ac bibendum nisi nisl at nisl. Nulla aliquet, neque a pellentesque tincidunt, felis lorem facilisis lorem, et blandit nisl quam ut mi. Nam ac turpis non tellus elementum malesuada. Cras dapibus metus et orci tempus, viverra feugiat ante faucibus. In sit amet ante ante. Duis tellus quam, sollicitudin id tincidunt in, faucibus sit amet lacus. Pellentesque sit amet velit sed metus semper aliquam a vel felis. Quisque magna urna, semper id vulputate quis, fringilla ut magna. Quisque fringilla mattis nisl non pretium. Phasellus auctor libero ornare iaculis scelerisque. Vestibulum hendrerit nec ligula at posuere. Praesent faucibus erat nulla, posuere auctor eros lobortis in. Suspendisse potenti. Donec placerat lorem sed sapien malesuada vestibulum. Phasellus nec nisl ut quam egestas rhoncus vel non mi.</p>\r\n<p>Duis dolor nibh, blandit ut urna in, venenatis suscipit ipsum. Mauris mollis quam at est laoreet, faucibus rhoncus libero sollicitudin. Nullam nisi libero, imperdiet sit amet accumsan at, feugiat at leo. Nulla congue a massa quis euismod. Etiam euismod, turpis eu pulvinar congue, lacus lectus pretium elit, non pharetra purus ante sit amet eros. Nulla sagittis odio varius tellus fermentum, elementum tincidunt orci consectetur. Donec sodales mauris dui, ac fringilla dui molestie in. Suspendisse nec urna ligula. Donec vulputate vulputate velit nec imperdiet.</p>\r\n<p>Proin aliquet sed lorem vel faucibus. Pellentesque tristique ligula egestas sem aliquet, a vehicula neque euismod. Mauris sed felis vel urna molestie scelerisque. Morbi dui metus, blandit bibendum condimentum non, tincidunt sit amet massa. In hendrerit magna magna, auctor finibus mauris vestibulum in. Nulla interdum urna et iaculis rutrum. Fusce tincidunt tellus eget diam hendrerit, sed scelerisque arcu pharetra. Cras et porttitor felis. Nunc viverra facilisis augue, sed hendrerit ligula. Nulla eu arcu vitae dolor aliquet semper. Maecenas condimentum dui ligula, a convallis mauris sagittis ut.</p>\r\n<p>Pellentesque pulvinar et neque ac placerat. Integer quis aliquet sapien, ac feugiat risus. Cras ullamcorper accumsan quam, eget vehicula orci sagittis ac. Donec libero purus, ullamcorper facilisis rutrum congue, imperdiet id nisi. Nunc leo odio, ornare ac tincidunt in, venenatis in tortor. Phasellus quis tortor quis nunc ullamcorper ornare. Morbi blandit quam sed odio dignissim feugiat. In placerat auctor lectus, posuere vulputate ligula venenatis quis. Cras sollicitudin nibh sem, et ornare leo vestibulum ac.</p>\r\n<p>Donec consequat a lacus semper semper. Nullam pellentesque a dui vel convallis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed venenatis elit ipsum, eget consectetur quam pulvinar eget. In efficitur tortor nec tristique commodo. Proin odio justo, scelerisque at libero sed, fermentum volutpat leo. Nulla lacinia condimentum eleifend. Vivamus scelerisque tempor urna, a aliquam nisi efficitur ac. Curabitur vel placerat enim, eget cursus est. Quisque tincidunt mauris at nisi pretium dapibus. Sed luctus velit in mollis elementum.</p>\r\n<p>Nullam rutrum vehicula leo, sit amet efficitur lacus lobortis eget. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur quis urna tortor. Nullam id bibendum nibh. Suspendisse fermentum auctor eros in gravida. Donec at lorem in justo commodo posuere. Curabitur ornare hendrerit velit, sit amet egestas risus placerat eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam rhoncus faucibus pretium. Suspendisse posuere turpis nec purus tristique pulvinar. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>', '2023-06-01'),
(14, 1, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dictum ultricies purus sit amet rhoncus. Sed vestibulum arcu non augue eleifend, at pharetra nulla placerat. Nulla aliquam est augue, eget imperdiet sem commodo sit amet. Suspendisse sodales sem sed sollicitudin accumsan. Nulla vitae ante in odio lacinia sagittis. Cras arcu mi, consectetur vitae gravida id, finibus vel quam. Donec vel metus vel risus vulputate tempor accumsan ac erat. Aliquam vitae tellus rhoncus, facilisis risus sit amet, dignissim enim. Vivamus vestibulum tincidunt pretium. Phasellus lacinia vel massa eleifend eleifend. Vivamus ac turpis eu nulla maximus dictum vitae vitae risus. In aliquet lacinia dolor, in tristique diam. Duis sodales nunc quis mauris rutrum, id bibendum quam condimentum. Etiam sed lectus ac urna finibus venenatis non quis risus. Nam semper nisl vel sagittis vulputate.</p>\r\n<p>Pellentesque blandit malesuada porttitor. Duis dapibus augue odio, in venenatis nunc consequat quis. Curabitur scelerisque at dui vel aliquam. Donec convallis sem ut nibh volutpat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed euismod fermentum sapien vel rhoncus. Nullam magna arcu, fringilla in elementum et, bibendum sit amet augue. Maecenas venenatis massa sit amet finibus sagittis. Nam accumsan vulputate interdum.</p>\r\n<p>Integer malesuada, libero convallis elementum semper, tellus lectus varius diam, ac bibendum nisi nisl at nisl. Nulla aliquet, neque a pellentesque tincidunt, felis lorem facilisis lorem, et blandit nisl quam ut mi. Nam ac turpis non tellus elementum malesuada. Cras dapibus metus et orci tempus, viverra feugiat ante faucibus. In sit amet ante ante. Duis tellus quam, sollicitudin id tincidunt in, faucibus sit amet lacus. Pellentesque sit amet velit sed metus semper aliquam a vel felis. Quisque magna urna, semper id vulputate quis, fringilla ut magna. Quisque fringilla mattis nisl non pretium. Phasellus auctor libero ornare iaculis scelerisque. Vestibulum hendrerit nec ligula at posuere. Praesent faucibus erat nulla, posuere auctor eros lobortis in. Suspendisse potenti. Donec placerat lorem sed sapien malesuada vestibulum. Phasellus nec nisl ut quam egestas rhoncus vel non mi.</p>\r\n<p>Duis dolor nibh, blandit ut urna in, venenatis suscipit ipsum. Mauris mollis quam at est laoreet, faucibus rhoncus libero sollicitudin. Nullam nisi libero, imperdiet sit amet accumsan at, feugiat at leo. Nulla congue a massa quis euismod. Etiam euismod, turpis eu pulvinar congue, lacus lectus pretium elit, non pharetra purus ante sit amet eros. Nulla sagittis odio varius tellus fermentum, elementum tincidunt orci consectetur. Donec sodales mauris dui, ac fringilla dui molestie in. Suspendisse nec urna ligula. Donec vulputate vulputate velit nec imperdiet.</p>\r\n<p>Proin aliquet sed lorem vel faucibus. Pellentesque tristique ligula egestas sem aliquet, a vehicula neque euismod. Mauris sed felis vel urna molestie scelerisque. Morbi dui metus, blandit bibendum condimentum non, tincidunt sit amet massa. In hendrerit magna magna, auctor finibus mauris vestibulum in. Nulla interdum urna et iaculis rutrum. Fusce tincidunt tellus eget diam hendrerit, sed scelerisque arcu pharetra. Cras et porttitor felis. Nunc viverra facilisis augue, sed hendrerit ligula. Nulla eu arcu vitae dolor aliquet semper. Maecenas condimentum dui ligula, a convallis mauris sagittis ut.</p>\r\n<p>Pellentesque pulvinar et neque ac placerat. Integer quis aliquet sapien, ac feugiat risus. Cras ullamcorper accumsan quam, eget vehicula orci sagittis ac. Donec libero purus, ullamcorper facilisis rutrum congue, imperdiet id nisi. Nunc leo odio, ornare ac tincidunt in, venenatis in tortor. Phasellus quis tortor quis nunc ullamcorper ornare. Morbi blandit quam sed odio dignissim feugiat. In placerat auctor lectus, posuere vulputate ligula venenatis quis. Cras sollicitudin nibh sem, et ornare leo vestibulum ac.</p>\r\n<p>Donec consequat a lacus semper semper. Nullam pellentesque a dui vel convallis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed venenatis elit ipsum, eget consectetur quam pulvinar eget. In efficitur tortor nec tristique commodo. Proin odio justo, scelerisque at libero sed, fermentum volutpat leo. Nulla lacinia condimentum eleifend. Vivamus scelerisque tempor urna, a aliquam nisi efficitur ac. Curabitur vel placerat enim, eget cursus est. Quisque tincidunt mauris at nisi pretium dapibus. Sed luctus velit in mollis elementum.</p>\r\n<p>Nullam rutrum vehicula leo, sit amet efficitur lacus lobortis eget. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur quis urna tortor. Nullam id bibendum nibh. Suspendisse fermentum auctor eros in gravida. Donec at lorem in justo commodo posuere. Curabitur ornare hendrerit velit, sit amet egestas risus placerat eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam rhoncus faucibus pretium. Suspendisse posuere turpis nec purus tristique pulvinar. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>', '2023-06-01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetki`
--

CREATE TABLE `yetki` (
  `YetkiId` int(11) NOT NULL,
  `Acıklama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yetki`
--

INSERT INTO `yetki` (`YetkiId`, `Acıklama`) VALUES
(1, 'Öğrenci'),
(2, 'Koordinatör'),
(3, 'admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `isveren`
--
ALTER TABLE `isveren`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SirketAd` (`sirket_adi`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `YetkiId` (`YetkiId`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `staj`
--
ALTER TABLE `staj`
  ADD PRIMARY KEY (`staj_id`),
  ADD KEY `is_veren_id` (`is_veren_id`),
  ADD KEY `ogrenci_id` (`ogrenci_id`);

--
-- Tablo için indeksler `staj_defteri`
--
ALTER TABLE `staj_defteri`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `staj_id` (`staj_id`);

--
-- Tablo için indeksler `yetki`
--
ALTER TABLE `yetki`
  ADD PRIMARY KEY (`YetkiId`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `isveren`
--
ALTER TABLE `isveren`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `staj`
--
ALTER TABLE `staj`
  MODIFY `staj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Tablo için AUTO_INCREMENT değeri `staj_defteri`
--
ALTER TABLE `staj_defteri`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD CONSTRAINT `kullanicilar_ibfk_1` FOREIGN KEY (`YetkiId`) REFERENCES `yetki` (`YetkiId`);

--
-- Tablo kısıtlamaları `staj`
--
ALTER TABLE `staj`
  ADD CONSTRAINT `staj_ibfk_1` FOREIGN KEY (`is_veren_id`) REFERENCES `isveren` (`id`),
  ADD CONSTRAINT `staj_ibfk_2` FOREIGN KEY (`ogrenci_id`) REFERENCES `kullanicilar` (`id`);

--
-- Tablo kısıtlamaları `staj_defteri`
--
ALTER TABLE `staj_defteri`
  ADD CONSTRAINT `staj_defteri_ibfk_1` FOREIGN KEY (`staj_id`) REFERENCES `staj` (`staj_id`),
  ADD CONSTRAINT `staj_defteri_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `kullanicilar` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
