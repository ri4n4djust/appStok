-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 12:47 AM
-- Server version: 8.0.32
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winmaxapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `id` int UNSIGNED NOT NULL,
  `idparent1` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent1level` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent1type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idparent2` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent2level` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent2type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idparent3` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent3level` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent3type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atype` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coa`
--

INSERT INTO `coa` (`id`, `idparent1`, `parent1`, `parent1level`, `parent1type`, `idparent2`, `parent2`, `parent2level`, `parent2type`, `idparent3`, `parent3`, `parent3level`, `parent3type`, `acc_id`, `name`, `atype`) VALUES
(1, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11000', 'ASET LANCAR', '2', 'H', '11000', 'ASET LANCAR', 'H'),
(2, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61000', 'BELANJA OPERASIONAL', 'H'),
(3, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12000', 'ASET TETAP', '2', 'H', '12000', 'ASET TETAP', 'H'),
(4, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62000', 'BIAYA LAINNYA', 'H'),
(5, '20000', 'KEWAJIBAN', '1', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23000', 'HUTANG PAJAK', 'H'),
(6, '30000', 'EKUITAS', '1', 'H', '32000', 'MODAL', '2', 'H', '32000', 'MODAL', '2', 'H', '32000', 'MODAL', 'H'),
(7, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', 'H'),
(8, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41000', 'PENJUALAN', '2', 'H', '41000', 'PENJUALAN', 'H'),
(9, '40000', 'PENDAPATAN', '1', 'H', '42000', 'SEWA', '2', 'H', '42000', 'SEWA', '2', 'H', '42000', 'SEWA', 'H'),
(10, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51000', 'HPP PENJUALAN', 'H'),
(11, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52000', 'TEKOR', '2', 'H', '52000', 'TEKOR', 'H'),
(12, '20000', 'KEWAJIBAN', '1', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23100', 'HUTANG PAJAK PPH FINAL PS 4 AYAT 2', '3', 'D', '23100', 'HUTANG PAJAK PPH FINAL PS 4 AYAT 2', 'D'),
(13, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21300', 'HUTANG LAINNYA', '3', 'D', '21300', 'HUTANG LAINNYA', 'D'),
(14, '30000', 'EKUITAS', '1', 'H', '32000', 'MODAL', '2', 'H', '32200', 'MODAL YANG DI SETOR', '3', 'D', '32200', 'MODAL YANG DI SETOR', 'D'),
(15, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12100', 'TANAH', '3', 'D', '12100', 'TANAH', 'D'),
(16, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12200', 'GEDUNG DAN BANGUNAN', '3', 'D', '12200', 'GEDUNG DAN BANGUNAN', 'D'),
(17, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12300', 'PERALATAN DAN MESIN', '3', 'D', '12300', 'PERALATAN DAN MESIN', 'D'),
(18, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12400', 'KENDARAAN', '3', 'D', '12400', 'KENDARAAN', 'D'),
(19, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21100', 'HUTANG USAHA', '3', 'D', '21100', 'HUTANG USAHA', 'D'),
(20, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21200', 'PENDAPATAN DITERIMA DIMUKA', '3', 'D', '21200', 'PENDAPATAN DITERIMA DIMUKA', 'D'),
(21, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21400', 'BIAYA YANG MASIH HARUS DIBAYAR', '3', 'D', '21400', 'BIAYA YANG MASIH HARUS DIBAYAR', 'D'),
(22, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21500', 'HUTANG BEBAN', '3', 'D', '21500', 'HUTANG BEBAN', 'D'),
(23, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41200', 'PENJUALAN PERTALITE', '3', 'D', '41200', 'PENJUALAN PERTALITE', 'D'),
(24, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41300', 'PENJUALAN DEXLITE', '3', 'D', '41300', 'PENJUALAN DEXLITE', 'D'),
(25, '40000', 'PENDAPATAN', '1', 'H', '42000', 'SEWA', '2', 'H', '42801', 'SEWA ATM', '3', 'D', '42801', 'SEWA ATM', 'D'),
(26, '40000', 'PENDAPATAN', '1', 'H', '42000', 'SEWA', '2', 'H', '42805', 'DISKON PEMBELIAN', '3', 'D', '42805', 'DISKON PEMBELIAN', 'D'),
(27, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41100', 'PENJUALAN PERTAMAX', '3', 'D', '41100', 'PENJUALAN PERTAMAX', 'D'),
(28, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41400', 'PENJUALAN GAS', '3', 'D', '41400', 'PENJUALAN GAS', 'D'),
(29, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41500', 'PENJUALAN OLI', '3', 'D', '41500', 'PENJUALAN OLI', 'D'),
(30, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51100', 'HPP PERTAMAX', '3', 'D', '51100', 'HPP PERTAMAX', 'D'),
(31, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52100', 'TEKOR PERTAMAX', '3', 'D', '52100', 'TEKOR PERTAMAX', 'D'),
(32, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51200', 'HPP PERTALITE', '3', 'D', '51200', 'HPP PERTALITE', 'D'),
(33, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51300', 'HPP DEX LITE', '3', 'D', '51300', 'HPP DEX LITE', 'D'),
(34, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51400', 'HPP GAS', '3', 'D', '51400', 'HPP GAS', 'D'),
(35, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51500', 'HPP OLI', '3', 'D', '51500', 'HPP OLI', 'D'),
(36, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52200', 'TEKOR PERTALITE', '3', 'D', '52200', 'TEKOR PERTALITE', 'D'),
(37, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52300', 'TEKOR DEX LITE', '3', 'D', '52300', 'TEKOR DEX LITE', 'D'),
(38, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52400', 'TEKOR GAS', '3', 'D', '52400', 'TEKOR GAS', 'D'),
(39, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52500', 'TEKOR OLI', '3', 'D', '52500', 'TEKOR OLI', 'D'),
(40, '30000', 'EKUITAS', '1', 'H', '32000', 'MODAL', '2', 'H', '32300', 'LABA DI TAHAN', '3', 'D', '32300', 'LABA DI TAHAN', 'D'),
(41, '30000', 'EKUITAS', '1', 'H', '32000', 'MODAL', '2', 'H', '32400', 'DEVIDEN', '3', 'D', '32400', 'DEVIDEN', 'D'),
(42, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62100', 'PAJAK BBM PPH 22', '3', 'D', '62100', 'PAJAK BBM PPH 22', 'D'),
(43, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62300', 'SPT PPH PASAL 23', '3', 'D', '62300', 'SPT PPH PASAL 23', 'D'),
(44, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62400', 'PAJAK PASAL 21 GAJI KARYAWAN', '3', 'D', '62400', 'PAJAK PASAL 21 GAJI KARYAWAN', 'D'),
(45, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62500', 'SPT TAHUN 2023', '3', 'D', '62500', 'SPT TAHUN 2023', 'D'),
(46, '20000', 'KEWAJIBAN', '1', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23200', 'HUTANG PPN', '3', 'H', '23210', 'PPN MASUKAN', 'D'),
(47, '20000', 'KEWAJIBAN', '1', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23200', 'HUTANG PPN', '3', 'H', '23220', 'PPN KELUARAN', 'D'),
(48, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62203', 'BIAYA KONSUMSI / TAMU', 'D'),
(49, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62201', 'BIAYA BANTEN', 'D'),
(50, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62204', 'KEP. KANTOR', 'D'),
(51, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11601', 'PERSEDIAAN PERTAMAX', 'D'),
(52, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11602', 'PERSEDIAAN PERTALITE', 'D'),
(53, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11603', 'PERSEDIAAN DEX LITE', 'D'),
(54, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12500', 'AKUMULASI PENYUSUTAN', '3', 'H', '12502', 'AKP. BANGUNAN DAN GEDUNG', 'D'),
(55, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12500', 'AKUMULASI PENYUSUTAN', '3', 'H', '12501', 'AKP. PERALATAN DAN MESIN', 'D'),
(56, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61201', 'BELANJA PAKAIAN KARYAWAN', 'D'),
(57, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61202', 'BELANJA ASURANSI', 'D'),
(58, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12500', 'AKUMULASI PENYUSUTAN', '3', 'H', '12503', 'AKP. KENDARAAN', 'D'),
(59, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11604', 'PERSEDIAAN GAS', 'D'),
(60, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11605', 'PERSEDIAAN OLI', 'D'),
(61, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61203', 'BELANJA PEMELIHARAAN', 'D'),
(62, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11100', 'KAS DAN SETARA KAS', '3', 'H', '11110', 'KAS', 'D'),
(63, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11200', 'KAS BANK', '3', 'H', '11210', 'BANK MANDIRI', 'D'),
(64, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62202', 'BIAYA KONSUMSI SOPIR DO', 'D'),
(65, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61101', 'LISTRIK', 'D'),
(66, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61102', 'AIR', 'D'),
(67, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61103', 'BEBAN PENYUSUTAN ASET', 'D'),
(68, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11400', 'PERSEDIAAN LAINNYA', '3', 'H', '11401', 'PERSEDIAAN DI BAYAR DIMUKA', 'D'),
(69, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11400', 'PERSEDIAAN LAINNYA', '3', 'H', '11402', 'PERSEDIAAN ATK', 'D'),
(70, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11400', 'PERSEDIAAN LAINNYA', '3', 'H', '11403', 'PERSEDIAAN MATERAI', 'D'),
(71, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61104', 'TELEPON & INTERNET', 'D'),
(72, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61105', 'ADM BANK', 'D'),
(73, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61106', 'JAMSOSTEK', 'D'),
(74, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61107', 'BPJS', 'D'),
(75, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61108', 'HISWANA', 'D'),
(76, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61109', 'GAJI KARYAWAN + HONOR DIREKSI', 'D'),
(77, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61204', 'SEWA PLTS PERTAMINA', 'D'),
(78, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62205', 'BBM SOLAR GENSET/ P. RUMPUT / SAMPAH', 'D'),
(79, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62206', 'TRANSPORT', 'D'),
(80, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62207', 'SUMBANGAN POLSEK & POLRES / DEPO', 'D'),
(81, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62208', 'SUMBANGAN BANJAR / KARANGAN BUNGA', 'D'),
(82, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61205', 'TERA DISPENSER + TERA BEJANA METROLOGI', 'D'),
(83, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61110', 'CICILAN RENOVASI', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `connection` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `queue` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `payload` longtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `exception` longtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_ledger`
--

CREATE TABLE `general_ledger` (
  `id` int NOT NULL,
  `notrans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `order_no` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `invoice_no` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `r_anggaran` int NOT NULL,
  `sumber_anggaran` tinyint NOT NULL DEFAULT '1' COMMENT '0 = silpa, 1 = hibah',
  `tabel_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_trans` decimal(15,2) NOT NULL DEFAULT '0.00',
  `memo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jurnal` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rlocation` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `comp_loc` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `loctrf_from` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `loctrf_to` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `pay_notrans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `return_notrans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `trigered` int NOT NULL DEFAULT '0',
  `void_flag` int NOT NULL DEFAULT '0',
  `extdata_flag` int NOT NULL DEFAULT '0',
  `us_create` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `us_update` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_udpate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `general_ledger`
--

INSERT INTO `general_ledger` (`id`, `notrans`, `order_no`, `invoice_no`, `r_anggaran`, `sumber_anggaran`, `tabel_trans`, `tgl`, `total_trans`, `memo`, `jurnal`, `rlocation`, `comp_loc`, `loctrf_from`, `loctrf_to`, `pay_notrans`, `return_notrans`, `trigered`, `void_flag`, `extdata_flag`, `us_create`, `us_update`, `date_create`, `date_udpate`) VALUES
(1, 'GJ000001', 'GJ23041', '0', 99999, 1, 'general_ledger', '2023-04-15 00:00:00', '150000000.00', 'modal', 'GJ', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-15 10:20:45', '2023-04-15 10:20:45'),
(7, 'GJ000007', 'KP0420231', '0', 99999, 1, 'general_ledger', '2023-04-15 00:00:00', '800000.00', 'Penjualan-Kupon', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-15 10:24:03', '2023-04-15 10:24:03'),
(8, 'GJ000008', 'KP0420231', '0', 99999, 1, 'general_ledger', '2023-04-15 00:00:00', '700000.00', 'Penjualan-Kupon', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-15 10:24:03', '2023-04-15 10:24:03'),
(230, 'GJ000036', 'BY23041', '0', 99999, 1, 'general_ledger', '2023-04-20 00:00:00', '85000.00', 'ADMIN BANK', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-20 10:49:08', '2023-04-20 10:49:08'),
(231, 'GJ000037', 'BY23042', '0', 99999, 1, 'general_ledger', '2023-04-20 00:00:00', '500000.00', 'GAJI', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-20 10:50:26', '2023-04-20 10:50:26'),
(232, 'GJ000038', 'INV2023001', '0', 99999, 1, 'general_ledger', '2023-04-20 00:00:00', '220000.00', 'Penjualan-Barang', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(233, 'GJ000039', 'INV2023001', '0', 99999, 1, 'general_ledger', '2023-04-20 00:00:00', '18000.00', 'Penjualan-Barang', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(294, 'GJ000040', 'PO0420231', '0', 99999, 1, 'general_ledger', '2023-04-21 00:00:00', '39000000.00', 'PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(295, 'GJ000041', 'PO0420231', '0', 99999, 1, 'general_ledger', '2023-04-21 00:00:00', '27600000.00', 'PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(296, 'GJ000042', 'PO0420231', '0', 99999, 1, 'general_ledger', '2023-04-21 00:00:00', '42000000.00', 'PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(297, 'GJ000043', 'PO0420231', '0', 99999, 1, 'general_ledger', '2023-04-21 00:00:00', '450000.00', 'PPH-PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(298, 'GJ000044', 'PO0420232', '0', 99999, 1, 'general_ledger', '2023-04-16 00:00:00', '37500000.00', 'PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(299, 'GJ000045', 'PO0420232', '0', 99999, 1, 'general_ledger', '2023-04-16 00:00:00', '29100000.00', 'PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(300, 'GJ000046', 'PO0420232', '0', 99999, 1, 'general_ledger', '2023-04-16 00:00:00', '42000000.00', 'PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(301, 'GJ000047', 'PO0420232', '0', 99999, 1, 'general_ledger', '2023-04-16 00:00:00', '524000.00', 'PPH-PO-BBM', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(302, 'GJ000048', 'BR0420231', '0', 99999, 1, 'general_ledger', '2023-04-21 00:00:00', '37500000.00', 'BBM-Datang', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(303, 'GJ000049', 'BR0420231', '0', 99999, 1, 'general_ledger', '2023-04-21 00:00:00', '29100000.00', 'BBM-Datang', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(304, 'GJ000050', 'BR0420231', '0', 99999, 1, 'general_ledger', '2023-04-21 00:00:00', '42000000.00', 'BBM-Datang', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2023-04-22 06:38:48', '2023-04-22 06:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `gl`
--

CREATE TABLE `gl` (
  `id` int UNSIGNED NOT NULL,
  `acc_id` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `amount` decimal(15,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gl`
--

INSERT INTO `gl` (`id`, `acc_id`, `amount`) VALUES
(1, '11110', '-103667360.00'),
(2, '32200', '-150000000.00'),
(3, '21200', '-1500000.00'),
(4, '11401', '109690000.00'),
(5, '62100', '-1235400.00'),
(6, '32300', '394500.00'),
(7, '23100', '-39450.00'),
(8, '61105', '-85000.00'),
(9, '61109', '-500000.00'),
(10, '41400', '238000.00'),
(11, '11604', '-238000.00'),
(12, '51400', '228000.00'),
(13, '11601', '23142400.00'),
(14, '11602', '58333950.00'),
(15, '11603', '63883960.00'),
(16, '51100', '3276000.00'),
(17, '41100', '3692000.00'),
(18, '51200', '2821500.00'),
(19, '41200', '3267000.00'),
(20, '51300', '6048000.00'),
(21, '41300', '6728400.00'),
(22, '62202', '-76000.00'),
(23, '62201', '-50000.00'),
(24, '38100', '24352500.00'),
(25, '38999', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gl_detail`
--

CREATE TABLE `gl_detail` (
  `id` int NOT NULL,
  `rgl` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `acc_id` int NOT NULL,
  `debet` decimal(13,2) NOT NULL,
  `kredit` decimal(13,2) NOT NULL,
  `trans_detail` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `void_flag` int NOT NULL DEFAULT '0',
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_udpate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gl_detail`
--

INSERT INTO `gl_detail` (`id`, `rgl`, `acc_id`, `debet`, `kredit`, `trans_detail`, `void_flag`, `date_create`, `date_udpate`) VALUES
(1, 'GJ000001', 11110, '150000000.00', '0.00', 'Jurnal-Umum', 0, '2023-04-15 10:20:45', '2023-04-15 10:20:45'),
(2, 'GJ000001', 32200, '0.00', '150000000.00', 'Jurnal-Umum', 0, '2023-04-15 10:20:45', '2023-04-15 10:20:45'),
(16, 'GJ000007', 11110, '800000.00', '0.00', 'Penjualan-Kupon', 0, '2023-04-15 10:24:03', '2023-04-15 10:24:03'),
(17, 'GJ000007', 21200, '0.00', '800000.00', 'Penjualan-Kupon', 0, '2023-04-15 10:24:03', '2023-04-15 10:24:03'),
(18, 'GJ000008', 11110, '700000.00', '0.00', 'Penjualan-Kupon', 0, '2023-04-15 10:24:03', '2023-04-15 10:24:03'),
(19, 'GJ000008', 21200, '0.00', '700000.00', 'Penjualan-Kupon', 0, '2023-04-15 10:24:03', '2023-04-15 10:24:03'),
(1282, 'GJ000036', 61105, '0.00', '85000.00', 'Trans-biaya', 0, '2023-04-20 10:49:08', '2023-04-20 10:49:08'),
(1283, 'GJ000036', 11110, '0.00', '85000.00', 'Trans-biaya', 0, '2023-04-20 10:49:08', '2023-04-20 10:49:08'),
(1284, 'GJ000036', 32300, '85000.00', '0.00', 'Trans-biaya', 0, '2023-04-20 10:49:08', '2023-04-20 10:49:08'),
(1285, 'GJ000036', 11110, '8500.00', '0.00', 'Trans-biaya', 0, '2023-04-20 10:49:08', '2023-04-20 10:49:08'),
(1286, 'GJ000036', 23100, '0.00', '8500.00', 'Trans-biaya', 0, '2023-04-20 10:49:08', '2023-04-20 10:49:08'),
(1287, 'GJ000037', 61109, '0.00', '500000.00', 'Trans-biaya', 0, '2023-04-20 10:50:26', '2023-04-20 10:50:26'),
(1288, 'GJ000037', 11110, '0.00', '500000.00', 'Trans-biaya', 0, '2023-04-20 10:50:26', '2023-04-20 10:50:26'),
(1289, 'GJ000037', 32300, '500000.00', '0.00', 'Trans-biaya', 0, '2023-04-20 10:50:26', '2023-04-20 10:50:26'),
(1290, 'GJ000037', 11110, '50000.00', '0.00', 'Trans-biaya', 0, '2023-04-20 10:50:26', '2023-04-20 10:50:26'),
(1291, 'GJ000037', 23100, '0.00', '50000.00', 'Trans-biaya', 0, '2023-04-20 10:50:26', '2023-04-20 10:50:26'),
(1292, 'GJ000038', 41400, '220000.00', '0.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1293, 'GJ000038', 11110, '228000.00', '0.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1294, 'GJ000038', 11604, '0.00', '220000.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1295, 'GJ000038', 51400, '212000.00', '0.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1296, 'GJ000038', 32300, '0.00', '8000.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1297, 'GJ000038', 11110, '0.00', '800.00', 'Penjualan-pph22', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1298, 'GJ000038', 23100, '800.00', '0.00', 'Penjualan-pph22', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1299, 'GJ000039', 41400, '18000.00', '0.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1300, 'GJ000039', 11110, '20000.00', '0.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1301, 'GJ000039', 11604, '0.00', '18000.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1302, 'GJ000039', 51400, '16000.00', '0.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1303, 'GJ000039', 32300, '0.00', '2000.00', 'Penjualan-Barang', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1304, 'GJ000039', 11110, '0.00', '200.00', 'Penjualan-pph22', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1305, 'GJ000039', 23100, '200.00', '0.00', 'Penjualan-pph22', 0, '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(1542, 'GJ000040', 11401, '39000000.00', '0.00', 'PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1543, 'GJ000040', 11110, '0.00', '39000000.00', 'PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1544, 'GJ000041', 11401, '27600000.00', '0.00', 'PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1545, 'GJ000041', 11110, '0.00', '27600000.00', 'PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1546, 'GJ000042', 11401, '42000000.00', '0.00', 'PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1547, 'GJ000042', 11110, '0.00', '42000000.00', 'PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1548, 'GJ000043', 62100, '0.00', '450000.00', 'PPH-PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1549, 'GJ000043', 11110, '0.00', '450000.00', 'PPH-PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1550, 'GJ000043', 32300, '450000.00', '0.00', 'PPH-PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1551, 'GJ000043', 11110, '45000.00', '0.00', 'Trans-biaya', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1552, 'GJ000043', 23100, '0.00', '45000.00', 'PPH-PO-BBM', 0, '2023-04-21 22:37:00', '2023-04-21 22:37:00'),
(1553, 'GJ000044', 11401, '37500000.00', '0.00', 'PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1554, 'GJ000044', 11110, '0.00', '37500000.00', 'PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1555, 'GJ000045', 11401, '29100000.00', '0.00', 'PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1556, 'GJ000045', 11110, '0.00', '29100000.00', 'PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1557, 'GJ000046', 11401, '42000000.00', '0.00', 'PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1558, 'GJ000046', 11110, '0.00', '42000000.00', 'PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1559, 'GJ000047', 62100, '0.00', '524000.00', 'PPH-PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1560, 'GJ000047', 11110, '0.00', '524000.00', 'PPH-PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1561, 'GJ000047', 32300, '524000.00', '0.00', 'PPH-PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1562, 'GJ000047', 11110, '52400.00', '0.00', 'Trans-biaya', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1563, 'GJ000047', 23100, '0.00', '52400.00', 'PPH-PO-BBM', 0, '2023-04-22 06:37:45', '2023-04-22 06:37:45'),
(1564, 'GJ000048', 11601, '37500000.00', '0.00', 'BBM-Datang', 0, '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(1565, 'GJ000048', 11401, '0.00', '37500000.00', 'BBM-Datang', 0, '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(1566, 'GJ000049', 11602, '29100000.00', '0.00', 'BBM-Datang', 0, '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(1567, 'GJ000049', 11401, '0.00', '29100000.00', 'BBM-Datang', 0, '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(1568, 'GJ000050', 11603, '42000000.00', '0.00', 'BBM-Datang', 0, '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(1569, 'GJ000050', 11401, '0.00', '42000000.00', 'BBM-Datang', 0, '2023-04-22 06:38:48', '2023-04-22 06:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `gl_lr`
--

CREATE TABLE `gl_lr` (
  `id` int UNSIGNED NOT NULL,
  `acc_id` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `amount` decimal(15,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gl_lr`
--

INSERT INTO `gl_lr` (`id`, `acc_id`, `amount`) VALUES
(1, '11110', '-103667360.00'),
(2, '32200', '-150000000.00'),
(3, '21200', '-1500000.00'),
(4, '11401', '109690000.00'),
(5, '62100', '-1235400.00'),
(6, '32300', '394500.00'),
(7, '23100', '-39450.00'),
(8, '61105', '-85000.00'),
(9, '61109', '-500000.00'),
(10, '41400', '238000.00'),
(11, '11604', '-238000.00'),
(12, '51400', '228000.00'),
(13, '11601', '23142400.00'),
(14, '11602', '58333950.00'),
(15, '11603', '63883960.00'),
(16, '51100', '3276000.00'),
(17, '41100', '3692000.00'),
(18, '51200', '2821500.00'),
(19, '41200', '3267000.00'),
(20, '51300', '6048000.00'),
(21, '41300', '6728400.00'),
(22, '62202', '-76000.00'),
(23, '62201', '-50000.00'),
(24, '38100', '0.00'),
(25, '38999', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `level1`
--

CREATE TABLE `level1` (
  `id` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `acc_id` int NOT NULL,
  `alevel` int NOT NULL,
  `parent` int NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `atype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `jurnal` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jtype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `trigered` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `level1`
--

INSERT INTO `level1` (`id`, `acc_id`, `alevel`, `parent`, `name`, `atype`, `amount`, `jurnal`, `jtype`, `trigered`, `active`, `date_create`) VALUES
('202208011', 10000, 1, 0, 'HARTA', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:18'),
('202208012', 20000, 1, 0, 'KEWAJIBAN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:18'),
('202208013', 30000, 1, 0, 'EKUITAS', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:18'),
('202208014', 40000, 1, 0, 'PENDAPATAN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:18'),
('202208015', 50000, 1, 0, 'BIAYA PENJUALAN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:18'),
('202208016', 60000, 1, 0, 'PENGELUARAN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `level2`
--

CREATE TABLE `level2` (
  `id` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `acc_id` int NOT NULL,
  `alevel` int NOT NULL,
  `parent` int NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `atype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `jurnal` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jtype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `trigered` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `level2`
--

INSERT INTO `level2` (`id`, `acc_id`, `alevel`, `parent`, `name`, `atype`, `amount`, `jurnal`, `jtype`, `trigered`, `active`, `date_create`) VALUES
('202208011', 11000, 2, 10000, 'ASET LANCAR', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:35'),
('2022080110', 61000, 2, 60000, 'BELANJA OPERASIONAL', 'H', '0.00', 'JK', 'h', '0', '1', '2022-08-25 21:51:35'),
('2022080114', 12000, 2, 10000, 'ASET TETAP', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:35'),
('2022080115', 62000, 2, 60000, 'BIAYA LAINNYA', 'H', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:51:35'),
('2022080116', 23000, 2, 20000, 'HUTANG PAJAK', 'H', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:51:35'),
('2022080117', 32000, 2, 30000, 'MODAL', 'H', '0.00', 'JK', 'h', '0', '1', '2022-08-25 21:51:35'),
('202208012', 21000, 2, 20000, 'KEWAJIBAN JANGKA PENDEK', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:35'),
('202208016', 41000, 2, 40000, 'PENJUALAN', 'H', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:51:35'),
('202208017', 42000, 2, 40000, 'SEWA', 'H', '0.00', 'JK', 'h', '0', '1', '2022-08-25 21:51:35'),
('202208018', 51000, 2, 50000, 'HPP PENJUALAN', 'H', '0.00', 'JK', 'h', '0', '1', '2022-08-25 21:51:35'),
('20230215', 52000, 2, 50000, 'TEKOR', 'H', '0.00', 'JK', 'h', '0', '1', '2022-08-25 21:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `level3`
--

CREATE TABLE `level3` (
  `id` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `acc_id` int NOT NULL,
  `alevel` int NOT NULL,
  `parent` int NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `atype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `jurnal` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jtype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `trigered` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `level3`
--

INSERT INTO `level3` (`id`, `acc_id`, `alevel`, `parent`, `name`, `atype`, `amount`, `jurnal`, `jtype`, `trigered`, `active`, `date_create`) VALUES
('2022080111', 12000, 2, 12000, 'ASET TETAP', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:51'),
('2022080114', 61200, 3, 61000, 'BELANJA BARANG DAN JASA', 'H', '0.00', 'JK', 'h', '0', '1', '2022-08-25 21:51:51'),
('2022080117', 62200, 3, 62000, 'BIAYA LAIN-LAIN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:51'),
('2022080118', 23100, 3, 23000, 'HUTANG PAJAK PPH FINAL PS 4 AYAT 2', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-08 10:32:58'),
('2022080119', 23200, 3, 23000, 'HUTANG PPN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:51'),
('202208012', 21300, 3, 21000, 'HUTANG LAINNYA', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:51:51'),
('2022080120', 32200, 3, 32000, 'MODAL YANG DI SETOR', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:51:51'),
('2022080131', 11600, 3, 11000, 'PERSEDIAAN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:52'),
('2022080132', 12100, 3, 12000, 'TANAH', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080133', 12200, 3, 12000, 'GEDUNG DAN BANGUNAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080134', 12300, 3, 12000, 'PERALATAN DAN MESIN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080135', 12400, 3, 12000, 'KENDARAAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080136', 12500, 3, 12000, 'AKUMULASI PENYUSUTAN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:52'),
('2022080138', 21100, 3, 21000, 'HUTANG USAHA', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080139', 21200, 3, 21000, 'PENDAPATAN DITERIMA DIMUKA', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:51:52'),
('2022080140', 21400, 3, 21000, 'BIAYA YANG MASIH HARUS DIBAYAR', 'D', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:51:52'),
('2022080141', 21500, 3, 21000, 'HUTANG BEBAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080143', 41200, 3, 41000, 'PENJUALAN PERTALITE', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:51:52'),
('2022080144', 41300, 3, 41000, 'PENJUALAN DEXLITE', 'D', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:51:52'),
('2022080148', 42801, 3, 42000, 'SEWA ATM', 'D', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:51:52'),
('2022080152', 42805, 3, 42000, 'DISKON PEMBELIAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('202208016', 41100, 3, 41000, 'PENJUALAN PERTAMAX', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:51:51'),
('20220830033326', 23700, 3, 23000, 'HUTANG JANGKA PAJANG', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-30 11:33:26'),
('20230201021633', 11100, 3, 11000, 'KAS DAN SETARA KAS', 'H', '0.00', 'JK', '1', '0', '1', '2023-02-01 09:16:33'),
('20230201022212', 11200, 3, 11000, 'KAS BANK', 'H', '0.00', 'JK', '1', '0', '1', '2023-02-01 09:22:13'),
('20230308232318', 41400, 3, 41000, 'PENJUALAN GAS', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 07:23:18'),
('20230308232336', 41500, 3, 41000, 'PENJUALAN OLI', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 07:23:36'),
('20230309024556', 51100, 3, 51000, 'HPP PERTAMAX', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:45:56'),
('20230309024751', 52100, 3, 52000, 'TEKOR PERTAMAX', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:47:51'),
('20230309024829', 51200, 3, 51000, 'HPP PERTALITE', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:48:29'),
('20230309024844', 51300, 3, 51000, 'HPP DEX LITE', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:48:44'),
('20230309024859', 51400, 3, 51000, 'HPP GAS', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:48:59'),
('20230309024913', 51500, 3, 51000, 'HPP OLI', 'D', '0.00', 'JK', 'd', '0', '1', '2023-03-09 10:49:13'),
('20230309024938', 52200, 3, 52000, 'TEKOR PERTALITE', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:49:38'),
('20230309025000', 52300, 3, 52000, 'TEKOR DEX LITE', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:50:00'),
('20230309025126', 52400, 3, 52000, 'TEKOR GAS', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:51:26'),
('20230309025140', 52500, 3, 52000, 'TEKOR OLI', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:51:40'),
('20230319035428', 61100, 3, 61000, 'BELANJA BEBAN', 'H', '0.00', 'JK', 'h', '0', '1', '2023-03-19 11:54:28'),
('20230319123411', 32300, 3, 32000, 'LABA DI TAHAN', 'D', '0.00', 'JK', 'd', '0', '1', '2023-03-19 20:34:11'),
('20230319123851', 11400, 3, 11000, 'PERSEDIAAN LAINNYA', 'H', '0.00', 'JK', '1', '0', '1', '2023-03-19 20:38:51'),
('20230408034512', 32400, 3, 32000, 'DEVIDEN', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-08 11:45:12'),
('20230408035308', 62100, 3, 62000, 'PAJAK BBM PPH 22', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-08 11:53:08'),
('20230420022623', 62300, 3, 62000, 'SPT PPH PASAL 23', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:26:23'),
('20230420023803', 62400, 3, 62000, 'PAJAK PASAL 21 GAJI KARYAWAN', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:38:03'),
('20230420024707', 62500, 3, 62000, 'SPT TAHUN 2023', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `level4`
--

CREATE TABLE `level4` (
  `id` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `acc_id` int NOT NULL,
  `alevel` int NOT NULL,
  `parent` int NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `atype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `jurnal` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jtype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `trigered` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `level4`
--

INSERT INTO `level4` (`id`, `acc_id`, `alevel`, `parent`, `name`, `atype`, `amount`, `jurnal`, `jtype`, `trigered`, `active`, `date_create`) VALUES
('202208011', 21300, 3, 21300, 'HUTANG LAINNYA', 'B', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:22'),
('2022080110', 12000, 2, 12000, 'ASET TETAP', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080114', 23100, 3, 23100, 'HUTANG PAJAK PPH FINAL', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080115', 23210, 4, 23200, 'PPN MASUKAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080116', 23220, 4, 23200, 'PPN KELUARAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080117', 32200, 3, 32200, 'MODAL YANG DI SETOR', 'B', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:22'),
('2022080121', 62203, 4, 62200, 'BIAYA KONSUMSI / TAMU', 'D', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:52:23'),
('2022080123', 62201, 4, 62200, 'BIAYA BANTEN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080126', 62204, 4, 62200, 'KEP. KANTOR', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:23'),
('2022080138', 11601, 4, 11600, 'PERSEDIAAN PERTAMAX', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:23'),
('2022080139', 11602, 4, 11600, 'PERSEDIAAN PERTALITE', 'D', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:52:23'),
('2022080140', 11603, 4, 11600, 'PERSEDIAAN DEX LITE', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:23'),
('2022080141', 12100, 3, 12100, 'TANAH', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080142', 12200, 3, 12200, 'GEDUNG DAN BANGUNAN', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080143', 12300, 3, 12300, 'PERALATAN DAN MESIN', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080144', 12400, 3, 12400, 'KENDARAAN', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080145', 12502, 4, 12500, 'AKP. BANGUNAN DAN GEDUNG', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080146', 12501, 4, 12500, 'AKP. PERALATAN DAN MESIN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080148', 21100, 3, 21100, 'HUTANG USAHA', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080149', 21200, 3, 21200, 'PENDAPATAN DITERIMA DIMUKA', 'B', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:23'),
('202208015', 41100, 3, 41100, 'PENJUALAN PERTAMAX', 'B', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:22'),
('2022080150', 21400, 3, 21400, 'BIAYA YANG MASIH HARUS DIBAYAR', 'B', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:52:23'),
('2022080151', 21500, 3, 21500, 'HUTANG BEBAN', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080153', 41200, 3, 41200, 'PENJUALAN PERTALITE', 'B', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:23'),
('2022080154', 41300, 3, 41300, 'PENJUALAN DEXLITE', 'B', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:52:23'),
('2022080158', 42801, 3, 42801, 'SEWA ATM', 'B', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:52:23'),
('2022080162', 42805, 3, 42805, 'DISKON PEMBELIAN', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080163', 61201, 4, 61200, 'BELANJA PAKAIAN KARYAWAN', 'D', '0.00', 'JK', 'c', '0', '1', '2023-03-14 06:48:12'),
('2022080164', 61202, 4, 61200, 'BELANJA ASURANSI', 'D', '0.00', 'JK', 'c', '0', '1', '2023-03-18 08:52:25'),
('20221208032333', 12503, 4, 12500, 'AKP. KENDARAAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-12-08 11:23:34'),
('20221212034801', 11604, 4, 11600, 'PERSEDIAAN GAS', 'D', '0.00', 'JK', 'd', '0', '1', '2022-12-12 11:48:02'),
('20221212034848', 11605, 4, 11600, 'PERSEDIAAN OLI', 'D', '0.00', 'JK', 'c', '0', '1', '2022-12-12 11:48:49'),
('20221212060252', 61203, 4, 61200, 'BELANJA PEMELIHARAAN', 'D', '0.00', 'JK', 'c', '0', '1', '2023-03-18 12:08:42'),
('20230201021743', 11110, 4, 11100, 'KAS', 'D', '0.00', 'JK', 'c', '0', '1', '2023-02-01 09:17:43'),
('20230201022303', 11210, 4, 11200, 'BANK MANDIRI', 'D', '0.00', 'JK', 'c', '0', '1', '2023-03-24 16:36:49'),
('20230201023837', 62202, 4, 62200, 'BIAYA KONSUMSI SOPIR DO', 'D', '0.00', 'JK', 'd', '0', '1', '2023-02-01 09:38:37'),
('20230308232318', 41400, 3, 41000, 'PENJUALAN GAS', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 07:23:18'),
('20230308232336', 41500, 3, 41000, 'PENJUALAN OLI', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 07:23:36'),
('20230309024556', 51100, 3, 51000, 'HPP PERTAMAX', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:45:56'),
('20230309024751', 52100, 3, 52000, 'TEKOR PERTAMAX', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:47:51'),
('20230309024829', 51200, 3, 51000, 'HPP PERTALITE', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:48:29'),
('20230309024844', 51300, 3, 51000, 'HPP DEX LITE', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:48:44'),
('20230309024859', 51400, 3, 51000, 'HPP GAS', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:48:59'),
('20230309024913', 51500, 3, 51000, 'HPP OLI', 'B', '0.00', 'JK', 'd', '0', '1', '2023-03-09 10:49:13'),
('20230309024938', 52200, 3, 52000, 'TEKOR PERTALITE', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:49:38'),
('20230309025000', 52300, 3, 52000, 'TEKOR DEX LITE', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:50:00'),
('20230309025126', 52400, 3, 52000, 'TEKOR GAS', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:51:26'),
('20230309025140', 52500, 3, 52000, 'TEKOR OLI', 'B', '0.00', 'JK', '2', '0', '1', '2023-03-09 10:51:40'),
('20230319035520', 61101, 4, 61100, 'LISTRIK', 'D', '0.00', 'JK', 'd', '0', '1', '2023-03-19 11:55:20'),
('20230319035700', 61102, 4, 61100, 'AIR', 'D', '0.00', 'JK', 'd', '0', '1', '2023-03-19 11:57:00'),
('20230319040056', 61103, 4, 61100, 'BEBAN PENYUSUTAN ASET', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 12:00:56'),
('20230319123411', 32300, 3, 32000, 'LABA DI TAHAN', 'B', '0.00', 'JK', 'd', '0', '1', '2023-03-19 20:34:11'),
('20230319124033', 11401, 4, 11400, 'PERSEDIAAN DI BAYAR DIMUKA', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 20:40:33'),
('20230319124153', 11402, 4, 11400, 'PERSEDIAAN ATK', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 20:41:53'),
('20230319124245', 11403, 4, 11400, 'PERSEDIAAN MATERAI', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 20:42:45'),
('20230408034512', 32400, 3, 32000, 'DEVIDEN', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-08 11:45:12'),
('20230408035308', 62100, 3, 62000, 'PAJAK BBM PPH 22', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-08 11:53:08'),
('20230420022623', 62300, 3, 62000, 'SPT PPH PASAL 23', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:26:23'),
('20230420022828', 61104, 4, 61100, 'TELEPON & INTERNET', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:28:28'),
('20230420022912', 61105, 4, 61100, 'ADM BANK', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:29:12'),
('20230420023002', 61106, 4, 61100, 'JAMSOSTEK', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:30:03'),
('20230420023027', 61107, 4, 61100, 'BPJS', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:30:27'),
('20230420023105', 61108, 4, 61100, 'HISWANA', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:31:05'),
('20230420023259', 61109, 4, 61100, 'GAJI KARYAWAN + HONOR DIREKSI', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:32:59'),
('20230420023803', 62400, 3, 62000, 'PAJAK PASAL 21 GAJI KARYAWAN', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:38:03'),
('20230420023912', 61204, 4, 61200, 'SEWA PLTS PERTAMINA', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:39:12'),
('20230420024112', 62205, 4, 62200, 'BBM SOLAR GENSET/ P. RUMPUT / SAMPAH', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:41:12'),
('20230420024148', 62206, 4, 62200, 'TRANSPORT', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:41:48'),
('20230420024245', 62207, 4, 62200, 'SUMBANGAN POLSEK & POLRES / DEPO', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:42:45'),
('20230420024353', 62208, 4, 62200, 'SUMBANGAN BANJAR / KARANGAN BUNGA', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:43:53'),
('20230420024459', 61205, 4, 61200, 'TERA DISPENSER + TERA BEJANA METROLOGI', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:44:59'),
('20230420024538', 61110, 4, 61100, 'CICILAN RENOVASI', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:45:38'),
('20230420024707', 62500, 3, 62000, 'SPT TAHUN 2023', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_31_112609_create_rooms_table', 2),
(6, '2022_09_02_234530_create_rates_table', 3),
(7, '2023_01_12_121218_create_bbms_table', 4),
(8, '2023_01_14_092711_create_bbm_details_table', 5),
(9, '2023_01_14_093003_create_nosel_details_table', 5),
(10, '2023_01_15_020120_create_transaksi_nosels_table', 6),
(11, '2023_01_17_064557_create_pegawais_table', 7),
(12, '2023_01_18_054236_create_persediaans_table', 8),
(13, '2023_01_18_054644_create_persediaan_details_table', 8),
(14, '2023_01_18_145254_create_pembelians_table', 8),
(15, '2023_01_18_173900_create_pembelian_details_table', 8),
(19, '2023_01_25_205144_create_opnums_table', 9),
(20, '2023_01_25_205534_create_opnum_details_table', 10),
(21, '2023_01_27_054617_create_general_ledgers_table', 11),
(22, '2023_01_28_222515_create_kupons_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `abilities` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'ApiToken', '20c4ff4fddebc932ff8b59832171fb03e57302334d55d0ce6a24daaff5385b44', '[\"*\"]', NULL, '2023-01-21 10:59:41', '2023-01-21 10:59:41'),
(2, 'App\\Models\\User', 1, 'ApiToken', 'fdfd2079dabd38afd54d2525a81aa693c734fc59709919d0fb6e7fa930f9ec33', '[\"*\"]', NULL, '2023-01-21 11:19:51', '2023-01-21 11:19:51'),
(3, 'App\\Models\\User', 1, 'ApiToken', '6b9dd6a19edacbdc3882902e6d4c11e00c52a6efb9435648d41d71cf215f1d84', '[\"*\"]', NULL, '2023-01-26 21:23:44', '2023-01-26 21:23:44'),
(4, 'App\\Models\\User', 1, 'ApiToken', 'f75866907573a376464d5b7ffd407e896017186e5b1ac0d573ab9f80ac4857f0', '[\"*\"]', NULL, '2023-01-26 21:26:13', '2023-01-26 21:26:13'),
(5, 'App\\Models\\User', 1, 'ApiToken', '9625608f63a3190265e388f297b9db7985b00f06abb1780dd5e24db8395d0f7f', '[\"*\"]', NULL, '2023-01-26 21:41:01', '2023-01-26 21:41:01'),
(6, 'App\\Models\\User', 1, 'ApiToken', '88f5c4897d259933b398944c5653fb8116d34b36e19cda9b9e92d553c5e5962f', '[\"*\"]', NULL, '2023-01-27 11:16:12', '2023-01-27 11:16:12'),
(7, 'App\\Models\\User', 1, 'ApiToken', 'e8d8f4ecbde6f3e7d7b0189351333e3a057f86bf2e825ab28c928679c705634f', '[\"*\"]', NULL, '2023-01-27 11:38:15', '2023-01-27 11:38:15'),
(8, 'App\\Models\\User', 1, 'ApiToken', 'ab9f1ae4a3e51a81b676f0d04d3edbdc40cf00a74a843de5fa376503b87ccc93', '[\"*\"]', NULL, '2023-01-27 11:42:14', '2023-01-27 11:42:14'),
(9, 'App\\Models\\User', 1, 'ApiToken', 'ee36c45463b1650476dbb30ac7c2db0812dbbf9f79ecd75cbd76bcdcc25f8a0d', '[\"*\"]', NULL, '2023-01-27 11:44:36', '2023-01-27 11:44:36'),
(10, 'App\\Models\\User', 1, 'ApiToken', 'e512f064bd81c781c256a6de3d7fcfed429e712a14e9d420f6f930f32967ad8a', '[\"*\"]', NULL, '2023-01-27 12:04:21', '2023-01-27 12:04:21'),
(11, 'App\\Models\\User', 1, 'ApiToken', 'b39dd0ff8440af9197138402af597e159b12d28aa5d8db7e6428d4a1ca7a7be4', '[\"*\"]', NULL, '2023-01-27 12:08:39', '2023-01-27 12:08:39'),
(12, 'App\\Models\\User', 1, 'ApiToken', 'eff7a7d6a464642945d8e44f276e3c746c183cd34baa9dbb14428ebb691247e4', '[\"*\"]', NULL, '2023-01-27 12:22:39', '2023-01-27 12:22:39'),
(13, 'App\\Models\\User', 1, 'ApiToken', 'b8c76f0afd50c1eb001b1ed95c00ac0979f5d4736ba69aa93af062b809397431', '[\"*\"]', NULL, '2023-01-27 12:27:47', '2023-01-27 12:27:47'),
(14, 'App\\Models\\User', 1, 'ApiToken', 'd7603cd0b423e9368c3b8def077b19299def3f1639ee15aeeb8f052f609d8493', '[\"*\"]', NULL, '2023-01-27 12:30:24', '2023-01-27 12:30:24'),
(15, 'App\\Models\\User', 1, 'ApiToken', 'cbea163d8c4bcf8fb4c49d79a5348ca934266a1de316cd0d8366cda7b1bac895', '[\"*\"]', NULL, '2023-01-27 12:31:35', '2023-01-27 12:31:35'),
(16, 'App\\Models\\User', 1, 'ApiToken', 'bfcc24cdff7550e8ba1c7a5269f6fb3a2773ac70d32bbf3e50e24013d50eb6f6', '[\"*\"]', NULL, '2023-01-27 12:33:34', '2023-01-27 12:33:34'),
(17, 'App\\Models\\User', 1, 'ApiToken', 'bb4a42eaef171dd457b6d66022808375220977e156ba1dc374daf34a2651de87', '[\"*\"]', NULL, '2023-01-27 12:34:05', '2023-01-27 12:34:05'),
(18, 'App\\Models\\User', 1, 'ApiToken', 'c908f0454c4351ab5248b59d097936d3e00a2156d9898b2dbcb9f2b34bcdf9ff', '[\"*\"]', NULL, '2023-01-27 12:36:29', '2023-01-27 12:36:29'),
(19, 'App\\Models\\User', 1, 'ApiToken', '24a4c78944df2c61666d3886bc452dc4145a05ba2125ae457a7b9c2fef1d35bf', '[\"*\"]', NULL, '2023-01-27 12:36:38', '2023-01-27 12:36:38'),
(20, 'App\\Models\\User', 1, 'ApiToken', '18fbeab2794ad50df48ce9901f37bfa406a9e1fecd80024b4a06107246ae0b16', '[\"*\"]', NULL, '2023-01-27 12:36:43', '2023-01-27 12:36:43'),
(21, 'App\\Models\\User', 1, 'ApiToken', 'e4ed70b67f481a0dd5b8e5d70689fcc1959ab8002c7423b863d93c82f6ade3e5', '[\"*\"]', NULL, '2023-01-27 12:37:57', '2023-01-27 12:37:57'),
(22, 'App\\Models\\User', 1, 'ApiToken', '4aacb9757c6b98048804ed4ab031502d94eba65823fd24bf39abb61ae571b15b', '[\"*\"]', NULL, '2023-01-27 12:40:26', '2023-01-27 12:40:26'),
(23, 'App\\Models\\User', 1, 'ApiToken', 'e40dbd910496874015fc3659c235be360892adfecbbe95c038b5227ac11a100c', '[\"*\"]', NULL, '2023-01-27 12:40:43', '2023-01-27 12:40:43'),
(24, 'App\\Models\\User', 1, 'ApiToken', '14fcd68e5c9def50311bd3515933f8cd451db254117dbdef87fb49342bf847dd', '[\"*\"]', NULL, '2023-01-27 12:42:58', '2023-01-27 12:42:58'),
(25, 'App\\Models\\User', 1, 'ApiToken', '0c7469bd11d050bfe4b9dfc94035cb0448a925086d6442f646b32ca17d434f40', '[\"*\"]', NULL, '2023-01-27 12:48:37', '2023-01-27 12:48:37'),
(26, 'App\\Models\\User', 1, 'ApiToken', 'de566d7b3d6a93f1444ae5def89f8febe7681a7e8af614dad8660ab7c0e4a0e6', '[\"*\"]', NULL, '2023-01-27 12:52:26', '2023-01-27 12:52:26'),
(27, 'App\\Models\\User', 1, 'ApiToken', '7b2cd289a3ac1b6434e029cb40e2bf83930bda4a6f17a6e1de9202f82d1b2a0b', '[\"*\"]', NULL, '2023-01-27 12:52:36', '2023-01-27 12:52:36'),
(28, 'App\\Models\\User', 1, 'ApiToken', '816f01ea3828b9ea1f31a52f83fdab519e0e3f280e706d4d33703b5786fb7781', '[\"*\"]', NULL, '2023-01-27 12:52:40', '2023-01-27 12:52:40'),
(29, 'App\\Models\\User', 1, 'ApiToken', 'ed1babad547dd42e7b022582545824fbbef57b424f2d0f5737ae747a51212be4', '[\"*\"]', NULL, '2023-01-27 12:53:45', '2023-01-27 12:53:45'),
(30, 'App\\Models\\User', 1, 'ApiToken', '6e4f4cb06d2d38be32851cee024b17502d0a8dd090bd9533eaa51b1a5f90ade4', '[\"*\"]', NULL, '2023-01-27 13:07:25', '2023-01-27 13:07:25'),
(31, 'App\\Models\\User', 1, 'ApiToken', '27dca5f4a337c3486ea5079fad2d4162b4fa450d1bf67d32c5611c25f9ea0ebe', '[\"*\"]', NULL, '2023-01-27 13:07:44', '2023-01-27 13:07:44'),
(32, 'App\\Models\\User', 1, 'ApiToken', '51e87493539330a9c85b7c04f91042fa8eb555ec901efa996c53e789695a29f4', '[\"*\"]', NULL, '2023-01-27 13:11:22', '2023-01-27 13:11:22'),
(33, 'App\\Models\\User', 1, 'ApiToken', 'a550b600f26d453c14836e14f1ddf9e7d34dbb0dd444d300d82c99933d8280d3', '[\"*\"]', NULL, '2023-01-27 13:11:39', '2023-01-27 13:11:39'),
(34, 'App\\Models\\User', 1, 'ApiToken', '11dd50e00cafbb459d7649732820f5ac4f08e848541b28394bbf181fc7fbca2a', '[\"*\"]', NULL, '2023-01-27 13:12:26', '2023-01-27 13:12:26'),
(35, 'App\\Models\\User', 1, 'ApiToken', '31b9809cffd720dcba8759b49ca49bb5fdae3e97445e834f38e29a356a91d8a7', '[\"*\"]', NULL, '2023-01-27 13:12:35', '2023-01-27 13:12:35'),
(36, 'App\\Models\\User', 1, 'ApiToken', '56878db2c47bd2332d1c6040b77794eb5bfbd940117103872d762eaa49cda228', '[\"*\"]', NULL, '2023-01-27 13:12:39', '2023-01-27 13:12:39'),
(37, 'App\\Models\\User', 1, 'ApiToken', '3d2c75b7905b41cca4138b12caddbc2a964111da9f01b73fe2d225bf0281ebee', '[\"*\"]', NULL, '2023-01-27 13:13:13', '2023-01-27 13:13:13'),
(38, 'App\\Models\\User', 1, 'ApiToken', '03a5b5a1646f3eba843e4bf29e61a9f2c511b03319569d3d81f02bcb11dcd60d', '[\"*\"]', NULL, '2023-01-27 13:17:42', '2023-01-27 13:17:42'),
(39, 'App\\Models\\User', 1, 'ApiToken', '9454efc3227654d8d079489bec2a24ff48c329e8748617efad05f56847daeac2', '[\"*\"]', NULL, '2023-01-27 13:18:12', '2023-01-27 13:18:12'),
(40, 'App\\Models\\User', 1, 'ApiToken', '6bbf2667c842b68f358034e653043fcb5cd501435abc37b7118f94408cc1fff4', '[\"*\"]', NULL, '2023-01-27 13:19:51', '2023-01-27 13:19:51'),
(41, 'App\\Models\\User', 1, 'ApiToken', 'daa4c7a5079c0af2e5553957dc0a19d17fedf742194935ddaaa4025e9a9ab8cd', '[\"*\"]', NULL, '2023-01-27 13:22:25', '2023-01-27 13:22:25'),
(42, 'App\\Models\\User', 1, 'ApiToken', 'cf351eae8b1b1688fb2834627f9e63613b84a7f3ca398bf14e6a98568b07b427', '[\"*\"]', NULL, '2023-01-27 21:33:43', '2023-01-27 21:33:43'),
(43, 'App\\Models\\User', 1, 'ApiToken', '58ecffdc7013a5d16163e0d2e4db44e3d1bd97d3b952f599a7b69d89d83aa277', '[\"*\"]', NULL, '2023-01-27 23:14:14', '2023-01-27 23:14:14'),
(44, 'App\\Models\\User', 1, 'ApiToken', 'd7bc41ae7872b9c23fff910de7572dba8fa9e54db6407910bbd2eb8747d302e2', '[\"*\"]', NULL, '2023-01-27 23:32:42', '2023-01-27 23:32:42'),
(45, 'App\\Models\\User', 1, 'ApiToken', 'ca2885b10ac5af10bb725e460360bb5bcbcaa161a2b33a6a14408a73c3c97860', '[\"*\"]', NULL, '2023-01-28 10:42:01', '2023-01-28 10:42:01'),
(46, 'App\\Models\\User', 1, 'ApiToken', '923c73028217a56e46d443a4e0cd89e94600c324a2e12b7f557c8a0f013d2a0f', '[\"*\"]', NULL, '2023-01-28 11:04:42', '2023-01-28 11:04:42'),
(47, 'App\\Models\\User', 1, 'ApiToken', '66352d9bfb8cdfa085edb8ed137d3b635620fac4d4fe91831623b4d67d90521b', '[\"*\"]', NULL, '2023-01-28 13:30:40', '2023-01-28 13:30:40'),
(48, 'App\\Models\\User', 1, 'ApiToken', 'e215c3c67a9beccd0b1ab0fe6ea25a5eb8675d0590f46669193fe41885c4e664', '[\"*\"]', NULL, '2023-01-28 13:39:25', '2023-01-28 13:39:25'),
(49, 'App\\Models\\User', 1, 'ApiToken', '578e8c0b2fb4014271a2f2353fb693433eede3952051ddf7f05324cba73085f9', '[\"*\"]', '2023-04-12 06:38:05', '2023-04-11 22:07:15', '2023-04-12 06:38:05'),
(50, 'App\\Models\\User', 1, 'ApiToken', '608a0c3804a44df517a055e13570e6c43bda2d58bf658af54e9e338f6c9a8016', '[\"*\"]', NULL, '2023-04-11 22:12:56', '2023-04-11 22:12:56'),
(51, 'App\\Models\\User', 1, 'ApiToken', 'b90c4ab61a6fc9a033e2a89342882ea3eefcf52828c08a5f8bbadc7773c284e8', '[\"*\"]', NULL, '2023-04-11 22:16:51', '2023-04-11 22:16:51'),
(52, 'App\\Models\\User', 1, 'ApiToken', '53fc50e59d5c98aa05412690b5b5b9a7e523979d23140048be6168c0b3d75d88', '[\"*\"]', NULL, '2023-04-11 22:25:55', '2023-04-11 22:25:55'),
(53, 'App\\Models\\User', 1, 'ApiToken', 'f0dd7081b3e7fb378d9faeb0ae5275964a46548dca0aa1e9af5b81d2a6ca8134', '[\"*\"]', NULL, '2023-04-12 03:30:32', '2023-04-12 03:30:32'),
(54, 'App\\Models\\User', 1, 'ApiToken', '661ce0d0616493d1c24fda1393701df8520f6df419b96b36d9a54d371a144077', '[\"*\"]', NULL, '2023-04-12 03:33:35', '2023-04-12 03:33:35'),
(55, 'App\\Models\\User', 1, 'ApiToken', 'd93e5a81319ddd0db6ca7cc3aa9303c93e216d63dc9bfefe73464cc00fd3ae25', '[\"*\"]', NULL, '2023-04-12 03:39:18', '2023-04-12 03:39:18'),
(56, 'App\\Models\\User', 1, 'ApiToken', 'd08a4b4b1ba75e71c4883ed3067c57443f9657a5d59e5aa7276155791b53b6dd', '[\"*\"]', NULL, '2023-04-12 06:01:34', '2023-04-12 06:01:34'),
(57, 'App\\Models\\User', 1, 'ApiToken', '67851f85938f6520d679dea560cbd7ea7aa208e488e8d1fa86b847973a389067', '[\"*\"]', NULL, '2023-04-12 06:03:20', '2023-04-12 06:03:20'),
(58, 'App\\Models\\User', 1, 'ApiToken', '060adbbae3df6599f547067d3d4e7d92244443aa855b6f5bfb36d9b95b8db3b8', '[\"*\"]', NULL, '2023-04-12 06:08:06', '2023-04-12 06:08:06'),
(59, 'App\\Models\\User', 1, 'ApiToken', '3f61206b2b62393147d990d4af81088d49e771cd119ee135739cf34071b7c4f1', '[\"*\"]', NULL, '2023-04-12 06:15:16', '2023-04-12 06:15:16'),
(60, 'App\\Models\\User', 1, 'ApiToken', 'a6fd04a8a3a0876bd21c09ad1418ac60c84c5b325941b361d8e13743ab01b20e', '[\"*\"]', NULL, '2023-04-12 06:16:19', '2023-04-12 06:16:19'),
(61, 'App\\Models\\User', 1, 'ApiToken', '36970aedccbaf9326260f4bea6a64cb5c75d8901f40765bdd263c8d2c7ef3671', '[\"*\"]', NULL, '2023-04-12 06:18:43', '2023-04-12 06:18:43'),
(62, 'App\\Models\\User', 1, 'ApiToken', 'aaf906dd7a6bd8b3667a456081119c335888353f7e01daec3181677886a1f07c', '[\"*\"]', NULL, '2023-04-12 06:21:04', '2023-04-12 06:21:04'),
(63, 'App\\Models\\User', 1, 'ApiToken', '943f90b70b486ca8185f095a304caf9588163c0da5ec27fc3f24ed2411280ba0', '[\"*\"]', NULL, '2023-04-12 06:39:00', '2023-04-12 06:39:00'),
(64, 'App\\Models\\User', 1, 'ApiToken', '4acfb51e3269c42907135238665a470bc95ba58a33a1e14d65eb9597c753a966', '[\"*\"]', NULL, '2023-04-12 06:52:29', '2023-04-12 06:52:29'),
(65, 'App\\Models\\User', 1, 'ApiToken', 'f8721489ca2c4c990d396cec30a7d7c1ab7fb9d62162a3f7c973003e0aeb6fab', '[\"*\"]', NULL, '2023-04-12 06:57:49', '2023-04-12 06:57:49'),
(66, 'App\\Models\\User', 1, 'ApiToken', 'b0be05a0a870a03fbd705ab32476dbef6530c56e3bdc2d978fb29ed55b68abc4', '[\"*\"]', '2023-04-12 07:14:37', '2023-04-12 07:11:15', '2023-04-12 07:14:37'),
(67, 'App\\Models\\User', 1, 'ApiToken', '6ddd0ac72261d6fac9eb15f9c483f5ac48281222672e978441712878b943326f', '[\"*\"]', '2023-04-12 07:15:14', '2023-04-12 07:14:53', '2023-04-12 07:15:14'),
(68, 'App\\Models\\User', 1, 'ApiToken', 'dc2d0ec8a70d4468fa116a8d50ac7811538a6cc7e7be5c08736b2c7211ce8ca3', '[\"*\"]', '2023-04-12 07:45:16', '2023-04-12 07:36:35', '2023-04-12 07:45:16'),
(69, 'App\\Models\\User', 1, 'ApiToken', '73bba247108a3dd4ee71c3c2217f3037ace77dd101cbfb49f7492b6653d45c4c', '[\"*\"]', '2023-04-12 07:57:44', '2023-04-12 07:45:28', '2023-04-12 07:57:44'),
(70, 'App\\Models\\User', 1, 'ApiToken', 'ef1d4cc93cf72c49bc5b947071f858fbc650e2318fa9bc6f58b309e5374a8943', '[\"*\"]', '2023-04-12 09:01:37', '2023-04-12 07:57:57', '2023-04-12 09:01:37'),
(71, 'App\\Models\\User', 1, 'ApiToken', 'a0d4da1474c797e156a10ae5edd689e9b9e7aa4bd9ac79ab915d37944e120250', '[\"*\"]', '2023-04-12 09:03:35', '2023-04-12 09:01:49', '2023-04-12 09:03:35'),
(72, 'App\\Models\\User', 1, 'ApiToken', 'f146aacef36aac77d80312b770e3e9405bdbc6628a12f73be55cc73b05d17870', '[\"*\"]', '2023-04-12 09:21:08', '2023-04-12 09:05:17', '2023-04-12 09:21:08'),
(73, 'App\\Models\\User', 1, 'ApiToken', 'a2448c2e3a6dde0944e00a3e7bb9eee594137919f55c10d6088db4e051ba5d3f', '[\"*\"]', '2023-04-12 09:59:53', '2023-04-12 09:21:25', '2023-04-12 09:59:53'),
(74, 'App\\Models\\User', 1, 'ApiToken', '17c136914f119a4e3d0dcb4c4e8371261250f6eed5c2c9af9251ea299073936b', '[\"*\"]', '2023-04-12 10:01:37', '2023-04-12 10:00:21', '2023-04-12 10:01:37'),
(75, 'App\\Models\\User', 1, 'ApiToken', 'e2688e8076e22d003ca2e2993097473f670ece7713d8d4b4785fc7e2a8e357d0', '[\"*\"]', '2023-04-12 10:04:00', '2023-04-12 10:03:59', '2023-04-12 10:04:00'),
(76, 'App\\Models\\User', 1, 'ApiToken', 'a520afcc45903b63366594854b88147788620dd09dd21d43b6a1325445a985e0', '[\"*\"]', '2023-04-14 00:00:39', '2023-04-12 10:04:19', '2023-04-14 00:00:39'),
(77, 'App\\Models\\User', 1, 'ApiToken', '24a8b811956eaa88cf972a409c3151268dfbad6cac053eda921fc972ad6365cc', '[\"*\"]', '2023-04-21 22:45:14', '2023-04-14 14:39:21', '2023-04-21 22:45:14'),
(78, 'App\\Models\\User', 1, 'ApiToken', '8e1aecf57b4b3a4b234d11495f18e8d48481d068354c01ac598ca6954d7acd3a', '[\"*\"]', '2023-04-20 03:31:40', '2023-04-17 01:44:56', '2023-04-20 03:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `rekening_anggaran`
--

CREATE TABLE `rekening_anggaran` (
  `id_rekening` int NOT NULL,
  `nomor_rekening` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_rekening` varchar(225) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `anggaran` decimal(12,2) NOT NULL DEFAULT '0.00',
  `parent_id` int NOT NULL,
  `level` int NOT NULL DEFAULT '1',
  `view_level` int NOT NULL DEFAULT '0',
  `tipe` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'D',
  `rlocation` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tahun_anggaran` int NOT NULL DEFAULT '2022',
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_create` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_update` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbarang`
--

CREATE TABLE `tblbarang` (
  `id` bigint UNSIGNED NOT NULL,
  `kdBarang` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmBarang` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hrgPokok` double NOT NULL,
  `hrgJual` double NOT NULL,
  `ktgBarang` char(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `satuanBarang` char(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `merek` char(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `stkBarang` char(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `stkSatuan` char(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `qtyMin` char(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `qtyMax` char(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `stsBarang` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `deskripsi` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_hpp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_persediaan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_biaya` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblbarang`
--

INSERT INTO `tblbarang` (`id`, `kdBarang`, `nmBarang`, `hrgPokok`, `hrgJual`, `ktgBarang`, `satuanBarang`, `merek`, `stkBarang`, `stkSatuan`, `qtyMin`, `qtyMax`, `stsBarang`, `deskripsi`, `accid`, `accid_hpp`, `accid_persediaan`, `accid_biaya`, `created_at`, `updated_at`) VALUES
(2, 'BRG0004', 'TURBO', 17000, 23000, 'KT-2021-5', 'TABUNG', 'BRIGHT', '-1', NULL, '5', '200', '1', 'gas', '41400', '51400', '11604', '52400', NULL, NULL),
(3, 'BRG0005', 'BRIGHT GAS 12KG', 212000, 220000, 'KT-2021-3', 'TABUNG', 'BRIGHT', '-1', NULL, '5', '200', '1', 'Tabung gas elipgi', '41400', '51400', '11604', '52400', '2023-01-23 00:04:44', '2023-01-23 00:04:44'),
(4, 'BRG0006', 'BRIGHT GAS 5,5KG', 110000, 130000, 'KT-2021-3', 'TABUNG', 'BRIGHT', '-1', NULL, '2', '10', '0', 'des', '41400', '51400', '11604', '52400', '2023-02-03 13:26:02', '2023-02-03 13:26:02'),
(5, 'BRG0007', 'ELPIGI GAS 3KG', 16000, 18000, 'KT-2021-3', 'TABUNG', 'ELPIGI', '-1', NULL, '5', '100', '0', 'des', '41400', '51400', '11604', '52400', '2023-02-04 02:58:44', '2023-02-04 02:58:44'),
(6, 'BRG0008', 'OLI MESRAN 1.5L', 80000, 110000, 'KT-2021-2', 'BOTOL', 'MESRAN', '0', NULL, '5', '100', '0', 'des', '41500', '51500', '11605', '52500', '2023-02-04 02:59:07', '2023-02-04 02:59:07');

--
-- Triggers `tblbarang`
--
DELIMITER $$
CREATE TRIGGER `after_insert` AFTER INSERT ON `tblbarang` FOR EACH ROW BEGIN  

INSERT INTO tblpersediaan (kdPersediaan, nmPersediaan, stokPersediaan, satuanPersediaan, ktgPersediaan, lastPrice, salePrice)
VALUES (NEW.kdBarang, NEW.nmBarang, NEW.stkBarang, NEW.satuanBarang, NEW.ktgBarang, NEW.hrgPokok, NEW.hrgJual);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tblbbm`
--

CREATE TABLE `tblbbm` (
  `id` bigint UNSIGNED NOT NULL,
  `code_bbm` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_bbm` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `last_meter` int NOT NULL,
  `last_price` decimal(13,2) NOT NULL,
  `sale_price` decimal(13,2) NOT NULL,
  `stokBbm_old` decimal(13,2) NOT NULL,
  `logo_bbm` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_hpp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_persediaan` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_biaya` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblbbm`
--

INSERT INTO `tblbbm` (`id`, `code_bbm`, `nama_bbm`, `last_meter`, `last_price`, `sale_price`, `stokBbm_old`, `logo_bbm`, `accid`, `accid_hpp`, `accid_persediaan`, `accid_biaya`, `created_at`, `updated_at`) VALUES
(1, 'BRG0001', 'PERTAMAX', 0, '12500.00', '14200.00', '-2880.00', 'pertamax.png', '41100', '51100', '11601', '52100', '2023-01-12 12:56:36', '2023-04-16 00:20:30'),
(2, 'BRG0002', 'PERLITE', 0, '9700.00', '11000.00', '-5599.00', 'pertalite.png', '41200', '51200', '11602', '52200', '2023-01-12 12:56:36', '2023-04-16 00:12:29'),
(3, 'BRG0003', 'DEX LITE', 0, '14000.00', '17800.00', '-2395.00', 'dexlite.png', '41300', '51300', '11603', '52300', '2023-01-14 08:29:46', '2023-03-21 06:02:27');

--
-- Triggers `tblbbm`
--
DELIMITER $$
CREATE TRIGGER `tblbbm_after insert` AFTER INSERT ON `tblbbm` FOR EACH ROW BEGIN  

INSERT INTO tblpersediaan (kdPersediaan, nmPersediaan, stokPersediaan, satuanPersediaan, ktgPersediaan, lastPrice, salePrice)
VALUES (NEW.code_bbm, NEW.nama_bbm, 0, 'Liter', 'KT-2021-1', NEW.last_price, NEW.last_price);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tblbbm_detail`
--

CREATE TABLE `tblbbm_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbiaya`
--

CREATE TABLE `tblbiaya` (
  `id_biaya` bigint NOT NULL,
  `kd_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tglBiaya` datetime NOT NULL,
  `keterangan_biaya` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jumlah` decimal(13,2) NOT NULL,
  `accid` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `r_regu` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblbiaya`
--

INSERT INTO `tblbiaya` (`id_biaya`, `kd_trans`, `tglBiaya`, `keterangan_biaya`, `jumlah`, `accid`, `created_at`, `updated_at`, `r_regu`) VALUES
(2, 'BY23041', '2023-04-20 00:00:00', 'ADMIN BANK', '85000.00', '61105', '2023-04-20 00:00:00', '2023-04-20 10:49:08', 'Z'),
(3, 'BY23042', '2023-04-20 00:00:00', 'GAJI', '500000.00', '61109', '2023-04-20 00:00:00', '2023-04-20 10:50:26', 'Z');

-- --------------------------------------------------------

--
-- Table structure for table `tblheader_aplusan`
--

CREATE TABLE `tblheader_aplusan` (
  `id_aplusan` bigint NOT NULL,
  `kd_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_trans` datetime NOT NULL,
  `r_regu` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `total_jual` decimal(13,2) NOT NULL,
  `total_kupon` decimal(13,2) NOT NULL,
  `total_biaya` decimal(13,2) NOT NULL,
  `total_link` decimal(13,2) NOT NULL,
  `total_cash` decimal(13,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblinventaris`
--

CREATE TABLE `tblinventaris` (
  `id_inventaris` int NOT NULL,
  `kode_inventaris` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_pengadaan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama_inventaris` varchar(225) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `group_inventaris` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_akum` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tahun_pembuatan` date NOT NULL,
  `tahun_perakitan` date NOT NULL,
  `merek` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `warna` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `umur_ekonomis` int NOT NULL COMMENT 'tahun',
  `nilai_inventaris` decimal(13,2) DEFAULT NULL,
  `qty_inventaris` decimal(13,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblinventaris`
--

INSERT INTO `tblinventaris` (`id_inventaris`, `kode_inventaris`, `kode_pengadaan`, `nama_inventaris`, `group_inventaris`, `accid_akum`, `tahun_pembuatan`, `tahun_perakitan`, `merek`, `warna`, `umur_ekonomis`, `nilai_inventaris`, `qty_inventaris`, `created_at`, `updated_at`) VALUES
(3, 'INV0320231', 'PGA0420231', 'Motor Vario', '12400', '12503', '2008-01-02', '2008-01-01', 'Honda', 'Hitam', 5, '3000000.00', '1.00', '2023-03-28 06:19:52', '2023-03-28 06:19:52'),
(4, 'INV03202332', 'PGA0420231', 'Mobil', '12400', '12503', '2020-01-02', '2020-01-01', 'TOYODA', 'PTUH', 10, '60000000.00', '5.00', '2023-03-28 06:21:28', '2023-03-28 06:21:28'),
(5, 'INV032023333', 'PGA0420231', 'pompa', '12300', '12501', '2012-01-01', '2012-01-01', 'sp', 'hitam', 10, '2000000.00', '1.00', '2023-03-29 06:09:45', '2023-03-29 06:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblinventaris_pengadaan`
--

CREATE TABLE `tblinventaris_pengadaan` (
  `id_pengadaan` int NOT NULL,
  `pengadaan_sysno` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pengadaan_docno` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_spk` date NOT NULL,
  `memo` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `void_flag` tinyint(1) NOT NULL DEFAULT '0',
  `total` decimal(13,2) NOT NULL,
  `supplier_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblinventaris_pengadaan_detail`
--

CREATE TABLE `tblinventaris_pengadaan_detail` (
  `id_pengadaan_detail` int NOT NULL,
  `rsysno_pengadaan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rkode_inventaris` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rkode_pengadaan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_pengadaan_detail` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `qty` decimal(11,2) NOT NULL DEFAULT '0.00',
  `harga_perolehan` decimal(11,2) NOT NULL DEFAULT '0.00',
  `subtotal` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblinventaris_penyusutan`
--

CREATE TABLE `tblinventaris_penyusutan` (
  `id_penyusutan` int NOT NULL,
  `penyusutan_sysno` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `penyusutan_docno` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_penyusutan` datetime NOT NULL,
  `memo_penyusutan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblinventaris_penyusutan_detail`
--

CREATE TABLE `tblinventaris_penyusutan_detail` (
  `id_penyusutan_detail` int NOT NULL,
  `rsysno_penyusutan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rkode_inventaris` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_penyusutan` datetime NOT NULL,
  `jumlah_penyusutan` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblkartu_stok`
--

CREATE TABLE `tblkartu_stok` (
  `id` bigint NOT NULL,
  `r_notrans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kd_barang` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl` datetime NOT NULL,
  `stok_awal` decimal(10,2) NOT NULL,
  `unit_beli` decimal(10,2) NOT NULL,
  `total_beli` decimal(10,2) NOT NULL,
  `unit_jual` decimal(10,2) NOT NULL,
  `total_jual` decimal(10,2) NOT NULL,
  `stok_akhir` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblkartu_stok`
--

INSERT INTO `tblkartu_stok` (`id`, `r_notrans`, `kd_barang`, `tgl`, `stok_awal`, `unit_beli`, `total_beli`, `unit_jual`, `total_jual`, `stok_akhir`, `created_at`, `updated_at`) VALUES
(30, 'INV2023001', 'BRG0005', '2023-04-20 00:00:00', '0.00', '0.00', '0.00', '1.00', '220000.00', '-1.00', '2023-04-20 11:02:48', '2023-04-20 11:02:48'),
(31, 'INV2023001', 'BRG0007', '2023-04-20 00:00:00', '0.00', '0.00', '0.00', '1.00', '18000.00', '-1.00', '2023-04-20 11:02:48', '2023-04-20 11:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblkategori`
--

CREATE TABLE `tblkategori` (
  `id` bigint UNSIGNED NOT NULL,
  `kodeKtg` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `namaKtg` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblkategori`
--

INSERT INTO `tblkategori` (`id`, `kodeKtg`, `namaKtg`, `created_at`, `updated_at`) VALUES
(1, 'KT-2021-1', 'BBM', '2021-03-19 22:40:29', '2022-02-19 06:11:10'),
(2, 'KT-2021-2', 'OLI', '2021-03-19 22:40:36', '2021-03-19 22:40:36'),
(3, 'KT-2021-3', 'GAS', '2023-01-20 12:13:36', '2023-01-20 12:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblkupon`
--

CREATE TABLE `tblkupon` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_regu` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_trans` datetime NOT NULL,
  `r_kdPelanggan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbllinkaja`
--

CREATE TABLE `tbllinkaja` (
  `id` int NOT NULL,
  `r_bbm` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nm_bbm` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_link` datetime NOT NULL,
  `jumlah_link` decimal(13,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kd_trans` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_regu` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbllinkaja`
--

INSERT INTO `tbllinkaja` (`id`, `r_bbm`, `nm_bbm`, `tgl_link`, `jumlah_link`, `created_at`, `updated_at`, `kd_trans`, `r_regu`) VALUES
(2, 'tes', 'PERTAMAX', '2023-04-15 00:00:00', '10000.00', '2023-04-15 10:27:55', '2023-04-15 10:27:55', '20230415C1', 'C'),
(5, 'tes', 'PERLITE', '2023-04-20 00:00:00', '40000.00', '2023-04-20 21:53:30', '2023-04-20 21:53:30', '20230417A1', 'A'),
(6, 'tes', 'PERTAMAX', '2023-04-20 00:00:00', '30000.00', '2023-04-20 21:53:30', '2023-04-20 21:53:30', '20230417A1', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tblnosel_detail`
--

CREATE TABLE `tblnosel_detail` (
  `id_nosel` bigint UNSIGNED NOT NULL,
  `r_bbm` int NOT NULL,
  `r_code_bbm` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_nosel` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meter_awal` int NOT NULL,
  `meter_akhir` int NOT NULL,
  `tera` decimal(10,0) NOT NULL DEFAULT '0',
  `harga` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblnosel_detail`
--

INSERT INTO `tblnosel_detail` (`id_nosel`, `r_bbm`, `r_code_bbm`, `nama_nosel`, `meter_awal`, `meter_akhir`, `tera`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1, 'BRG0001', 'PX 1', 12876547, 12876547, '0', '14200.00', '2023-01-14 09:54:41', '2023-04-21 00:16:04'),
(2, 1, 'BRG0001', 'PX 2', 9310, 9510, '0', '14200.00', '2023-01-14 09:56:59', '2023-04-21 00:16:04'),
(3, 2, 'BRG0002', 'PL 1', 6200, 6300, '0', '11000.00', '2023-01-14 09:58:16', '2023-04-21 00:16:04'),
(4, 2, 'BRG0002', 'PL 2', 3400, 3500, '0', '11000.00', '2023-01-14 09:56:59', '2023-04-21 00:16:04'),
(5, 1, 'BRG0001', 'PX 3', 4000, 4100, '0', '14200.00', '2023-01-14 09:56:59', '2023-04-21 00:16:04'),
(6, 2, 'BRG0002', 'PL 3', 1000, 1100, '0', '11000.00', '2023-01-14 09:56:59', '2023-04-21 00:16:04'),
(7, 3, 'BRG0003', 'DX 1', 3200, 3700, '0', '17800.00', '2023-01-14 09:58:16', '2023-04-21 00:16:04'),
(8, 3, 'BRG0003', 'DX 2', 2178, 2378, '0', '17800.00', '2023-01-14 09:58:16', '2023-04-21 00:16:04'),
(9, 2, 'BRG0002', 'PL 4', 4200, 4500, '0', '11000.00', '2023-01-14 09:58:16', '2023-04-21 00:16:04'),
(10, 2, 'BRG0002', 'PL 5', 500, 500, '0', '11000.00', '2023-01-14 09:56:59', '2023-04-21 00:16:04'),
(11, 1, 'BRG0001', 'PX 4', 750, 1050, '0', '14200.00', '2023-01-14 09:58:16', '2023-04-21 00:16:04'),
(12, 1, 'BRG0001', 'PX 5', 208, 308, '0', '14200.00', '2023-01-14 09:58:16', '2023-04-21 00:16:04'),
(13, 2, 'BRG0002', 'PL 6', 202, 202, '0', '11000.00', '2023-02-02 13:04:04', '2023-04-21 00:16:04'),
(14, 2, 'BRG0002', 'PL 7', 302, 302, '0', '11000.00', '2023-02-02 13:05:33', '2023-04-21 00:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblopnum`
--

CREATE TABLE `tblopnum` (
  `id` bigint UNSIGNED NOT NULL,
  `kdOpnum` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tglOpnum` datetime NOT NULL,
  `totalOpnum` decimal(13,2) NOT NULL,
  `userOpnum` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblopnum_detail`
--

CREATE TABLE `tblopnum_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `r_opnum` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_kdPersediaan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmPersediaan` varchar(225) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `selisihOpnum` decimal(13,2) NOT NULL,
  `nilaiOpnum` decimal(13,2) NOT NULL,
  `keteranganOpnum` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpegawai`
--

CREATE TABLE `tblpegawai` (
  `id` bigint UNSIGNED NOT NULL,
  `kdPegawai` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmPegawai` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `almtPegawai` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `noTlp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `reguPegawai` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpegawai`
--

INSERT INTO `tblpegawai` (`id`, `kdPegawai`, `nmPegawai`, `almtPegawai`, `noTlp`, `reguPegawai`, `created_at`, `updated_at`) VALUES
(1, 'p001', 'rian', 'badung', '09876', 'A', '2023-01-16 23:52:04', '2023-01-16 23:52:04'),
(2, 'p002', 'katak', 'badung', '09876', 'A', '2023-01-16 23:52:04', '2023-01-16 23:52:04'),
(3, 'p003', 'sampi', 'badung', '09876', 'B', '2023-01-16 23:52:04', '2023-01-16 23:52:04'),
(4, 'p004', 'wawan', 'badung', '09876', 'B', '2023-01-16 23:52:04', '2023-01-16 23:52:04'),
(5, 'p004', 'bagus', 'badung', '09876', 'C', '2023-01-16 23:52:04', '2023-01-16 23:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblpelanggan`
--

CREATE TABLE `tblpelanggan` (
  `id` bigint UNSIGNED NOT NULL,
  `kdPelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmPelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `almtPelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `noHpPelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rolePelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `emailPelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `path` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `deposit` decimal(13,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpelanggan`
--

INSERT INTO `tblpelanggan` (`id`, `kdPelanggan`, `nmPelanggan`, `almtPelanggan`, `noHpPelanggan`, `rolePelanggan`, `emailPelanggan`, `path`, `deposit`, `created_at`, `updated_at`) VALUES
(30, 'PL02022030', 'SURFING', '-', '-', '-', '-', 'user-avtar.svg', '-2160000.00', '2022-08-04 21:42:35', '2022-08-04 21:42:35'),
(31, 'PL02022031', 'MIROR', '-', '-', '-', '-', 'user-avtar.svg', '0.00', '2022-08-04 21:42:50', '2022-08-04 21:42:50'),
(32, 'PL02022032', 'SMA 1 KUTA', '-', '-', '-', '-', 'user-avtar.svg', '0.00', '2022-08-18 04:12:11', '2022-08-18 04:12:11'),
(33, 'PL02022033', 'KUNJA', '-', '-', '-', '-', 'user-avtar.svg', '0.00', '2022-08-18 04:12:32', '2022-08-18 04:12:32'),
(34, 'PL02022034', 'CAFE DELMAR', '-', '-', '-', '-', '-', '0.00', '2023-01-29 13:05:53', '2023-01-29 13:05:53'),
(35, 'PL02022035', 'PETS CONTROL', '-', '-', '-', '-', '-', '0.00', '2023-01-29 13:06:57', '2023-01-29 13:06:57'),
(36, 'PL02022036', 'KAYU RAJA', '-', '-', '-', '-', '-', '-180000.00', '2023-01-29 13:09:28', '2023-01-29 13:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblpembelian`
--

CREATE TABLE `tblpembelian` (
  `idPembelian` bigint UNSIGNED NOT NULL,
  `noNota` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tglPembelian` datetime NOT NULL,
  `r_supplier` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subTotal` decimal(13,2) NOT NULL,
  `disc` decimal(13,2) NOT NULL,
  `discPercent` decimal(13,2) NOT NULL,
  `tax` decimal(13,2) NOT NULL,
  `pph` decimal(13,2) NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `note` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `term` int NOT NULL,
  `jthTempo` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpembelian_detail`
--

CREATE TABLE `tblpembelian_detail` (
  `idPembelianDetail` bigint UNSIGNED NOT NULL,
  `r_noNota` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kdBarang` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmBarang` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hrgBeli` decimal(13,2) NOT NULL,
  `qty` decimal(13,2) NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpenjualan`
--

CREATE TABLE `tblpenjualan` (
  `idPenjualan` bigint NOT NULL,
  `noPenjualan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tglPenjualan` datetime NOT NULL,
  `r_pelanggan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subTotalPenjualan` decimal(13,2) NOT NULL,
  `discPenjualan` decimal(13,2) NOT NULL,
  `discPercentP` int NOT NULL,
  `taxPenjualan` decimal(10,2) NOT NULL,
  `totalPenjualan` decimal(13,2) NOT NULL,
  `notePenjualan` varchar(225) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `termPenjualan` int DEFAULT NULL,
  `jthTempo` datetime DEFAULT NULL,
  `typeBayar` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `piutangPenjualan` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpenjualan`
--

INSERT INTO `tblpenjualan` (`idPenjualan`, `noPenjualan`, `tglPenjualan`, `r_pelanggan`, `subTotalPenjualan`, `discPenjualan`, `discPercentP`, `taxPenjualan`, `totalPenjualan`, `notePenjualan`, `termPenjualan`, `jthTempo`, `typeBayar`, `piutangPenjualan`, `created_at`, `updated_at`) VALUES
(10, 'INV2023001', '2023-04-20 00:00:00', 'PL02022030', '238000.00', '0.00', 0, '26180.00', '238000.00', NULL, 0, '2023-04-20 00:00:00', '0', '0.00', '2023-04-20 03:02:48', '2023-04-20 03:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblpenjualankupon`
--

CREATE TABLE `tblpenjualankupon` (
  `idPenjualanKupon` bigint NOT NULL,
  `noPenjualanKupon` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tglPenjualanKupon` datetime NOT NULL,
  `r_pelanggan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `totalPenjualanKupon` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpenjualankupon`
--

INSERT INTO `tblpenjualankupon` (`idPenjualanKupon`, `noPenjualanKupon`, `tglPenjualanKupon`, `r_pelanggan`, `totalPenjualanKupon`, `created_at`, `updated_at`) VALUES
(1, 'KP0420231', '2023-04-15 00:00:00', 'PL02022036', '800000.00', '2023-04-14 16:00:00', '2023-04-15 02:24:03'),
(2, 'KP0420231', '2023-04-15 00:00:00', 'PL02022030', '700000.00', '2023-04-14 16:00:00', '2023-04-15 02:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblpenjualan_detail`
--

CREATE TABLE `tblpenjualan_detail` (
  `idDetailPenjualan` int NOT NULL,
  `r_noPenjualan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_trans` datetime NOT NULL,
  `r_kdBarang` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_nmBarang` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kategori_jual` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hrgJual` decimal(13,2) NOT NULL,
  `qty` int NOT NULL,
  `satuanJual` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `totalHpp` decimal(13,2) NOT NULL,
  `totalJual` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpenjualan_detail`
--

INSERT INTO `tblpenjualan_detail` (`idDetailPenjualan`, `r_noPenjualan`, `tgl_trans`, `r_kdBarang`, `r_nmBarang`, `kategori_jual`, `hrgJual`, `qty`, `satuanJual`, `totalHpp`, `totalJual`, `created_at`, `updated_at`) VALUES
(17, 'INV2023001', '2023-04-20 00:00:00', 'BRG0005', 'BRIGHT GAS 12KG', 'KT-2021-3', '220000.00', 1, 'TABUNG', '212000.00', '220000.00', '2023-04-20 03:02:48', '2023-04-20 03:02:48'),
(18, 'INV2023001', '2023-04-20 00:00:00', 'BRG0007', 'ELPIGI GAS 3KG', 'KT-2021-3', '18000.00', 1, 'TABUNG', '16000.00', '18000.00', '2023-04-20 03:02:48', '2023-04-20 03:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblpersediaan`
--

CREATE TABLE `tblpersediaan` (
  `idPersediaan` bigint UNSIGNED NOT NULL,
  `kdPersediaan` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmPersediaan` varchar(225) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `stokPersediaan` int NOT NULL,
  `satuanPersediaan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ktgPersediaan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lastPrice` decimal(10,2) DEFAULT NULL,
  `salePrice` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpersediaan`
--

INSERT INTO `tblpersediaan` (`idPersediaan`, `kdPersediaan`, `nmPersediaan`, `stokPersediaan`, `satuanPersediaan`, `ktgPersediaan`, `lastPrice`, `salePrice`, `created_at`, `updated_at`) VALUES
(1, 'BRG0001', 'PERTAMAX', 2600, 'Liter', 'KT-2021-1', '12500.00', '14200.00', '2023-01-19 22:24:13', '2023-01-19 22:24:13'),
(2, 'BRG0002', 'PERTALITE', 2379, 'Liter', 'KT-2021-1', '9700.00', '11000.00', '2023-01-19 22:25:23', '2023-01-19 22:25:23'),
(3, 'BRG0003', 'DEX LITE', 2622, 'Liter', 'KT-2021-1', '14000.00', '17800.00', '2023-01-19 22:26:32', '2023-01-19 22:26:32'),
(4, 'BRG0004', 'TURBO', 0, 'TABUNG', 'KT-2021-5', '0.00', '0.00', '2023-01-20 12:14:45', '2023-01-20 12:14:45'),
(6, 'BRG0005', 'BRIGHT GAS 12KG', -1, 'TABUNG', 'KT-2021-3', '212000.00', '220000.00', NULL, NULL),
(7, 'BRG0006', 'BRIGHT GAS 5,5KG', 0, 'TABUNG', 'KT-2021-3', '110000.00', '130000.00', NULL, NULL),
(8, 'BRG0007', 'ELPIGI GAS 3KG', -1, 'TABUNG', 'KT-2021-3', '16000.00', '18000.00', NULL, NULL),
(9, 'BRG0008', 'OLI MESRAN 1.5L', 0, 'BOTOL', 'KT-2021-2', '0.00', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblperubahan_hargabbm`
--

CREATE TABLE `tblperubahan_hargabbm` (
  `id_perubahan` bigint NOT NULL,
  `code_bbm` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `harga_pokok_lama` decimal(10,2) NOT NULL,
  `harga_pokok_baru` decimal(10,2) NOT NULL,
  `harga_lama` decimal(13,2) NOT NULL,
  `harga_baru` decimal(13,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblperubahan_hargabbm`
--

INSERT INTO `tblperubahan_hargabbm` (`id_perubahan`, `code_bbm`, `harga_pokok_lama`, `harga_pokok_baru`, `harga_lama`, `harga_baru`, `created_at`, `updated_at`) VALUES
(7, 'BRG0001', '12000.00', '11800.00', '14400.00', '14300.00', '2023-04-16 08:16:48', '2023-04-16 08:16:48'),
(9, 'BRG0001', '11600.00', '11600.00', '14200.00', '14200.00', '2023-04-16 08:20:30', '2023-04-16 08:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblpobbm`
--

CREATE TABLE `tblpobbm` (
  `idPo` bigint UNSIGNED NOT NULL,
  `no_po` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_so` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_po` datetime NOT NULL,
  `r_supplier` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subTotal` decimal(13,2) NOT NULL,
  `disc` decimal(13,2) NOT NULL,
  `discPercent` decimal(13,2) NOT NULL,
  `tax` decimal(13,2) NOT NULL,
  `pph` decimal(13,2) NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `note` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `term` int NOT NULL,
  `jthTempo` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpobbm`
--

INSERT INTO `tblpobbm` (`idPo`, `no_po`, `no_so`, `tgl_po`, `r_supplier`, `subTotal`, `disc`, `discPercent`, `tax`, `pph`, `total`, `note`, `term`, `jthTempo`, `created_at`, `updated_at`) VALUES
(7, 'PO0420231', '56456765', '2023-04-21 00:00:00', 'SP0001', '108600000.00', '0.00', '0.00', '11.00', '450000.00', '109050000.00', NULL, 0, '2023-04-21 00:00:00', '2023-04-21 14:37:00', '2023-04-21 14:37:00'),
(8, 'PO0420232', '12311', '2023-04-16 00:00:00', 'SP0001', '108600000.00', '0.00', '0.00', '11.00', '524000.00', '109124000.00', NULL, 0, '2023-04-22 00:00:00', '2023-04-21 22:37:45', '2023-04-21 22:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblpobbm_detail`
--

CREATE TABLE `tblpobbm_detail` (
  `idPoDetail` bigint UNSIGNED NOT NULL,
  `r_noPo` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kdBarang` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmBarang` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hrgBeli` decimal(13,2) NOT NULL,
  `qty` decimal(13,2) NOT NULL,
  `qty_recieve` decimal(13,2) NOT NULL,
  `pph` decimal(13,2) NOT NULL,
  `total_net` decimal(13,2) NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `total_terima` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpobbm_detail`
--

INSERT INTO `tblpobbm_detail` (`idPoDetail`, `r_noPo`, `kdBarang`, `nmBarang`, `hrgBeli`, `qty`, `qty_recieve`, `pph`, `total_net`, `total`, `total_terima`, `created_at`, `updated_at`) VALUES
(13, 'PO0420231', 'BRG0001', 'PERTAMAX', '13000.00', '3000.00', '0.00', '130000.00', '39000000.00', '39130000.00', '0.00', '2023-04-21 14:37:00', '2023-04-21 14:37:00'),
(14, 'PO0420231', 'BRG0002', 'PERLITE', '9200.00', '3000.00', '0.00', '150000.00', '27600000.00', '27750000.00', '0.00', '2023-04-21 14:37:00', '2023-04-21 14:37:00'),
(15, 'PO0420231', 'BRG0003', 'DEX LITE', '14000.00', '3000.00', '0.00', '170000.00', '42000000.00', '42170000.00', '0.00', '2023-04-21 14:37:00', '2023-04-21 14:37:00'),
(16, 'PO0420232', 'BRG0001', 'PERTAMAX', '12500.00', '3000.00', '3000.00', '167000.00', '37500000.00', '37667000.00', '37500000.00', '2023-04-21 22:37:45', '2023-04-21 22:37:45'),
(17, 'PO0420232', 'BRG0002', 'PERLITE', '9700.00', '3000.00', '3000.00', '145000.00', '29100000.00', '29245000.00', '29100000.00', '2023-04-21 22:37:45', '2023-04-21 22:37:45'),
(18, 'PO0420232', 'BRG0003', 'DEX LITE', '14000.00', '3000.00', '3000.00', '212000.00', '42000000.00', '42212000.00', '42000000.00', '2023-04-21 22:37:45', '2023-04-21 22:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblprofit`
--

CREATE TABLE `tblprofit` (
  `id_profit` bigint NOT NULL,
  `kd_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_profit` datetime NOT NULL,
  `kdBarang` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hpp_beli` decimal(13,2) NOT NULL,
  `qty_laku` decimal(13,2) NOT NULL,
  `total_laku` decimal(13,2) NOT NULL,
  `margin_laku` decimal(13,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrates`
--

CREATE TABLE `tblrates` (
  `id` bigint UNSIGNED NOT NULL,
  `rateCode` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rateName` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ratePrice` decimal(17,2) NOT NULL,
  `rateStart` datetime NOT NULL,
  `rateEnd` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblrates`
--

INSERT INTO `tblrates` (`id`, `rateCode`, `rateName`, `ratePrice`, `rateStart`, `rateEnd`, `created_at`, `updated_at`) VALUES
(1, 'rt01', 'standart rate', '50.00', '2022-09-03 07:50:37', '2022-09-03 07:50:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblrooms`
--

CREATE TABLE `tblrooms` (
  `id` bigint UNSIGNED NOT NULL,
  `roomCode` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `roomName` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rRoomRate` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `roomDesc` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `roomPic` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblrooms`
--

INSERT INTO `tblrooms` (`id`, `roomCode`, `roomName`, `rRoomRate`, `roomDesc`, `roomPic`, `created_at`, `updated_at`) VALUES
(1, 'R001', 'Deluxe Room 2', '2', 'Rice terace view with balconi', 'pic1.jpg', NULL, '2022-09-02 15:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblstokbbm_hpp`
--

CREATE TABLE `tblstokbbm_hpp` (
  `id` bigint NOT NULL,
  `r_perubahan` int NOT NULL,
  `r_bbm` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_stok` datetime NOT NULL,
  `stok` decimal(10,2) NOT NULL,
  `h_pokok` decimal(13,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblstokbbm_hpp`
--

INSERT INTO `tblstokbbm_hpp` (`id`, `r_perubahan`, `r_bbm`, `tgl_stok`, `stok`, `h_pokok`, `created_at`, `updated_at`) VALUES
(4, 7, 'BRG0001', '2023-04-16 00:00:00', '7720.00', '12000.00', '2023-04-16 08:16:48', '2023-04-16 08:16:48'),
(6, 9, 'BRG0001', '2023-04-17 00:00:00', '7700.00', '11600.00', '2023-04-16 08:20:30', '2023-04-16 08:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblstok_fifo`
--

CREATE TABLE `tblstok_fifo` (
  `id` bigint NOT NULL,
  `tgl` datetime NOT NULL,
  `kd_barang` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `stok` decimal(10,2) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblstok_fifo`
--

INSERT INTO `tblstok_fifo` (`id`, `tgl`, `kd_barang`, `keterangan`, `stok`, `harga`, `total`, `created_at`, `updated_at`) VALUES
(1, '2023-04-20 00:00:00', 'BRG0001', '0', '0.00', '12600.00', '12600.00', '2023-04-20 11:27:40', '2023-04-20 11:27:40'),
(2, '2023-04-20 00:00:00', 'BRG0002', '0', '0.00', '9500.00', '9500.00', '2023-04-20 11:27:40', '2023-04-20 11:27:40'),
(3, '2023-04-20 00:00:00', 'BRG0003', '0', '0.00', '16000.00', '16000.00', '2023-04-20 11:27:49', '2023-04-20 11:27:49'),
(17, '2023-04-21 00:00:00', 'BRG0001', 'BR0420231', '3000.00', '12500.00', '37500000.00', '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(18, '2023-04-21 00:00:00', 'BRG0002', 'BR0420231', '3000.00', '9700.00', '29100000.00', '2023-04-22 06:38:48', '2023-04-22 06:38:48'),
(19, '2023-04-21 00:00:00', 'BRG0003', 'BR0420231', '3000.00', '14000.00', '42000000.00', '2023-04-22 06:38:48', '2023-04-22 06:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `id` bigint UNSIGNED NOT NULL,
  `kdSupplier` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmSupplier` varchar(225) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `almtSupplier` varchar(225) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tlpSupplier` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `picSupplier` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`id`, `kdSupplier`, `nmSupplier`, `almtSupplier`, `tlpSupplier`, `picSupplier`, `created_at`, `updated_at`) VALUES
(1, 'SP0001', 'CASH', 'DENPASAR', '08187654', 'MAS', '2023-01-20 13:30:05', '2023-01-20 13:30:05'),
(2, 'SP0002', 'PT BBM NUSANTARA', 'KARANGASEM', '987654', 'OM', '2023-01-20 13:30:48', '2023-01-20 13:30:48'),
(3, 'SP0003', 'PT MIGAS', 'DENPASAR', '787686', 'ANDI', '2023-01-20 13:44:37', '2023-01-20 13:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbltera_detail`
--

CREATE TABLE `tbltera_detail` (
  `id` int NOT NULL,
  `no_tera` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_notrans` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_nosel` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_bbm` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama_bbm` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_tera` datetime NOT NULL,
  `jumlah_tera` decimal(13,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblterimabbm`
--

CREATE TABLE `tblterimabbm` (
  `id` bigint NOT NULL,
  `kd_terima` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_po` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_so` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_terima` datetime NOT NULL,
  `kd_supplier` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblterimabbm`
--

INSERT INTO `tblterimabbm` (`id`, `kd_terima`, `no_po`, `no_so`, `tgl_terima`, `kd_supplier`, `created_at`, `updated_at`) VALUES
(23, 'BR0420231', 'PO0420232', '12311', '2023-04-21 00:00:00', 'SP0001', '2023-04-22 06:38:48', '2023-04-22 06:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblterimabbm_detail`
--

CREATE TABLE `tblterimabbm_detail` (
  `id_detail` bigint NOT NULL,
  `r_kdterima` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_nopo` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_noso` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_terima` datetime NOT NULL,
  `kd_barang` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `qty_terima` decimal(13,2) NOT NULL,
  `harga_terima` decimal(10,2) NOT NULL,
  `nilai_terima` decimal(13,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblterimabbm_detail`
--

INSERT INTO `tblterimabbm_detail` (`id_detail`, `r_kdterima`, `r_nopo`, `r_noso`, `tgl_terima`, `kd_barang`, `qty_terima`, `harga_terima`, `nilai_terima`, `created_at`, `updated_at`) VALUES
(29, 'BR0420231', 'PO0420232', '12311', '2023-04-21 00:00:00', 'BRG0001', '3000.00', '12500.00', '37500000.00', '2023-04-21 00:00:00', '2023-04-22 06:38:48'),
(30, 'BR0420231', 'PO0420232', '12311', '2023-04-21 00:00:00', 'BRG0002', '3000.00', '9700.00', '29100000.00', '2023-04-21 00:00:00', '2023-04-22 06:38:48'),
(31, 'BR0420231', 'PO0420232', '12311', '2023-04-21 00:00:00', 'BRG0003', '3000.00', '14000.00', '42000000.00', '2023-04-21 00:00:00', '2023-04-22 06:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi_nosel`
--

CREATE TABLE `tbltransaksi_nosel` (
  `id` bigint UNSIGNED NOT NULL,
  `r_bbm` int NOT NULL,
  `r_nosel` int NOT NULL,
  `kd_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_regu` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `last_meter` decimal(13,2) DEFAULT NULL,
  `awal_meter` decimal(13,2) NOT NULL,
  `tera` decimal(10,0) NOT NULL DEFAULT '0',
  `cost_ltr` decimal(13,2) DEFAULT NULL,
  `last_price` decimal(13,2) NOT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `total_hpp` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi_stok`
--

CREATE TABLE `tbltransaksi_stok` (
  `id_trans` bigint UNSIGNED NOT NULL,
  `kd_transStok` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `r_fifo` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `stok_trans` decimal(10,2) NOT NULL,
  `harga_trans` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-06-21 02:08:43', '$2y$10$1M/zZK917.HJrYuNrWF2yued.SVCPw89I5RVZqliW9ndVZAUSmuFu', NULL, '2022-06-21 02:08:43', '2022-06-21 02:08:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_ledger`
--
ALTER TABLE `general_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `notrans` (`notrans`),
  ADD KEY `jurnal` (`jurnal`),
  ADD KEY `us_create` (`us_create`),
  ADD KEY `us_update` (`us_update`),
  ADD KEY `pay_notrans` (`pay_notrans`),
  ADD KEY `return_notrans` (`return_notrans`),
  ADD KEY `date_create` (`date_create`),
  ADD KEY `r_anggaran` (`r_anggaran`);

--
-- Indexes for table `gl`
--
ALTER TABLE `gl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gl_detail`
--
ALTER TABLE `gl_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `r_general` (`rgl`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `gl_lr`
--
ALTER TABLE `gl_lr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level1`
--
ALTER TABLE `level1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `level2`
--
ALTER TABLE `level2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acc_id_2` (`acc_id`),
  ADD KEY `id` (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `level3`
--
ALTER TABLE `level3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `level4`
--
ALTER TABLE `level4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acc_id_2` (`acc_id`),
  ADD KEY `id` (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rekening_anggaran`
--
ALTER TABLE `rekening_anggaran`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tblbarang`
--
ALTER TABLE `tblbarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbbm`
--
ALTER TABLE `tblbbm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbbm_detail`
--
ALTER TABLE `tblbbm_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbiaya`
--
ALTER TABLE `tblbiaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `tblheader_aplusan`
--
ALTER TABLE `tblheader_aplusan`
  ADD PRIMARY KEY (`id_aplusan`),
  ADD UNIQUE KEY `kd_trans` (`kd_trans`);

--
-- Indexes for table `tblinventaris`
--
ALTER TABLE `tblinventaris`
  ADD PRIMARY KEY (`id_inventaris`),
  ADD UNIQUE KEY `kode_inventaris_3` (`kode_inventaris`),
  ADD KEY `kode_inventaris` (`kode_inventaris`),
  ADD KEY `kode_inventaris_2` (`kode_inventaris`),
  ADD KEY `kode_pengadaan` (`kode_pengadaan`);

--
-- Indexes for table `tblinventaris_pengadaan`
--
ALTER TABLE `tblinventaris_pengadaan`
  ADD PRIMARY KEY (`id_pengadaan`),
  ADD UNIQUE KEY `pengadaan_sysno_UNIQUE` (`pengadaan_sysno`),
  ADD UNIQUE KEY `pengadaan_docno_UNIQUE` (`pengadaan_docno`),
  ADD KEY `pengadaan_sysno` (`pengadaan_sysno`);

--
-- Indexes for table `tblinventaris_pengadaan_detail`
--
ALTER TABLE `tblinventaris_pengadaan_detail`
  ADD PRIMARY KEY (`id_pengadaan_detail`),
  ADD KEY `rsysno_pengadaan` (`rsysno_pengadaan`),
  ADD KEY `rkode_inventaris` (`rkode_inventaris`);

--
-- Indexes for table `tblinventaris_penyusutan`
--
ALTER TABLE `tblinventaris_penyusutan`
  ADD PRIMARY KEY (`id_penyusutan`),
  ADD KEY `penyusutan_sysno` (`penyusutan_sysno`);

--
-- Indexes for table `tblinventaris_penyusutan_detail`
--
ALTER TABLE `tblinventaris_penyusutan_detail`
  ADD PRIMARY KEY (`id_penyusutan_detail`),
  ADD KEY `rsysno_penyusutan` (`rsysno_penyusutan`);

--
-- Indexes for table `tblkartu_stok`
--
ALTER TABLE `tblkartu_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkategori`
--
ALTER TABLE `tblkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkupon`
--
ALTER TABLE `tblkupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllinkaja`
--
ALTER TABLE `tbllinkaja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnosel_detail`
--
ALTER TABLE `tblnosel_detail`
  ADD PRIMARY KEY (`id_nosel`);

--
-- Indexes for table `tblopnum`
--
ALTER TABLE `tblopnum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kdOpnum` (`kdOpnum`);

--
-- Indexes for table `tblopnum_detail`
--
ALTER TABLE `tblopnum_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpegawai`
--
ALTER TABLE `tblpegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpelanggan`
--
ALTER TABLE `tblpelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpembelian`
--
ALTER TABLE `tblpembelian`
  ADD PRIMARY KEY (`idPembelian`);

--
-- Indexes for table `tblpembelian_detail`
--
ALTER TABLE `tblpembelian_detail`
  ADD PRIMARY KEY (`idPembelianDetail`);

--
-- Indexes for table `tblpenjualan`
--
ALTER TABLE `tblpenjualan`
  ADD PRIMARY KEY (`idPenjualan`),
  ADD UNIQUE KEY `noPenjualan` (`noPenjualan`);

--
-- Indexes for table `tblpenjualankupon`
--
ALTER TABLE `tblpenjualankupon`
  ADD PRIMARY KEY (`idPenjualanKupon`);

--
-- Indexes for table `tblpenjualan_detail`
--
ALTER TABLE `tblpenjualan_detail`
  ADD PRIMARY KEY (`idDetailPenjualan`);

--
-- Indexes for table `tblpersediaan`
--
ALTER TABLE `tblpersediaan`
  ADD PRIMARY KEY (`idPersediaan`);

--
-- Indexes for table `tblperubahan_hargabbm`
--
ALTER TABLE `tblperubahan_hargabbm`
  ADD PRIMARY KEY (`id_perubahan`);

--
-- Indexes for table `tblpobbm`
--
ALTER TABLE `tblpobbm`
  ADD PRIMARY KEY (`idPo`);

--
-- Indexes for table `tblpobbm_detail`
--
ALTER TABLE `tblpobbm_detail`
  ADD PRIMARY KEY (`idPoDetail`);

--
-- Indexes for table `tblprofit`
--
ALTER TABLE `tblprofit`
  ADD PRIMARY KEY (`id_profit`);

--
-- Indexes for table `tblrates`
--
ALTER TABLE `tblrates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrooms`
--
ALTER TABLE `tblrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstokbbm_hpp`
--
ALTER TABLE `tblstokbbm_hpp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstok_fifo`
--
ALTER TABLE `tblstok_fifo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltera_detail`
--
ALTER TABLE `tbltera_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblterimabbm`
--
ALTER TABLE `tblterimabbm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblterimabbm_detail`
--
ALTER TABLE `tblterimabbm_detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tbltransaksi_nosel`
--
ALTER TABLE `tbltransaksi_nosel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltransaksi_stok`
--
ALTER TABLE `tbltransaksi_stok`
  ADD PRIMARY KEY (`id_trans`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coa`
--
ALTER TABLE `coa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_ledger`
--
ALTER TABLE `general_ledger`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `gl`
--
ALTER TABLE `gl`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gl_detail`
--
ALTER TABLE `gl_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1570;

--
-- AUTO_INCREMENT for table `gl_lr`
--
ALTER TABLE `gl_lr`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `rekening_anggaran`
--
ALTER TABLE `rekening_anggaran`
  MODIFY `id_rekening` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbarang`
--
ALTER TABLE `tblbarang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbbm`
--
ALTER TABLE `tblbbm`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbbm_detail`
--
ALTER TABLE `tblbbm_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbiaya`
--
ALTER TABLE `tblbiaya`
  MODIFY `id_biaya` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblheader_aplusan`
--
ALTER TABLE `tblheader_aplusan`
  MODIFY `id_aplusan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblinventaris`
--
ALTER TABLE `tblinventaris`
  MODIFY `id_inventaris` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblinventaris_pengadaan`
--
ALTER TABLE `tblinventaris_pengadaan`
  MODIFY `id_pengadaan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblinventaris_pengadaan_detail`
--
ALTER TABLE `tblinventaris_pengadaan_detail`
  MODIFY `id_pengadaan_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblinventaris_penyusutan`
--
ALTER TABLE `tblinventaris_penyusutan`
  MODIFY `id_penyusutan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblinventaris_penyusutan_detail`
--
ALTER TABLE `tblinventaris_penyusutan_detail`
  MODIFY `id_penyusutan_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblkartu_stok`
--
ALTER TABLE `tblkartu_stok`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblkategori`
--
ALTER TABLE `tblkategori`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblkupon`
--
ALTER TABLE `tblkupon`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbllinkaja`
--
ALTER TABLE `tbllinkaja`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblnosel_detail`
--
ALTER TABLE `tblnosel_detail`
  MODIFY `id_nosel` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblopnum`
--
ALTER TABLE `tblopnum`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblopnum_detail`
--
ALTER TABLE `tblopnum_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpegawai`
--
ALTER TABLE `tblpegawai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpelanggan`
--
ALTER TABLE `tblpelanggan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblpembelian`
--
ALTER TABLE `tblpembelian`
  MODIFY `idPembelian` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpembelian_detail`
--
ALTER TABLE `tblpembelian_detail`
  MODIFY `idPembelianDetail` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpenjualan`
--
ALTER TABLE `tblpenjualan`
  MODIFY `idPenjualan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpenjualankupon`
--
ALTER TABLE `tblpenjualankupon`
  MODIFY `idPenjualanKupon` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpenjualan_detail`
--
ALTER TABLE `tblpenjualan_detail`
  MODIFY `idDetailPenjualan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpersediaan`
--
ALTER TABLE `tblpersediaan`
  MODIFY `idPersediaan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblperubahan_hargabbm`
--
ALTER TABLE `tblperubahan_hargabbm`
  MODIFY `id_perubahan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpobbm`
--
ALTER TABLE `tblpobbm`
  MODIFY `idPo` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpobbm_detail`
--
ALTER TABLE `tblpobbm_detail`
  MODIFY `idPoDetail` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblprofit`
--
ALTER TABLE `tblprofit`
  MODIFY `id_profit` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tblrates`
--
ALTER TABLE `tblrates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblrooms`
--
ALTER TABLE `tblrooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblstokbbm_hpp`
--
ALTER TABLE `tblstokbbm_hpp`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstok_fifo`
--
ALTER TABLE `tblstok_fifo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltera_detail`
--
ALTER TABLE `tbltera_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblterimabbm`
--
ALTER TABLE `tblterimabbm`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblterimabbm_detail`
--
ALTER TABLE `tblterimabbm_detail`
  MODIFY `id_detail` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbltransaksi_nosel`
--
ALTER TABLE `tbltransaksi_nosel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;

--
-- AUTO_INCREMENT for table `tbltransaksi_stok`
--
ALTER TABLE `tbltransaksi_stok`
  MODIFY `id_trans` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
