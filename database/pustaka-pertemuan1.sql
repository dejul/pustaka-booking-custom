/*
 Navicat Premium Data Transfer

 Source Server         : local 3307
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : pustaka

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 18/03/2021 23:02:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking`  (
  `id_booking` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_booking`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for booking_detail
-- ----------------------------
DROP TABLE IF EXISTS `booking_detail`;
CREATE TABLE `booking_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_buku` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for buku
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_buku` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun_terbit` year NOT NULL,
  `isbn` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'book-default-cover.jpg',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES (1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 6, 1, 1, 'img1557402455.jpg');
INSERT INTO `buku` VALUES (2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 3, 1, 'img1557402397.jpg');
INSERT INTO `buku` VALUES (5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 5, 1, 1, 'img1555522493.jpg');
INSERT INTO `buku` VALUES (10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg');
INSERT INTO `buku` VALUES (14, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'img1557402703.jpg');
INSERT INTO `buku` VALUES (15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156.jpg');
INSERT INTO `buku` VALUES (16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502.jpg');
INSERT INTO `buku` VALUES (17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 5, 0, 0, 'img1557403658.jpg');
INSERT INTO `buku` VALUES (18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg');
INSERT INTO `buku` VALUES (19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg');
INSERT INTO `buku` VALUES (20, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', 2011, '32342342344234', 5, 0, 0, 'img1557404775.jpg');
INSERT INTO `buku` VALUES (21, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', 2015, '7565646455757', 5, 0, 0, 'img1557404853.jpg');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Komputer');
INSERT INTO `kategori` VALUES (2, 'Bahasa');
INSERT INTO `kategori` VALUES (3, 'Sains');
INSERT INTO `kategori` VALUES (4, 'Hobby');
INSERT INTO `kategori` VALUES (5, 'Komunikasi');
INSERT INTO `kategori` VALUES (6, 'Hukum');
INSERT INTO `kategori` VALUES (7, 'Agama');
INSERT INTO `kategori` VALUES (8, 'Populer');
INSERT INTO `kategori` VALUES (9, 'Komik');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Admin');
INSERT INTO `menu` VALUES (2, 'User');
INSERT INTO `menu` VALUES (3, 'Menu');
INSERT INTO `menu` VALUES (4, 'Utility');
INSERT INTO `menu` VALUES (5, 'Buku');
INSERT INTO `menu` VALUES (6, 'Anggota');
INSERT INTO `menu` VALUES (7, 'Laporan');

-- ----------------------------
-- Table structure for pinjam
-- ----------------------------
DROP TABLE IF EXISTS `pinjam`;
CREATE TABLE `pinjam`  (
  `no_pinjam` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL,
  PRIMARY KEY (`no_pinjam`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pinjam_detail
-- ----------------------------
DROP TABLE IF EXISTS `pinjam_detail`;
CREATE TABLE `pinjam_detail`  (
  `no_pinjam` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_buku` int(11) NULL DEFAULT NULL,
  `denda` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admministrator');
INSERT INTO `role` VALUES (2, 'member');

-- ----------------------------
-- Table structure for temp
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp`  (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime(0) NULL DEFAULT NULL,
  `id_user` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_buku` int(11) NULL DEFAULT NULL,
  `judul_buku` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penulis` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun_terbit` year NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Imam Nawawi', '', 'imam.imw@gmail.com', 'pro1557486527.jpg', '$2y$10$jLgqE1IBWTdVFuBfgq4u/upFdTkdRmKSigfZ7M8qHbjkTmnf26D5a', 1, 1, 1554218983);
INSERT INTO `user` VALUES (3, 'Maruloh, M.Kom', '', 'maruloh.mru@bsi.ac.id', 'default.jpg', '$2y$10$beSdsua15A.A.tmiLIsmfuQCLWGdptUwjXlGI2u2kqxlpPXpXqZ72', 1, 1, 1554219788);
INSERT INTO `user` VALUES (13, 'Rizkiyah', '', 'kiki.hidayah@gmail.com', 'pro1557648081.jpg', '$2y$10$237zpGsuPlkDaH0z0kMhKOcP.1pmMx8cxrUXGgh2ErFPQZ5Eb8p72', 1, 1, 1557609676);
INSERT INTO `user` VALUES (14, 'Eni Irfiani', '', 'eni.enf@bsi.ac.id', 'default.jpg', '$2y$10$pVXQd4Hs4yrtWjIjhyngge2tsG5nWbL.B956XbElPOM0Q0EsSip.a', 1, 1, 1563868032);
INSERT INTO `user` VALUES (15, 'Andriansah', '', 'andriansah.aiy@bsi.ac.id', 'default.jpg', '$2y$10$perspnO9EwfN24C1UnIlVuJl9WfZazMq.KynnKNcTdqprkVSfcmiC', 1, 1, 1563868080);
INSERT INTO `user` VALUES (16, 'Imam Khotib', '', 'imamkhotib0@gmail.com', 'default.jpg', '$2y$10$G6Z.Bq1htczywNfgmC0Ti.WTidif/a7ztpgMOyj1r7v6UWJzDSOmW', 1, 1, 1564436443);

SET FOREIGN_KEY_CHECKS = 1;
