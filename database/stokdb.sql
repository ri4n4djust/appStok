-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2025 at 11:28 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stokdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `id` int UNSIGNED NOT NULL,
  `idparent1` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `parent1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `parent1level` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `parent1type` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `idparent2` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `parent2` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `parent2level` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `parent2type` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `idparent3` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `parent3` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `parent3level` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `parent3type` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `acc_id` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `atype` varchar(1) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
(9, '40000', 'PENDAPATAN', '1', 'H', '42000', 'PENDAPATAN LAINNYA', '2', 'H', '42000', 'PENDAPATAN LAINNYA', '2', 'H', '42000', 'PENDAPATAN LAINNYA', 'H'),
(10, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51000', 'HPP PENJUALAN', 'H'),
(11, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52000', 'TEKOR', '2', 'H', '52000', 'TEKOR', 'H'),
(12, '20000', 'KEWAJIBAN', '1', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23100', 'HUTANG PAJAK PPH FINAL PS 4 AYAT 2', '3', 'D', '23100', 'HUTANG PAJAK PPH FINAL PS 4 AYAT 2', 'D'),
(13, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21300', 'HUTANG LAINNYA', '3', 'D', '21300', 'HUTANG LAINNYA', 'D'),
(14, '30000', 'EKUITAS', '1', 'H', '32000', 'MODAL', '2', 'H', '32200', 'MODAL YANG DI SETOR', '3', 'D', '32200', 'MODAL YANG DI SETOR', 'D'),
(15, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12100', 'TANAH', '3', 'D', '12100', 'TANAH', 'D'),
(16, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12200', 'GEDUNG DAN BANGUNAN', '3', 'D', '12200', 'GEDUNG DAN BANGUNAN', 'D'),
(17, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12300', 'PERALATAN DAN MESIN', '3', 'D', '12300', 'PERALATAN DAN MESIN', 'D'),
(18, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12400', 'PERLENGKAPAN', '3', 'D', '12400', 'PERLENGKAPAN', 'D'),
(19, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21100', 'HUTANG USAHA', '3', 'D', '21100', 'HUTANG USAHA', 'D'),
(20, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21200', 'PENDAPATAN DITERIMA DIMUKA', '3', 'D', '21200', 'PENDAPATAN DITERIMA DIMUKA', 'D'),
(21, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21400', 'BIAYA YANG MASIH HARUS DIBAYAR', '3', 'D', '21400', 'BIAYA YANG MASIH HARUS DIBAYAR', 'D'),
(22, '20000', 'KEWAJIBAN', '1', 'H', '21000', 'KEWAJIBAN JANGKA PENDEK', '2', 'H', '21500', 'HUTANG BEBAN', '3', 'D', '21500', 'HUTANG BEBAN', 'D'),
(23, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41200', 'PENJUALAN KOMPUTER', '3', 'D', '41200', 'PENJUALAN KOMPUTER', 'D'),
(24, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41300', 'PENJUALAN PRINTER', '3', 'D', '41300', 'PENJUALAN PRINTER', 'D'),
(25, '40000', 'PENDAPATAN', '1', 'H', '42000', 'PENDAPATAN LAINNYA', '2', 'H', '42801', 'MAINTENANCE', '3', 'D', '42801', 'MAINTENANCE', 'D'),
(26, '40000', 'PENDAPATAN', '1', 'H', '42000', 'PENDAPATAN LAINNYA', '2', 'H', '42805', 'JASA PROYEK', '3', 'D', '42805', 'JASA PROYEK', 'D'),
(27, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41100', 'PENJUALAN LAPTOP', '3', 'D', '41100', 'PENJUALAN LAPTOP', 'D'),
(28, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41400', 'PENJUALAN AKSESORIS', '3', 'D', '41400', 'PENJUALAN AKSESORIS', 'D'),
(29, '40000', 'PENDAPATAN', '1', 'H', '41000', 'PENJUALAN', '2', 'H', '41500', 'PENJUALAN CCTV', '3', 'D', '41500', 'PENJUALAN CCTV', 'D'),
(30, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51100', 'HPP LAPTOP', '3', 'D', '51100', 'HPP LAPTOP', 'D'),
(31, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52100', 'TEKOR LAPTOP', '3', 'D', '52100', 'TEKOR LAPTOP', 'D'),
(32, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51200', 'HPP KOMPUTER', '3', 'D', '51200', 'HPP KOMPUTER', 'D'),
(33, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51300', 'HPP PRINTER', '3', 'D', '51300', 'HPP PRINTER', 'D'),
(34, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51400', 'HPP AKSESORIS', '3', 'D', '51400', 'HPP AKSESORIS', 'D'),
(35, '50000', 'BIAYA PENJUALAN', '1', 'H', '51000', 'HPP PENJUALAN', '2', 'H', '51500', 'HPP CCTV', '3', 'D', '51500', 'HPP CCTV', 'D'),
(36, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52200', 'TEKOR KOMPUTER', '3', 'D', '52200', 'TEKOR KOMPUTER', 'D'),
(37, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52300', 'TEKOR PRINTER', '3', 'D', '52300', 'TEKOR PRINTER', 'D'),
(38, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52400', 'TEKOR AKSESORIS', '3', 'D', '52400', 'TEKOR AKSESORIS', 'D'),
(39, '50000', 'BIAYA PENJUALAN', '1', 'H', '52000', 'TEKOR', '2', 'H', '52500', 'TEKOR CCTV', '3', 'D', '52500', 'TEKOR CCTV', 'D'),
(40, '30000', 'EKUITAS', '1', 'H', '32000', 'MODAL', '2', 'H', '32300', 'LABA DI TAHAN', '3', 'D', '32300', 'LABA DI TAHAN', 'D'),
(41, '30000', 'EKUITAS', '1', 'H', '32000', 'MODAL', '2', 'H', '32400', 'DEVIDEN', '3', 'D', '32400', 'DEVIDEN', 'D'),
(42, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62100', 'PAJAK BBM PPH 22', '3', 'D', '62100', 'PAJAK BBM PPH 22', 'D'),
(43, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62300', 'SPT PPH PASAL 23', '3', 'D', '62300', 'SPT PPH PASAL 23', 'D'),
(44, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62400', 'PAJAK PASAL 21 GAJI KARYAWAN', '3', 'D', '62400', 'PAJAK PASAL 21 GAJI KARYAWAN', 'D'),
(45, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62500', 'SPT TAHUN 2023', '3', 'D', '62500', 'SPT TAHUN 2023', 'D'),
(46, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11605', 'PERSEDIAAN CCTV', 'D'),
(47, '20000', 'KEWAJIBAN', '1', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23200', 'HUTANG PPN', '3', 'H', '23210', 'PPN MASUKAN', 'D'),
(48, '20000', 'KEWAJIBAN', '1', 'H', '23000', 'HUTANG PAJAK', '2', 'H', '23200', 'HUTANG PPN', '3', 'H', '23220', 'PPN KELUARAN', 'D'),
(49, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62203', 'BIAYA KONSUMSI / TAMU', 'D'),
(50, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62201', 'BIAYA BANTEN', 'D'),
(51, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62204', 'KEP. KANTOR', 'D'),
(52, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11601', 'PERSEDIAAN LAPTOP', 'D'),
(53, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11602', 'PERSEDIAAN KOMPUTER', 'D'),
(54, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11603', 'PERSEDIAAN PRINTER', 'D'),
(55, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12500', 'AKUMULASI PENYUSUTAN', '3', 'H', '12502', 'AKP. BANGUNAN DAN GEDUNG', 'D'),
(56, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12500', 'AKUMULASI PENYUSUTAN', '3', 'H', '12501', 'AKP. PERALATAN DAN MESIN', 'D'),
(57, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61201', 'BELANJA PAKAIAN KARYAWAN', 'D'),
(58, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61202', 'BELANJA ASURANSI', 'D'),
(59, '10000', 'HARTA', '1', 'H', '12000', 'ASET TETAP', '2', 'H', '12500', 'AKUMULASI PENYUSUTAN', '3', 'H', '12503', 'AKP. PERLENGKAPAN', 'D'),
(60, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11600', 'PERSEDIAAN', '3', 'H', '11604', 'PERSEDIAAN AKSESORIS', 'D'),
(61, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61203', 'BELANJA PEMELIHARAAN', 'D'),
(62, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11100', 'KAS DAN SETARA KAS', '3', 'H', '11110', 'KAS', 'D'),
(63, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11200', 'KAS BANK', '3', 'H', '11210', 'BANK BCA', 'D'),
(64, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62202', 'BIAYA KONSUMSI SOPIR DO', 'D'),
(65, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61101', 'BIAYA LISTRIK', 'D'),
(66, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61102', 'BIAYA PDAM / AIR', 'D'),
(67, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61103', 'BEBAN PENYUSUTAN ASET', 'D'),
(68, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11400', 'PERSEDIAAN LAINNYA', '3', 'H', '11401', 'PERSEDIAAN DI BAYAR DIMUKA', 'D'),
(69, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11400', 'PERSEDIAAN LAINNYA', '3', 'H', '11402', 'PERSEDIAAN ATK', 'D'),
(70, '10000', 'HARTA', '1', 'H', '11000', 'ASET LANCAR', '2', 'H', '11400', 'PERSEDIAAN LAINNYA', '3', 'H', '11403', 'PERSEDIAAN MATERAI', 'D'),
(71, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61104', 'BIAYA TELEPON KANTOR', 'D'),
(72, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61105', 'BIAYA INTERNET INDIHOME', 'D'),
(73, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61106', 'BIAYA HANDPHONE ORDER PESANAN', 'D'),
(74, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61107', 'BIAYA HANDPHONE MANAGER', 'D'),
(75, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61108', 'BIAYA HISWANA MIGAS', 'D'),
(76, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61109', 'GAJI KARYAWAN + HONOR DIREKSI', 'D'),
(77, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61204', 'SEWA PLTS PERTAMINA', 'D'),
(78, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62205', 'BBM SOLAR GENSET/ P. RUMPUT / SAMPAH', 'D'),
(79, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62206', 'TRANSPORT', 'D'),
(80, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62207', 'SUMBANGAN POLSEK & POLRES / DEPO', 'D'),
(81, '60000', 'PENGELUARAN', '1', 'H', '62000', 'BIAYA LAINNYA', '2', 'H', '62200', 'BIAYA LAIN-LAIN', '3', 'H', '62208', 'SUMBANGAN BANJAR / KARANGAN BUNGA', 'D'),
(82, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61200', 'BELANJA BARANG DAN JASA', '3', 'H', '61205', 'TERA DISPENSER + TERA BEJANA METROLOGI', 'D'),
(83, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61110', 'BIAYA BPJS KESEHATAN', 'D'),
(84, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61111', 'BIAYA JAMSOSTEK', 'D'),
(85, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61112', 'BIAYA ADM BANK', 'D'),
(86, '60000', 'PENGELUARAN', '1', 'H', '61000', 'BELANJA OPERASIONAL', '2', 'H', '61100', 'BELANJA BEBAN', '3', 'H', '61113', 'KEKURANGAN BAYAR DO', 'D');

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
(1, 'GJ000001', 'GJ25031', '0', 99999, 1, 'general_ledger', '2025-01-01 00:00:00', '20000000.00', 'Mdal Awal', 'GJ', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-23 14:18:46', '2025-03-23 14:18:46'),
(98, 'GJ000002', 'INV2025-1', '0', 99999, 1, 'general_ledger', '2025-03-01 00:00:00', '332500.00', 'Penjualan-RAM VGEN', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(99, 'GJ000003', 'INV2025-1', '0', 99999, 1, 'general_ledger', '2025-03-01 00:00:00', '200000.00', 'Penjualan-JasaINSTALL WINDOWS', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(100, 'GJ000004', 'INV2025-2', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '350000.00', 'Penjualan-Mainboard Varro H61', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(101, 'GJ000005', 'INV2025-2', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '350000.00', 'Penjualan-RAM VGEN', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(102, 'GJ000006', 'INV2025-2', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '200000.00', 'Penjualan-JasaINSTALL WINDOWS', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(110, 'GJ000011', 'INV2025-3', '0', 99999, 1, 'general_ledger', '2025-03-02 00:00:00', '332500.00', 'Penjualan-RAM VGEN', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(111, 'GJ000012', 'INV2025-3', '0', 99999, 1, 'general_ledger', '2025-03-02 00:00:00', '200000.00', 'Penjualan-JasaINSTALL WINDOWS', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(112, 'GJ000013', 'INV2025-4', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '230000.00', 'Penjualan-KAMERA 2MP', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 07:04:16', '2025-03-25 07:04:16'),
(113, 'GJ000014', 'INV2025-5', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '350000.00', 'Penjualan-RAM VGEN', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 07:11:24', '2025-03-25 07:11:24'),
(114, 'GJ000015', 'INV2025-6', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '700000.00', 'Penjualan-DVR 4CH', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(115, 'GJ000016', 'INV2025-6', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '230000.00', 'Penjualan-KAMERA 2MP', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(116, 'GJ000017', 'INV2025-6', '0', 99999, 1, 'general_ledger', '2025-03-25 00:00:00', '150000.00', 'Penjualan-JasaPERBAIKAN CCTV', 'JK', '01020', 'Comp-Loc', '0', '0', '0', '0', 0, 0, 0, 'user', 'uerr', '2025-03-25 07:17:03', '2025-03-25 07:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `gl`
--

CREATE TABLE `gl` (
  `id` int UNSIGNED NOT NULL,
  `acc_id` varchar(18) COLLATE latin1_general_ci DEFAULT '0',
  `amount` decimal(15,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gl`
--

INSERT INTO `gl` (`id`, `acc_id`, `amount`) VALUES
(1, '32200', '-20000000.00'),
(2, '11110', '21965000.00'),
(3, '41400', '1365000.00'),
(4, '11604', '-628000.00'),
(5, '51400', '628000.00'),
(6, '32300', '-1337000.00'),
(7, '42801', '600000.00'),
(8, '38100', '2593000.00'),
(9, '38999', NULL);

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
(1, 'GJ000001', 32200, '0.00', '20000000.00', 'Jurnal-Umum', 0, '2025-03-23 14:18:46', '2025-03-23 14:18:46'),
(2, 'GJ000001', 11110, '20000000.00', '0.00', 'Jurnal-Umum', 0, '2025-03-23 14:18:46', '2025-03-23 14:18:46'),
(391, 'GJ000002', 41400, '332500.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(392, 'GJ000002', 11110, '332500.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(393, 'GJ000002', 11604, '0.00', '200000.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(394, 'GJ000002', 51400, '200000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(395, 'GJ000002', 32300, '0.00', '132500.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(396, 'GJ000003', 11110, '200000.00', '0.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(397, 'GJ000003', 42801, '200000.00', '0.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(398, 'GJ000003', 32300, '0.00', '200000.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(399, 'GJ000004', 41400, '350000.00', '0.00', 'Penjualan-BarangMainboard Varro H61', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(400, 'GJ000004', 11110, '350000.00', '0.00', 'Penjualan-BarangMainboard Varro H61', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(401, 'GJ000004', 11604, '0.00', '28000.00', 'Penjualan-BarangMainboard Varro H61', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(402, 'GJ000004', 51400, '28000.00', '0.00', 'Penjualan-BarangMainboard Varro H61', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(403, 'GJ000004', 32300, '0.00', '322000.00', 'Penjualan-BarangMainboard Varro H61', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(404, 'GJ000005', 41400, '350000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(405, 'GJ000005', 11110, '350000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(406, 'GJ000005', 11604, '0.00', '200000.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(407, 'GJ000005', 51400, '200000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(408, 'GJ000005', 32300, '0.00', '150000.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(409, 'GJ000006', 11110, '200000.00', '0.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(410, 'GJ000006', 42801, '200000.00', '0.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(411, 'GJ000006', 32300, '0.00', '200000.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(441, 'GJ000011', 41400, '332500.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(442, 'GJ000011', 11110, '332500.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(443, 'GJ000011', 11604, '0.00', '200000.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(444, 'GJ000011', 51400, '200000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(445, 'GJ000011', 32300, '0.00', '132500.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(446, 'GJ000012', 11110, '200000.00', '0.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(447, 'GJ000012', 42801, '200000.00', '0.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(448, 'GJ000012', 32300, '0.00', '200000.00', 'Penjualan-JasaINSTALL WINDOWS', 0, '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(449, 'GJ000013', 41500, '230000.00', '0.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:04:16', '2025-03-25 07:04:16'),
(450, 'GJ000013', 11110, '230000.00', '0.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:04:16', '2025-03-25 07:04:16'),
(451, 'GJ000013', 11605, '0.00', '170000.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:04:16', '2025-03-25 07:04:16'),
(452, 'GJ000013', 51500, '170000.00', '0.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:04:16', '2025-03-25 07:04:16'),
(453, 'GJ000013', 32300, '0.00', '60000.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:04:16', '2025-03-25 07:04:16'),
(454, 'GJ000014', 41400, '350000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 07:11:24', '2025-03-25 07:11:24'),
(455, 'GJ000014', 11110, '350000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 07:11:24', '2025-03-25 07:11:24'),
(456, 'GJ000014', 11604, '0.00', '200000.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 07:11:24', '2025-03-25 07:11:24'),
(457, 'GJ000014', 51400, '200000.00', '0.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 07:11:24', '2025-03-25 07:11:24'),
(458, 'GJ000014', 32300, '0.00', '150000.00', 'Penjualan-BarangRAM VGEN', 0, '2025-03-25 07:11:24', '2025-03-25 07:11:24'),
(459, 'GJ000015', 41500, '700000.00', '0.00', 'Penjualan-BarangDVR 4CH', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(460, 'GJ000015', 11110, '700000.00', '0.00', 'Penjualan-BarangDVR 4CH', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(461, 'GJ000015', 11605, '0.00', '487000.00', 'Penjualan-BarangDVR 4CH', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(462, 'GJ000015', 51500, '487000.00', '0.00', 'Penjualan-BarangDVR 4CH', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(463, 'GJ000015', 32300, '0.00', '213000.00', 'Penjualan-BarangDVR 4CH', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(464, 'GJ000016', 41500, '230000.00', '0.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(465, 'GJ000016', 11110, '230000.00', '0.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(466, 'GJ000016', 11605, '0.00', '170000.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(467, 'GJ000016', 51500, '170000.00', '0.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(468, 'GJ000016', 32300, '0.00', '60000.00', 'Penjualan-BarangKAMERA 2MP', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(469, 'GJ000017', 11110, '150000.00', '0.00', 'Penjualan-JasaPERBAIKAN CCTV', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(470, 'GJ000017', 42801, '150000.00', '0.00', 'Penjualan-JasaPERBAIKAN CCTV', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(471, 'GJ000017', 32300, '0.00', '150000.00', 'Penjualan-JasaPERBAIKAN CCTV', 0, '2025-03-25 07:17:03', '2025-03-25 07:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `gl_lr`
--

CREATE TABLE `gl_lr` (
  `id` int UNSIGNED NOT NULL,
  `acc_id` varchar(18) COLLATE latin1_general_ci DEFAULT '0',
  `amount` decimal(15,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gl_lr`
--

INSERT INTO `gl_lr` (`id`, `acc_id`, `amount`) VALUES
(1, '32200', '-20000000.00'),
(2, '11110', '21965000.00'),
(3, '41400', '1365000.00'),
(4, '11604', '-628000.00'),
(5, '51400', '628000.00'),
(6, '32300', '-1337000.00'),
(7, '42801', '600000.00'),
(8, '38100', '0.00'),
(9, '38999', '0.00');

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
('202208017', 42000, 2, 40000, 'PENDAPATAN LAINNYA', 'H', '0.00', 'JK', 'h', '0', '1', '2025-03-24 06:52:40'),
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
('2022080135', 12400, 3, 12000, 'PERLENGKAPAN', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-29 08:09:28'),
('2022080136', 12500, 3, 12000, 'AKUMULASI PENYUSUTAN', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-25 21:51:52'),
('2022080138', 21100, 3, 21000, 'HUTANG USAHA', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080139', 21200, 3, 21000, 'PENDAPATAN DITERIMA DIMUKA', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:51:52'),
('2022080140', 21400, 3, 21000, 'BIAYA YANG MASIH HARUS DIBAYAR', 'D', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:51:52'),
('2022080141', 21500, 3, 21000, 'HUTANG BEBAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:51:52'),
('2022080143', 41200, 3, 41000, 'PENJUALAN KOMPUTER', 'D', '0.00', 'JK', 'd', '0', '1', '2024-09-09 07:43:31'),
('2022080144', 41300, 3, 41000, 'PENJUALAN PRINTER', 'D', '0.00', 'JK', 'c', '0', '1', '2024-09-09 07:43:59'),
('2022080148', 42801, 3, 42000, 'MAINTENANCE', 'D', '0.00', 'JK', 'c', '0', '1', '2025-03-24 06:53:31'),
('2022080152', 42805, 3, 42000, 'JASA PROYEK', 'D', '0.00', 'JK', '2', '0', '1', '2025-03-24 06:54:04'),
('202208016', 41100, 3, 41000, 'PENJUALAN LAPTOP', 'D', '0.00', 'JK', 'd', '0', '1', '2024-09-09 07:33:51'),
('20220830033326', 23700, 3, 23000, 'HUTANG JANGKA PAJANG', 'H', '0.00', 'JK', '1', '0', '1', '2022-08-30 11:33:26'),
('20230201021633', 11100, 3, 11000, 'KAS DAN SETARA KAS', 'H', '0.00', 'JK', '1', '0', '1', '2023-02-01 09:16:33'),
('20230201022212', 11200, 3, 11000, 'KAS BANK', 'H', '0.00', 'JK', '1', '0', '1', '2023-02-01 09:22:13'),
('20230308232318', 41400, 3, 41000, 'PENJUALAN AKSESORIS', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:44:16'),
('20230308232336', 41500, 3, 41000, 'PENJUALAN CCTV', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:44:27'),
('20230309024556', 51100, 3, 51000, 'HPP LAPTOP', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:51:11'),
('20230309024751', 52100, 3, 52000, 'TEKOR LAPTOP', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:53:54'),
('20230309024829', 51200, 3, 51000, 'HPP KOMPUTER', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:52:28'),
('20230309024844', 51300, 3, 51000, 'HPP PRINTER', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:53:01'),
('20230309024859', 51400, 3, 51000, 'HPP AKSESORIS', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:53:19'),
('20230309024913', 51500, 3, 51000, 'HPP CCTV', 'D', '0.00', 'JK', 'd', '0', '1', '2024-09-09 07:53:30'),
('20230309024938', 52200, 3, 52000, 'TEKOR KOMPUTER', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:54:05'),
('20230309025000', 52300, 3, 52000, 'TEKOR PRINTER', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:54:16'),
('20230309025126', 52400, 3, 52000, 'TEKOR AKSESORIS', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:54:28'),
('20230309025140', 52500, 3, 52000, 'TEKOR CCTV', 'D', '0.00', 'JK', '2', '0', '1', '2024-09-09 07:54:38'),
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
('1742633072', 11605, 4, 11600, 'PERSEDIAAN CCTV', 'D', '0.00', 'JK', 'c', '0', '1', '2025-03-22 16:44:32'),
('202208011', 21300, 3, 21300, 'HUTANG LAINNYA', 'B', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:22'),
('2022080110', 12000, 2, 12000, 'ASET TETAP', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080114', 23100, 3, 23100, 'HUTANG PAJAK PPH FINAL', 'B', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080115', 23210, 4, 23200, 'PPN MASUKAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080116', 23220, 4, 23200, 'PPN KELUARAN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:22'),
('2022080117', 32200, 3, 32200, 'MODAL YANG DI SETOR', 'B', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:22'),
('2022080121', 62203, 4, 62200, 'BIAYA KONSUMSI / TAMU', 'D', '0.00', 'JK', 'c', '0', '1', '2022-08-25 21:52:23'),
('2022080123', 62201, 4, 62200, 'BIAYA BANTEN', 'D', '0.00', 'JK', '2', '0', '1', '2022-08-25 21:52:23'),
('2022080126', 62204, 4, 62200, 'KEP. KANTOR', 'D', '0.00', 'JK', 'd', '0', '1', '2022-08-25 21:52:23'),
('2022080138', 11601, 4, 11600, 'PERSEDIAAN LAPTOP', 'D', '0.00', 'JK', 'd', '0', '1', '2024-09-08 19:10:30'),
('2022080139', 11602, 4, 11600, 'PERSEDIAAN KOMPUTER', 'D', '0.00', 'JK', 'c', '0', '1', '2024-09-08 19:10:46'),
('2022080140', 11603, 4, 11600, 'PERSEDIAAN PRINTER', 'D', '0.00', 'JK', 'd', '0', '1', '2024-09-08 19:11:02'),
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
('20221208032333', 12503, 4, 12500, 'AKP. PERLENGKAPAN', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-29 08:10:00'),
('20221212034801', 11604, 4, 11600, 'PERSEDIAAN AKSESORIS', 'D', '0.00', 'JK', 'd', '0', '1', '2024-09-08 19:11:20'),
('20221212060252', 61203, 4, 61200, 'BELANJA PEMELIHARAAN', 'D', '0.00', 'JK', 'c', '0', '1', '2023-03-18 12:08:42'),
('20230201021743', 11110, 4, 11100, 'KAS', 'D', '0.00', 'JK', 'c', '0', '1', '2023-02-01 09:17:43'),
('20230201022303', 11210, 4, 11200, 'BANK BCA', 'D', '0.00', 'JK', 'c', '0', '1', '2024-09-08 19:09:06'),
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
('20230319035520', 61101, 4, 61100, 'BIAYA LISTRIK', 'D', '0.00', 'JK', 'c', '0', '1', '2023-03-19 11:55:20'),
('20230319035700', 61102, 4, 61100, 'BIAYA PDAM / AIR', 'D', '0.00', 'JK', 'c', '0', '1', '2023-03-19 11:57:00'),
('20230319040056', 61103, 4, 61100, 'BEBAN PENYUSUTAN ASET', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 12:00:56'),
('20230319123411', 32300, 3, 32000, 'LABA DI TAHAN', 'B', '0.00', 'JK', 'd', '0', '1', '2023-03-19 20:34:11'),
('20230319124033', 11401, 4, 11400, 'PERSEDIAAN DI BAYAR DIMUKA', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 20:40:33'),
('20230319124153', 11402, 4, 11400, 'PERSEDIAAN ATK', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 20:41:53'),
('20230319124245', 11403, 4, 11400, 'PERSEDIAAN MATERAI', 'D', '0.00', 'JK', '2', '0', '1', '2023-03-19 20:42:45'),
('20230408034512', 32400, 3, 32000, 'DEVIDEN', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-08 11:45:12'),
('20230408035308', 62100, 3, 62000, 'PAJAK BBM PPH 22', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-08 11:53:08'),
('20230420022623', 62300, 3, 62000, 'SPT PPH PASAL 23', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:26:23'),
('20230420022828', 61104, 4, 61100, 'BIAYA TELEPON KANTOR', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:28:28'),
('20230420022912', 61105, 4, 61100, 'BIAYA INTERNET INDIHOME', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:29:12'),
('20230420023002', 61106, 4, 61100, 'BIAYA HANDPHONE ORDER PESANAN', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:30:03'),
('20230420023027', 61107, 4, 61100, 'BIAYA HANDPHONE MANAGER', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:30:27'),
('20230420023105', 61108, 4, 61100, 'BIAYA HISWANA MIGAS', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:31:05'),
('20230420023259', 61109, 4, 61100, 'GAJI KARYAWAN + HONOR DIREKSI', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:32:59'),
('20230420023803', 62400, 3, 62000, 'PAJAK PASAL 21 GAJI KARYAWAN', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:38:03'),
('20230420023912', 61204, 4, 61200, 'SEWA PLTS PERTAMINA', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:39:12'),
('20230420024112', 62205, 4, 62200, 'BBM SOLAR GENSET/ P. RUMPUT / SAMPAH', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:41:12'),
('20230420024148', 62206, 4, 62200, 'TRANSPORT', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:41:48'),
('20230420024245', 62207, 4, 62200, 'SUMBANGAN POLSEK & POLRES / DEPO', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:42:45'),
('20230420024353', 62208, 4, 62200, 'SUMBANGAN BANJAR / KARANGAN BUNGA', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:43:53'),
('20230420024459', 61205, 4, 61200, 'TERA DISPENSER + TERA BEJANA METROLOGI', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:44:59'),
('20230420024538', 61110, 4, 61100, 'BIAYA BPJS KESEHATAN', 'D', '0.00', 'JK', 'd', '0', '1', '2023-04-20 10:45:38'),
('20230420024707', 62500, 3, 62000, 'SPT TAHUN 2023', 'B', '0.00', 'JK', '2', '0', '1', '2023-04-20 10:47:07'),
('20230427023608', 61111, 4, 61100, 'BIAYA JAMSOSTEK', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-27 10:36:08'),
('20230427023628', 61112, 4, 61100, 'BIAYA ADM BANK', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-27 10:36:28'),
('20230427024431', 61113, 4, 61100, 'KEKURANGAN BAYAR DO', 'D', '0.00', 'JK', '2', '0', '1', '2023-04-27 10:55:03');

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
(49, 'App\\Models\\User', 1, 'ApiToken', '578e8c0b2fb4014271a2f2353fb693433eede3952051ddf7f05324cba73085f9', '[\"*\"]', '2023-05-06 06:13:53', '2023-04-11 22:07:15', '2023-05-06 06:13:53'),
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
(77, 'App\\Models\\User', 1, 'ApiToken', '24a8b811956eaa88cf972a409c3151268dfbad6cac053eda921fc972ad6365cc', '[\"*\"]', '2023-04-24 05:01:50', '2023-04-14 14:39:21', '2023-04-24 05:01:50'),
(78, 'App\\Models\\User', 1, 'ApiToken', '8e1aecf57b4b3a4b234d11495f18e8d48481d068354c01ac598ca6954d7acd3a', '[\"*\"]', '2023-04-20 03:31:40', '2023-04-17 01:44:56', '2023-04-20 03:31:40'),
(79, 'App\\Models\\User', 1, 'ApiToken', '3d2a9d382a70048472b2829bd85bbdb765a12552ce713a14bf47b996c0ac46f0', '[\"*\"]', '2023-04-24 09:21:16', '2023-04-24 06:38:28', '2023-04-24 09:21:16'),
(80, 'App\\Models\\User', 1, 'ApiToken', 'f43f5363ec1ef85e015f82837b578e3e5cfd477c44035c7c0b7eee0b641f2576', '[\"*\"]', '2023-04-24 11:16:37', '2023-04-24 08:18:47', '2023-04-24 11:16:37'),
(81, 'App\\Models\\User', 1, 'ApiToken', '5877baabf464a0b34e6d4f479c19500565fed1cd8100af3a4f5fbe448b291131', '[\"*\"]', '2023-04-24 09:48:31', '2023-04-24 09:48:31', '2023-04-24 09:48:31'),
(82, 'App\\Models\\User', 1, 'ApiToken', '8caf788f68663042a8f8f18c0af68a53c88ed26ecbe9119b41f0d81eb5a51166', '[\"*\"]', '2023-04-24 10:37:15', '2023-04-24 10:37:06', '2023-04-24 10:37:15'),
(83, 'App\\Models\\User', 1, 'ApiToken', 'd315fced5bff2a6161b75d4ba7a3c0006fc3291b3a0b60a73468a6beb4806254', '[\"*\"]', '2023-04-25 01:00:34', '2023-04-24 15:43:19', '2023-04-25 01:00:34'),
(84, 'App\\Models\\User', 1, 'ApiToken', '54500086e7692fddbcfc4db2fd3a916999532a2aa4f59832a007122377dc6a52', '[\"*\"]', '2023-04-25 06:08:17', '2023-04-25 01:02:33', '2023-04-25 06:08:17'),
(85, 'App\\Models\\User', 1, 'ApiToken', 'b8ee69c566a11be69cace45cfd7f02230937a8a87d26eea02449ac98a9afb412', '[\"*\"]', '2023-04-25 08:28:32', '2023-04-25 07:40:40', '2023-04-25 08:28:32'),
(86, 'App\\Models\\User', 1, 'ApiToken', 'c4a3f6e0f8c5797a59f9da42657bda6b1358d6361bcdaa6d0c3e9d34b50498c2', '[\"*\"]', '2023-04-25 08:32:43', '2023-04-25 07:47:46', '2023-04-25 08:32:43'),
(87, 'App\\Models\\User', 1, 'ApiToken', 'd8ab5aaa76c8ab448aeab6795be25e2328602a24f2d60b11b275d99daa665362', '[\"*\"]', NULL, '2023-04-25 08:34:00', '2023-04-25 08:34:00'),
(88, 'App\\Models\\User', 1, 'ApiToken', '4f6b624bb7f5ae8a7be32d80636331a0861cd44858f7cd37dc5206a734cfcce2', '[\"*\"]', '2023-04-25 09:04:13', '2023-04-25 08:34:00', '2023-04-25 09:04:13'),
(89, 'App\\Models\\User', 1, 'ApiToken', 'a9028b5e5ce6e32b0e6606e57ed651fad7143c80f4c13caa7a58291e14ec8d5e', '[\"*\"]', '2023-04-27 03:57:39', '2023-04-27 03:47:48', '2023-04-27 03:57:39'),
(90, 'App\\Models\\User', 1, 'ApiToken', '491f09359e07a051b7015de641d461bc1e633c648cefdb6f500c9bd8533eb864', '[\"*\"]', '2023-04-28 03:58:51', '2023-04-28 03:48:47', '2023-04-28 03:58:51'),
(91, 'App\\Models\\User', 1, 'ApiToken', 'b68903798a1a9027f646e6b7919997090821b2fee1e32a65d3498a67b5d0f615', '[\"*\"]', '2023-04-28 03:55:39', '2023-04-28 03:54:14', '2023-04-28 03:55:39'),
(92, 'App\\Models\\User', 1, 'ApiToken', '1974a6cd28cc9bca3fe7f39edf983bed7f5b4e246d9e3ff97cbb42d1e3319e7f', '[\"*\"]', '2023-04-28 06:06:57', '2023-04-28 04:47:50', '2023-04-28 06:06:57'),
(93, 'App\\Models\\User', 1, 'ApiToken', 'a1eed07ae57138ce50fd3944a359ab41e7cf882ef681c79daa49522143039312', '[\"*\"]', '2023-04-28 05:41:23', '2023-04-28 05:39:59', '2023-04-28 05:41:23'),
(94, 'App\\Models\\User', 1, 'ApiToken', 'ba3132b2d57b229d4b941ba4f5e7bf106c34cdd6d0a036b3454f7511780cf824', '[\"*\"]', '2023-04-28 07:11:34', '2023-04-28 06:11:36', '2023-04-28 07:11:34'),
(95, 'App\\Models\\User', 1, 'ApiToken', '0c2b3c973ad20425ef9130696d275a83b5d088be60af89037aa472b7a8951d5d', '[\"*\"]', '2023-04-29 01:10:00', '2023-04-28 23:57:06', '2023-04-29 01:10:00'),
(96, 'App\\Models\\User', 1, 'ApiToken', '48df224755cba9f02dad1d3ea4c8344fb8211f9a24953717b9964f906e08086a', '[\"*\"]', '2023-04-29 08:57:41', '2023-04-29 08:21:53', '2023-04-29 08:57:41'),
(97, 'App\\Models\\User', 1, 'ApiToken', '3c4640f9f5a2638b66869c8af4c8e75e0591d84f2b56e5fb51a88e265a0c4500', '[\"*\"]', '2023-04-30 00:13:55', '2023-04-29 13:04:30', '2023-04-30 00:13:55'),
(98, 'App\\Models\\User', 1, 'ApiToken', '4ce7377aafa4f508923697c182a39edd08092aaff31edea4e293b520d86ca056', '[\"*\"]', NULL, '2023-04-29 14:23:22', '2023-04-29 14:23:22'),
(99, 'App\\Models\\User', 1, 'ApiToken', '922a86fad5631adb04d6c6470f42ef1f3cc555b5088c99a183fbe5f40cb5c9d8', '[\"*\"]', NULL, '2023-04-29 14:33:31', '2023-04-29 14:33:31'),
(100, 'App\\Models\\User', 1, 'ApiToken', 'f93c6082b961e379d1f3135190bc4e6051333ab598266856497465e706c4195e', '[\"*\"]', NULL, '2023-04-29 14:34:43', '2023-04-29 14:34:43'),
(101, 'App\\Models\\User', 1, 'ApiToken', '76a29375e156d9a333ee78c0e40ad1a6cc4fca060e2472f80369f26425f71ea6', '[\"*\"]', NULL, '2023-04-29 14:34:51', '2023-04-29 14:34:51'),
(102, 'App\\Models\\User', 1, 'ApiToken', 'e20a27a601abb7dfa2da0fc1a5d5286e63120daed2e18c5ac02b4fc03a4915a3', '[\"*\"]', NULL, '2023-04-29 14:35:40', '2023-04-29 14:35:40'),
(103, 'App\\Models\\User', 1, 'ApiToken', '502a52311eda5bcfc6efc0ded64cb4c5622f3fb7c5568011083733341f453dff', '[\"*\"]', NULL, '2023-04-29 14:36:36', '2023-04-29 14:36:36'),
(104, 'App\\Models\\User', 1, 'ApiToken', '1a2b5aed108ddbfa19f1f19e0760b29ed24ecbebc6ad2df4578b7bfbba2a4034', '[\"*\"]', NULL, '2023-04-29 14:37:16', '2023-04-29 14:37:16'),
(105, 'App\\Models\\User', 1, 'ApiToken', '4650b3259a0991d5cf0e5a57e93824710b3e8b8e13ebd25568bf8523b8f229fb', '[\"*\"]', '2023-04-29 15:56:44', '2023-04-29 14:50:25', '2023-04-29 15:56:44'),
(106, 'App\\Models\\User', 1, 'ApiToken', 'bf9bcf175b66bbf3037221b4af6d34768a22b11c79a8d41e485749a446da7b41', '[\"*\"]', NULL, '2023-04-29 14:55:26', '2023-04-29 14:55:26'),
(107, 'App\\Models\\User', 1, 'ApiToken', '572d388cca1002788939c795070dff3fb997832d580d9a99387ccc582b83238d', '[\"*\"]', '2023-04-30 02:36:02', '2023-04-30 02:35:53', '2023-04-30 02:36:02'),
(108, 'App\\Models\\User', 1, 'ApiToken', '3b423793b221f49a8452b36f06d6252f28b27f1eb1d960e87bdfdb36e65022e4', '[\"*\"]', '2023-04-30 06:01:20', '2023-04-30 05:57:03', '2023-04-30 06:01:20'),
(109, 'App\\Models\\User', 1, 'ApiToken', '756e457ba5fed246152d63508093970daa3bc3ccabe3857f652ca9773cf6b888', '[\"*\"]', '2023-04-30 06:02:28', '2023-04-30 06:02:19', '2023-04-30 06:02:28'),
(110, 'App\\Models\\User', 1, 'ApiToken', '34fa592a753e1c761da414b1e6d7c1b09d27168eff9eb2247956231967fb8744', '[\"*\"]', '2023-05-01 16:22:37', '2023-04-30 07:11:09', '2023-05-01 16:22:37'),
(111, 'App\\Models\\User', 1, 'ApiToken', '7cebb58e0af3538041a2e543a1fe438c74a5d350d436908a0c3cb0c7cb9b6050', '[\"*\"]', '2023-05-01 03:53:47', '2023-05-01 02:10:15', '2023-05-01 03:53:47'),
(112, 'App\\Models\\User', 1, 'ApiToken', '3c337f48c82798583050f2fd24a92716df91cc702d768517b7ea4300a3a0ea5e', '[\"*\"]', '2023-05-01 07:52:32', '2023-05-01 02:29:00', '2023-05-01 07:52:32'),
(113, 'App\\Models\\User', 1, 'ApiToken', '47a27528e23ec350fc8369b0e753e82f199263014952bc13d449ec70f8d22a2c', '[\"*\"]', '2023-05-01 03:43:38', '2023-05-01 03:40:49', '2023-05-01 03:43:38'),
(114, 'App\\Models\\User', 1, 'ApiToken', '2a96438287893dc50ece3ef49c9307e784bcceb755009d028f153a76fb63281b', '[\"*\"]', '2023-05-01 03:49:43', '2023-05-01 03:44:35', '2023-05-01 03:49:43'),
(115, 'App\\Models\\User', 1, 'ApiToken', 'd9f923b9e3b03baaec3f937a314e1758a9ab7e35a32f58150592aed160e84bc2', '[\"*\"]', '2023-05-01 04:01:10', '2023-05-01 03:50:21', '2023-05-01 04:01:10'),
(116, 'App\\Models\\User', 1, 'ApiToken', '198f4db981171c554878a97edb8a2a92ae3f7644b7c6a667858095ebf32b4b29', '[\"*\"]', '2023-05-01 07:59:08', '2023-05-01 07:53:57', '2023-05-01 07:59:08'),
(117, 'App\\Models\\User', 1, 'ApiToken', 'f433b175c58879c099557689147f8e8b4c28ea513a080d830adf8aeddd0b695c', '[\"*\"]', '2023-05-01 08:14:33', '2023-05-01 08:12:10', '2023-05-01 08:14:33'),
(118, 'App\\Models\\User', 1, 'ApiToken', 'c1132cffe251509c150398063e6b9cda499e096d21f7b86e72be2dcc53b529a0', '[\"*\"]', '2023-05-01 08:22:18', '2023-05-01 08:16:16', '2023-05-01 08:22:18'),
(119, 'App\\Models\\User', 1, 'ApiToken', '63ad68a5b03b91d83a8119ab2d641e243e430157f5b354c0296c6021b9624bc3', '[\"*\"]', '2023-05-01 14:08:52', '2023-05-01 13:41:03', '2023-05-01 14:08:52'),
(120, 'App\\Models\\User', 1, 'ApiToken', '21a3a5bbf4187d854291b52c7971d16419bc064dae04ae9deef55051c73a2aac', '[\"*\"]', '2023-05-01 15:47:04', '2023-05-01 14:11:30', '2023-05-01 15:47:04'),
(121, 'App\\Models\\User', 1, 'ApiToken', '575417342af74c896fc1a4476fc8f757f6e06dbfba51020c280b58e397e7657e', '[\"*\"]', '2023-05-01 17:38:05', '2023-05-01 16:18:34', '2023-05-01 17:38:05'),
(122, 'App\\Models\\User', 1, 'ApiToken', '51586c03c59079c4fca9706a9cd398ff0b942d5fcf47a36714fc71b5c2b9e4a4', '[\"*\"]', '2023-05-02 06:19:35', '2023-05-02 03:56:19', '2023-05-02 06:19:35'),
(123, 'App\\Models\\User', 1, 'ApiToken', '9e65368949d79cf38282271f212a31012638d1ba849d1f4335089678586d597d', '[\"*\"]', '2023-05-02 07:27:53', '2023-05-02 07:13:59', '2023-05-02 07:27:53'),
(124, 'App\\Models\\User', 1, 'ApiToken', 'b55c72f848feb907d3510e3b48673e7116074e10521eb4e5375c5c74316c18aa', '[\"*\"]', '2023-05-02 10:12:24', '2023-05-02 09:08:46', '2023-05-02 10:12:24'),
(125, 'App\\Models\\User', 1, 'ApiToken', '61b5a9f518c5f6f7a9dea7aa6e0f92e41bb4f2687f414f3d69d438223f919b8d', '[\"*\"]', '2023-05-02 11:39:19', '2023-05-02 11:33:06', '2023-05-02 11:39:19'),
(126, 'App\\Models\\User', 1, 'ApiToken', '542226164234dd4819e7edc43c9ba7545d0a47593b17ee856dc01a09b2eeab1e', '[\"*\"]', '2023-05-03 05:20:45', '2023-05-02 11:39:34', '2023-05-03 05:20:45'),
(127, 'App\\Models\\User', 1, 'ApiToken', '8a19ea012bf5ec5333e42193b83fc333720c97ec4e24e20c35ca04467b97d585', '[\"*\"]', '2023-05-02 14:33:38', '2023-05-02 11:56:24', '2023-05-02 14:33:38'),
(128, 'App\\Models\\User', 1, 'ApiToken', '4189b89424a0dab21b709c82690983146b0ce54d62a31eaa5d311aeb5ec02857', '[\"*\"]', '2023-05-02 15:32:06', '2023-05-02 14:45:55', '2023-05-02 15:32:06'),
(129, 'App\\Models\\User', 1, 'ApiToken', '9621619f8a127950cd52c314f1849e77f66150423f35e84006328d071e9d9df1', '[\"*\"]', '2023-05-02 23:41:34', '2023-05-02 23:41:03', '2023-05-02 23:41:34'),
(130, 'App\\Models\\User', 1, 'ApiToken', '1e6aed28652c960362b7757bfde56019911c2fd176f5f506a10b4a6f4d8240ef', '[\"*\"]', '2023-05-03 13:50:36', '2023-05-03 13:49:00', '2023-05-03 13:50:36'),
(131, 'App\\Models\\User', 1, 'ApiToken', '15d322d039803bbe05b7daecdeb314dc7b9961e4783f56bd9ca1fa2571c019e3', '[\"*\"]', '2023-05-03 15:26:15', '2023-05-03 13:53:07', '2023-05-03 15:26:15'),
(132, 'App\\Models\\User', 1, 'ApiToken', '6572222cb830f458be6720274e0b60dc3aae7badcf24052268e5261271e7c585', '[\"*\"]', NULL, '2023-05-03 16:06:26', '2023-05-03 16:06:26'),
(133, 'App\\Models\\User', 1, 'ApiToken', '0767ff8b902f50a5aacca9d6dc2f68e854c10d8dfc3d836be7c3c74209814080', '[\"*\"]', NULL, '2023-05-03 16:18:00', '2023-05-03 16:18:00'),
(134, 'App\\Models\\User', 1, 'ApiToken', 'b9851da030703d0392e7d6bddb2850a87749b9603a58bac0c3890ae9e83b991f', '[\"*\"]', NULL, '2023-05-03 16:18:17', '2023-05-03 16:18:17'),
(135, 'App\\Models\\User', 1, 'ApiToken', '2add0a8863fd077d1e2c7de462b792c1e2fbddd5f7dfe293c619fc737b9eff08', '[\"*\"]', NULL, '2023-05-03 16:27:46', '2023-05-03 16:27:46'),
(136, 'App\\Models\\User', 1, 'ApiToken', 'fe711d2ac1cce09b585436f2001a5b65978697b7327a618aee45aeb88a9cf496', '[\"*\"]', NULL, '2023-05-03 16:29:15', '2023-05-03 16:29:15'),
(137, 'App\\Models\\User', 1, 'ApiToken', '6baa32fb0f40996af2c46f35dddd24c234d1e04ec71285ecb0339786032d3467', '[\"*\"]', NULL, '2023-05-03 16:29:50', '2023-05-03 16:29:50'),
(138, 'App\\Models\\User', 1, 'ApiToken', 'bfbae4c822056f79bb2ecfa6aa2f851aaf8fae4b1593098af129cb1b97fa4dff', '[\"*\"]', NULL, '2023-05-03 16:33:17', '2023-05-03 16:33:17'),
(139, 'App\\Models\\User', 1, 'ApiToken', '85b2f0b0ec637b6ca0708f56a92fc408ec259122c27d0fcdcac21d12a66a0d23', '[\"*\"]', NULL, '2023-05-03 16:33:58', '2023-05-03 16:33:58'),
(140, 'App\\Models\\User', 1, 'ApiToken', '8047ed4d39dbdf96f9879b4706d7fcea0fa47f34cfa0b165e0a9b5cdd010d799', '[\"*\"]', NULL, '2023-05-03 16:34:20', '2023-05-03 16:34:20'),
(141, 'App\\Models\\User', 1, 'ApiToken', 'b21c36cabc18d078e51fbbe5bc6f769936f595f2b9f825bbd39fe06259036ddb', '[\"*\"]', NULL, '2023-05-03 16:34:24', '2023-05-03 16:34:24'),
(142, 'App\\Models\\User', 1, 'ApiToken', 'ef448a6852ccdf092e064e6e29a758a7e6c6efd25f0b29e3065e91532e9ba863', '[\"*\"]', NULL, '2023-05-03 16:34:33', '2023-05-03 16:34:33'),
(143, 'App\\Models\\User', 1, 'ApiToken', 'cff07a3545ad07125b61424adb55c6de7f6e14e8c89da29b09e9220d12e62f08', '[\"*\"]', NULL, '2023-05-03 16:34:34', '2023-05-03 16:34:34'),
(144, 'App\\Models\\User', 1, 'ApiToken', 'cd9d5d1e3f174064fc05baff2388ad65b684c4d6756a35f2216a5e4f1e34235f', '[\"*\"]', NULL, '2023-05-03 16:35:30', '2023-05-03 16:35:30'),
(145, 'App\\Models\\User', 1, 'ApiToken', '7c9db922f0079c43ff38a4e5fe0cfbdbf737f75fa3641690646f042d3daf46b5', '[\"*\"]', NULL, '2023-05-03 16:36:50', '2023-05-03 16:36:50'),
(146, 'App\\Models\\User', 1, 'ApiToken', '6e6c3a11c8250d67aeeb0ba3d316b5908d346ba9dd765c6ff645ff82f90b6960', '[\"*\"]', NULL, '2023-05-03 23:23:37', '2023-05-03 23:23:37'),
(147, 'App\\Models\\User', 1, 'ApiToken', '0fba7a1b0822037d010c023019f1046303245f31754f6ab15883fcc47519aeac', '[\"*\"]', NULL, '2023-05-03 23:27:10', '2023-05-03 23:27:10'),
(148, 'App\\Models\\User', 1, 'ApiToken', '141ecdf9cd3089074a21e1783079b046a2daadb0212a6d142a21a667ed65fbb4', '[\"*\"]', NULL, '2023-05-03 23:29:00', '2023-05-03 23:29:00'),
(149, 'App\\Models\\User', 1, 'ApiToken', '0b3c26077d97c8ec53cfbe4fc70c682369fc026fafd704ee627e68c806abe806', '[\"*\"]', NULL, '2023-05-03 23:32:25', '2023-05-03 23:32:25'),
(150, 'App\\Models\\User', 1, 'ApiToken', 'e2837bb4f70d9f7afa1a4ac83b93d38c8428039d251af99d3f93d07ac366517d', '[\"*\"]', NULL, '2023-05-03 23:32:25', '2023-05-03 23:32:25'),
(151, 'App\\Models\\User', 1, 'ApiToken', 'abc4637dcc7b649441c98fd9cbe35ec08d9e61314b8af286d7acce82b5356f4d', '[\"*\"]', NULL, '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(152, 'App\\Models\\User', 1, 'ApiToken', '06564840d47feee37e2f4c1d02eada4dddb3fe0e37bf65258db8abcded0c4123', '[\"*\"]', '2023-05-03 23:34:51', '2023-05-03 23:34:47', '2023-05-03 23:34:51'),
(153, 'App\\Models\\User', 1, 'ApiToken', '9cee5cf0877b7093ed10e5964177471eb2bfde0813c6123269dd2a1eec877b98', '[\"*\"]', '2023-05-03 23:45:47', '2023-05-03 23:45:18', '2023-05-03 23:45:47'),
(154, 'App\\Models\\User', 1, 'ApiToken', 'a1e61d74de65f8877da27971df7d746cac3f6a55d6b0a4a502b3a1aa713c5684', '[\"*\"]', '2023-05-04 01:05:29', '2023-05-03 23:46:08', '2023-05-04 01:05:29'),
(155, 'App\\Models\\User', 1, 'ApiToken', '5d931b0db26590f2c8ca9149b30e9392694b188bc556651d553c8d095734aebc', '[\"*\"]', '2023-05-04 03:02:27', '2023-05-04 03:02:23', '2023-05-04 03:02:27'),
(156, 'App\\Models\\User', 1, 'ApiToken', '56d232474bec7dcc71a2e6d949f6efeeddafa7b010809f6079f91801eb145581', '[\"*\"]', NULL, '2023-05-04 03:45:27', '2023-05-04 03:45:27'),
(157, 'App\\Models\\User', 1, 'ApiToken', '5218d497a407120c8b71cb4dee881a4c4ec224fcf87b953c33fb79187a0e467c', '[\"*\"]', NULL, '2023-05-04 03:45:47', '2023-05-04 03:45:47'),
(158, 'App\\Models\\User', 1, 'ApiToken', '00ae22df5d19ff17ed5f7bb812d9882570beb338dae81974d8bc0549e6e83843', '[\"*\"]', NULL, '2023-05-04 03:47:18', '2023-05-04 03:47:18'),
(159, 'App\\Models\\User', 1, 'ApiToken', '4a6406eccecc99f3cd5829eaba2a2cea37cec71ef085c87f196bc2de56fc257a', '[\"*\"]', NULL, '2023-05-04 03:49:15', '2023-05-04 03:49:15'),
(160, 'App\\Models\\User', 1, 'ApiToken', '4a6aaa3c8312a71c02be84b94362a92c3258a7ac42caa43dbf4b19ba5e63524f', '[\"*\"]', NULL, '2023-05-04 03:50:18', '2023-05-04 03:50:18'),
(161, 'App\\Models\\User', 1, 'ApiToken', '5b0d35307507166fdee6a71e00ae45785e3289d4608b0ab932df4042ffbcdf61', '[\"*\"]', NULL, '2023-05-04 03:51:30', '2023-05-04 03:51:30'),
(162, 'App\\Models\\User', 1, 'ApiToken', '36e802b8185b0363f2e150fdb51c5701ee90224b3bae9794468f7fc7294d0ef5', '[\"*\"]', NULL, '2023-05-04 03:51:44', '2023-05-04 03:51:44'),
(163, 'App\\Models\\User', 1, 'ApiToken', 'f5d8980e33c58e636487ca5ab2a5ace74918ffce54a27dfdf0bce20e6f629d6e', '[\"*\"]', NULL, '2023-05-04 03:53:54', '2023-05-04 03:53:54'),
(164, 'App\\Models\\User', 1, 'ApiToken', 'f8a8fbbe5a902c59606dd669560ada202a49b1ccc14187534c2ff159d5144d19', '[\"*\"]', NULL, '2023-05-04 03:54:34', '2023-05-04 03:54:34'),
(165, 'App\\Models\\User', 1, 'ApiToken', '0ae5debbfc3b45fa7f1646c10c37a686c12c8b98c439e0ac0b9b7fc55df348c3', '[\"*\"]', NULL, '2023-05-04 03:55:32', '2023-05-04 03:55:32'),
(166, 'App\\Models\\User', 1, 'ApiToken', '1298ea2ea89d1a7480063792a7b2c544648f83f8702f3a1f67b6cb061f9edffe', '[\"*\"]', NULL, '2023-05-04 03:56:35', '2023-05-04 03:56:35'),
(167, 'App\\Models\\User', 1, 'ApiToken', '9551f546e611188e2c8bd4eeffb20a059b9586785cc2e8c2e7da606f133f1b61', '[\"*\"]', '2023-05-04 03:57:23', '2023-05-04 03:57:21', '2023-05-04 03:57:23'),
(168, 'App\\Models\\User', 1, 'ApiToken', '0f160a2624b590ba038e396a704b6f95545eae59a29c159f40c338f1d7a279e8', '[\"*\"]', NULL, '2023-05-04 04:33:10', '2023-05-04 04:33:10'),
(169, 'App\\Models\\User', 1, 'ApiToken', '699a1607efaaf2bee4c323441bf8e4cfcf0d758afa2d99afee859852ae145a4a', '[\"*\"]', NULL, '2023-05-04 04:37:34', '2023-05-04 04:37:34'),
(170, 'App\\Models\\User', 1, 'ApiToken', 'fd19922ec4f6e3dbb0a5ad5dbdbbe4c2a1be01b1c9cb9925912185a894162e85', '[\"*\"]', NULL, '2023-05-04 04:38:35', '2023-05-04 04:38:35'),
(171, 'App\\Models\\User', 1, 'ApiToken', '95d661d8cdc79bfc5ecda35c774febcb639da64d75446cb531955ad7ccb324a7', '[\"*\"]', NULL, '2023-05-04 04:40:57', '2023-05-04 04:40:57'),
(172, 'App\\Models\\User', 1, 'ApiToken', '27ab5a933fb8adb5f98f1e8a18a8d323514dea5ab6e7134f594be70e3823f99b', '[\"*\"]', NULL, '2023-05-04 04:51:56', '2023-05-04 04:51:56'),
(173, 'App\\Models\\User', 1, 'ApiToken', '05cab0b9d62138731441de08abd495f12e1977475b817869407cd91ea504bd6c', '[\"*\"]', NULL, '2023-05-04 04:57:56', '2023-05-04 04:57:56'),
(174, 'App\\Models\\User', 1, 'ApiToken', 'e2396feae41fa2c9ef26f8f82f2785e5f331bea14d8a275242d2c1b3a6715592', '[\"*\"]', '2023-05-04 04:58:40', '2023-05-04 04:58:37', '2023-05-04 04:58:40'),
(175, 'App\\Models\\User', 1, 'ApiToken', 'aa9f4ff41c2438b426d9f97b21d9917cab1976cfc118c16983da5c741e3051a8', '[\"*\"]', '2023-05-04 05:05:38', '2023-05-04 04:59:29', '2023-05-04 05:05:38'),
(176, 'App\\Models\\User', 1, 'ApiToken', '55e4a989e36626f7d8f27a6bb4121f6abd6c2395dbe14f0c23c43d74c5c56b83', '[\"*\"]', '2023-05-04 05:07:09', '2023-05-04 05:06:34', '2023-05-04 05:07:09'),
(177, 'App\\Models\\User', 1, 'ApiToken', 'f0ab030bc0e9d3efebe5dad47e0239e29f3e997d026b7969be1d60f809c34864', '[\"*\"]', '2023-05-04 05:20:30', '2023-05-04 05:14:58', '2023-05-04 05:20:30'),
(178, 'App\\Models\\User', 1, 'ApiToken', 'd82c0fae79ba20a50ba900860f63bfef0185b9820e5a1cc4b69697d4f04da987', '[\"*\"]', NULL, '2023-05-04 05:25:50', '2023-05-04 05:25:50'),
(179, 'App\\Models\\User', 1, 'ApiToken', 'e77920dfaf7947144fbbed1c9bf5b8e520e9cb638f031fca5521b7de0b522eca', '[\"*\"]', NULL, '2023-05-04 05:27:03', '2023-05-04 05:27:03'),
(180, 'App\\Models\\User', 1, 'ApiToken', '0fcad0d1fb59bea257ab597fd495a47482cce0d380f5f97aa8785246e86794dc', '[\"*\"]', NULL, '2023-05-04 05:27:24', '2023-05-04 05:27:24'),
(181, 'App\\Models\\User', 1, 'ApiToken', '3c08bda9ba49105a32fd224d24c6f67ddf45a13298943ea73be3df7d15e47c14', '[\"*\"]', '2023-05-04 05:35:45', '2023-05-04 05:28:22', '2023-05-04 05:35:45'),
(182, 'App\\Models\\User', 1, 'ApiToken', '2d01a1d8684839e0c0e824ac23deda6ad4b95273d872a73d551004e911a4ce62', '[\"*\"]', '2023-05-04 08:51:36', '2023-05-04 08:51:18', '2023-05-04 08:51:36'),
(183, 'App\\Models\\User', 1, 'ApiToken', 'e93e7bfca3b3ee6f6649af9972f27d564527f355d70ae56bcb9594f787bb25ca', '[\"*\"]', '2023-05-04 09:04:35', '2023-05-04 08:52:09', '2023-05-04 09:04:35'),
(184, 'App\\Models\\User', 1, 'ApiToken', '3a7be7dacd34e40738af403396f046d46dedcf19c05fd643b09af6e346e63580', '[\"*\"]', '2023-05-04 09:08:21', '2023-05-04 09:08:10', '2023-05-04 09:08:21'),
(185, 'App\\Models\\User', 1, 'ApiToken', 'a3d1e9c9e4fc623e5d9287451f5980a17e141584d4fa5845177a417af33482a2', '[\"*\"]', NULL, '2023-05-04 09:16:23', '2023-05-04 09:16:23'),
(186, 'App\\Models\\User', 1, 'ApiToken', '99f4e73386750cacde2557cb0c14079c730054b54585c3d5ff7c4618f38819cf', '[\"*\"]', NULL, '2023-05-04 09:17:23', '2023-05-04 09:17:23'),
(187, 'App\\Models\\User', 1, 'ApiToken', '7cac875966629cbe82ce1a17e86c9cc3d65b308e43614b60d2d5a36c51a211b6', '[\"*\"]', NULL, '2023-05-04 09:18:54', '2023-05-04 09:18:54'),
(188, 'App\\Models\\User', 1, 'ApiToken', 'f6b209884e74042a090894fc252b6399f59ebb52fdc08a1ca2b9c493db931d53', '[\"*\"]', NULL, '2023-05-04 09:26:23', '2023-05-04 09:26:23'),
(189, 'App\\Models\\User', 1, 'ApiToken', '8c56b2d58f7dcc3ed6c425473d9475b6d515caaaec6fadadd97e922bb34e1081', '[\"*\"]', NULL, '2023-05-04 09:35:34', '2023-05-04 09:35:34'),
(190, 'App\\Models\\User', 1, 'ApiToken', '4975d36b9b4cc5e60d5871c54d31a01b38c64f9bedf9aeb4e43a9f07337de0e1', '[\"*\"]', NULL, '2023-05-04 09:36:03', '2023-05-04 09:36:03'),
(191, 'App\\Models\\User', 1, 'ApiToken', '7442345a633e2615961e593bb03b1ca2a980758fdac9eb0023688cad1e865209', '[\"*\"]', '2023-05-04 09:41:23', '2023-05-04 09:38:38', '2023-05-04 09:41:23'),
(192, 'App\\Models\\User', 1, 'ApiToken', '8f9344c1b00c729d07cc1c7fa4c9960303ea3987b16c9543c82a3bd9a0a2b1e8', '[\"*\"]', NULL, '2023-05-04 09:42:53', '2023-05-04 09:42:53'),
(193, 'App\\Models\\User', 1, 'ApiToken', '2cc414e00b27239bce1cc8798d0a59d8bcac94fb0b332975c44cca48e50625a7', '[\"*\"]', NULL, '2023-05-04 10:16:09', '2023-05-04 10:16:09'),
(194, 'App\\Models\\User', 1, 'ApiToken', '775c4187a88fa68fe9a642b610ca7ae4dfb21ecaf0e89303cd01195d8cfca78f', '[\"*\"]', NULL, '2023-05-04 10:29:51', '2023-05-04 10:29:51'),
(195, 'App\\Models\\User', 1, 'ApiToken', '6f39967417435b0013e00b9405ecb4d94e862db6f1aea81efc585931440334e4', '[\"*\"]', NULL, '2023-05-04 10:30:18', '2023-05-04 10:30:18'),
(196, 'App\\Models\\User', 1, 'ApiToken', '70cc224ed5f1b9165bf3329965ecf74bc854553022fde509cf8a59e162161b13', '[\"*\"]', NULL, '2023-05-04 10:35:05', '2023-05-04 10:35:05'),
(197, 'App\\Models\\User', 1, 'ApiToken', '74b6c30723e8a30f0ad6cb52f7e8edca1a0c39a26c698ae4d278d5a4a1416a39', '[\"*\"]', NULL, '2023-05-04 11:52:12', '2023-05-04 11:52:12'),
(198, 'App\\Models\\User', 1, 'ApiToken', 'c0067bc104a8c787cb8cc5966ef29ade7ef8ac0c76531c891d4e53bc4b38d876', '[\"*\"]', NULL, '2023-05-04 11:53:06', '2023-05-04 11:53:06'),
(199, 'App\\Models\\User', 1, 'ApiToken', 'f2015e712fd422aaab03d541369c67c0324cb8bb76f4287b8aca98672283ed6b', '[\"*\"]', NULL, '2023-05-04 11:53:56', '2023-05-04 11:53:56'),
(200, 'App\\Models\\User', 1, 'ApiToken', 'f9c8b10d1962306ae30152042c9db4527de7f4692c7f144abbd2f5848c9f58b3', '[\"*\"]', NULL, '2023-05-04 11:54:26', '2023-05-04 11:54:26'),
(201, 'App\\Models\\User', 1, 'ApiToken', 'f4f628b56d909a11a2b2995df8b62779bd42d35ccb16f90b2d59a8145c3e32e2', '[\"*\"]', '2023-05-04 15:45:10', '2023-05-04 14:43:14', '2023-05-04 15:45:10'),
(202, 'App\\Models\\User', 1, 'ApiToken', '26c14ba329128f44735d4eaff8992bb161d268788d062b80f93ab990c5186359', '[\"*\"]', NULL, '2023-05-04 15:37:52', '2023-05-04 15:37:52'),
(203, 'App\\Models\\User', 1, 'ApiToken', '73e86da1e5774283234c8983c13f998053cb655903279257601f618c37429b2d', '[\"*\"]', NULL, '2023-05-04 15:41:13', '2023-05-04 15:41:13'),
(204, 'App\\Models\\User', 1, 'ApiToken', 'bc1505eb42eb260c3043485121d9d29da9a9a8b5ae5c613dfa7356e32708a31c', '[\"*\"]', NULL, '2023-05-04 15:43:57', '2023-05-04 15:43:57'),
(205, 'App\\Models\\User', 1, 'ApiToken', 'e0d9d087b85948ee646b37ba75b720d61c1b69ee92d84a9a1b86dc2814a117ea', '[\"*\"]', NULL, '2023-05-04 15:47:03', '2023-05-04 15:47:03'),
(206, 'App\\Models\\User', 1, 'ApiToken', 'f0a60cbac7b74ddd014b0b1bff420124c9dd3c8248439d4236eaf6597c9dc3eb', '[\"*\"]', NULL, '2023-05-04 15:51:22', '2023-05-04 15:51:22'),
(207, 'App\\Models\\User', 1, 'ApiToken', '69ac31c8498acfd6556d5f753862b3fdc31f5c50ff2a0c02998a200cc21d8ba3', '[\"*\"]', '2023-05-05 01:19:16', '2023-05-05 00:38:36', '2023-05-05 01:19:16'),
(208, 'App\\Models\\User', 1, 'ApiToken', '02c2b25ddd397a453f39ec075832336d1b9701dedd0a8742d210cea7ec7716b0', '[\"*\"]', NULL, '2023-05-05 02:25:11', '2023-05-05 02:25:11'),
(209, 'App\\Models\\User', 1, 'ApiToken', 'eca658ba2255106181b817c3563aab70ee5ae51de4b57297467bf6c207bde2dc', '[\"*\"]', NULL, '2023-05-05 02:50:12', '2023-05-05 02:50:12'),
(210, 'App\\Models\\User', 1, 'ApiToken', '85026601d9fbb4a1e3b105bb2bef712bfeed3ff0c653da0b1f4033b41fcd9829', '[\"*\"]', NULL, '2023-05-05 14:03:12', '2023-05-05 14:03:12'),
(211, 'App\\Models\\User', 1, 'ApiToken', '9acdb6dbceac1c7c355c5f51c2946ad0c1f2334454e87209bf3dd0de758f88a6', '[\"*\"]', NULL, '2023-05-05 14:34:46', '2023-05-05 14:34:46'),
(212, 'App\\Models\\User', 1, 'ApiToken', 'bbda8c9672a75df2af99df139f8a937b3401aee960b9ea69adc572bc3ce55863', '[\"*\"]', NULL, '2023-05-05 15:00:56', '2023-05-05 15:00:56'),
(213, 'App\\Models\\User', 1, 'ApiToken', '67dedbb7b17eb9d5cd03235030c0fb1f3e55b2956916b373137c950dec370eaf', '[\"*\"]', NULL, '2023-05-05 15:21:18', '2023-05-05 15:21:18'),
(214, 'App\\Models\\User', 1, 'ApiToken', 'ca58e2588a361111f604d14f6a1f45e5eba355e07c3af98552a9957f58d95cf1', '[\"*\"]', NULL, '2023-05-05 15:21:34', '2023-05-05 15:21:34'),
(215, 'App\\Models\\User', 1, 'ApiToken', '5806536e4b08d29b4487f3151472a42501706409b18f0fb2705fafc83483412d', '[\"*\"]', NULL, '2023-05-06 00:24:19', '2023-05-06 00:24:19'),
(216, 'App\\Models\\User', 1, 'ApiToken', '3434b06451a24b8eb6ae2d62bfa15736c1e6b14e1915b21f454326b9b3b92604', '[\"*\"]', '2023-05-06 00:33:09', '2023-05-06 00:28:58', '2023-05-06 00:33:09'),
(217, 'App\\Models\\User', 1, 'ApiToken', '7f8d53bea68ef9bdad21362bd5e8a4d42bd441b70f9ca260554c00210fb58bdd', '[\"*\"]', '2023-05-06 00:34:05', '2023-05-06 00:34:02', '2023-05-06 00:34:05'),
(218, 'App\\Models\\User', 1, 'ApiToken', 'c94b3b88be95d7496c58e7d031cc203a8d84f4cd47546342ba200685a18ecc43', '[\"*\"]', '2023-05-06 00:34:42', '2023-05-06 00:34:40', '2023-05-06 00:34:42'),
(219, 'App\\Models\\User', 1, 'ApiToken', 'd7c0f6693b5397736442ff1e11a96e0234fed9999b5bc270c7f4cc5dd7b85455', '[\"*\"]', '2023-05-06 00:35:51', '2023-05-06 00:35:49', '2023-05-06 00:35:51'),
(220, 'App\\Models\\User', 1, 'ApiToken', '5e4c904ebdbaa01059624d34c1343144cc1e1b563ee372de4b0d5c55ecccd07e', '[\"*\"]', '2023-05-06 00:38:29', '2023-05-06 00:38:26', '2023-05-06 00:38:29'),
(221, 'App\\Models\\User', 1, 'ApiToken', '8e03d695cb27eb127bf7194653976287c6b766bc4a2cec5bd6c9cfc3bb01440a', '[\"*\"]', '2023-05-06 00:43:15', '2023-05-06 00:43:12', '2023-05-06 00:43:15'),
(222, 'App\\Models\\User', 1, 'ApiToken', '7e1997ab720221a54b79d0cdc44fe5d6f8e657b5954cf422571445ba20bc7c86', '[\"*\"]', '2023-05-06 00:44:32', '2023-05-06 00:44:30', '2023-05-06 00:44:32'),
(223, 'App\\Models\\User', 1, 'ApiToken', '7d68e515d05ba427faa5879fd51e10df8fbc03dd30378fea8d34c93ec16d3f1f', '[\"*\"]', NULL, '2023-05-06 00:48:34', '2023-05-06 00:48:34'),
(224, 'App\\Models\\User', 1, 'ApiToken', 'cb954df1735f07bb04072073f0cd79eb6a893c69bef5dd2d005e2646f54e4c73', '[\"*\"]', '2023-05-06 00:49:07', '2023-05-06 00:49:07', '2023-05-06 00:49:07'),
(225, 'App\\Models\\User', 1, 'ApiToken', '5b38d85d4a620f5c267f05909b613c141741ea6d1cd8051b2f516716d40936ea', '[\"*\"]', NULL, '2023-05-06 00:49:51', '2023-05-06 00:49:51'),
(226, 'App\\Models\\User', 1, 'ApiToken', 'f0d3ec98a08dcff69df584b14b0febf4beab91fc7af17c8238266bdf167f4f20', '[\"*\"]', NULL, '2023-05-06 00:53:02', '2023-05-06 00:53:02'),
(227, 'App\\Models\\User', 1, 'ApiToken', 'c52c0d6a562918a9ee709e5f12942af2c3a724be349537d277ecb27c5f610069', '[\"*\"]', '2023-05-06 00:54:37', '2023-05-06 00:54:35', '2023-05-06 00:54:37'),
(228, 'App\\Models\\User', 1, 'ApiToken', '97dc578ac2b2048af4f6424177ef493098a102bb7a49d77ed61f65c6bfdc0ab1', '[\"*\"]', NULL, '2023-05-06 00:55:35', '2023-05-06 00:55:35'),
(229, 'App\\Models\\User', 1, 'ApiToken', '4e1ec1878ea1030899277a4d71c8de599ce958546356a9d80c41be07bda45331', '[\"*\"]', '2023-05-06 00:57:24', '2023-05-06 00:56:46', '2023-05-06 00:57:24'),
(230, 'App\\Models\\User', 1, 'ApiToken', '1b137ae81fc81a5e4fc02831c3ece7e21917f236b704aeed62c7821680604b64', '[\"*\"]', '2023-05-06 00:59:30', '2023-05-06 00:58:08', '2023-05-06 00:59:30'),
(231, 'App\\Models\\User', 1, 'ApiToken', '77d0981ebf21da557c057793de3de9115ecfdcd71f7d8b0be7c304b433f6194e', '[\"*\"]', '2023-05-06 01:06:45', '2023-05-06 00:59:46', '2023-05-06 01:06:45'),
(232, 'App\\Models\\User', 1, 'ApiToken', '2f796551f0f0099a6297dad1cb8538d3c2999a8beea1a7526b128b43cd7d40db', '[\"*\"]', NULL, '2023-05-06 01:13:06', '2023-05-06 01:13:06'),
(233, 'App\\Models\\User', 1, 'ApiToken', '3c9d5396fe78066370da56b82a389e0b2ef1e6cd694737b4c3e729c5f2c9461e', '[\"*\"]', NULL, '2023-05-06 02:45:59', '2023-05-06 02:45:59'),
(234, 'App\\Models\\User', 1, 'ApiToken', 'e873b975253326367ee2ff8f1471b9c3e79a0121f9f1b7baa624480aeb994c1f', '[\"*\"]', '2023-05-06 03:08:14', '2023-05-06 03:03:24', '2023-05-06 03:08:14'),
(235, 'App\\Models\\User', 1, 'ApiToken', '471e95229e3846ce4ad7f17b68495ba097c7c2e112dd0f942184a2fea3551af2', '[\"*\"]', '2023-05-06 03:11:49', '2023-05-06 03:11:38', '2023-05-06 03:11:49'),
(236, 'App\\Models\\User', 1, 'ApiToken', '19f60630bd949b49ded1a571759c5a1d02e4fa94e1cb355ad1a546bfa1a66673', '[\"*\"]', '2023-05-06 03:13:18', '2023-05-06 03:13:08', '2023-05-06 03:13:18'),
(237, 'App\\Models\\User', 1, 'ApiToken', '908c1c96a81f8958efdbd01ff4fbedfc3cb059269044bddc52280ef884a5ef02', '[\"*\"]', NULL, '2023-05-06 03:16:02', '2023-05-06 03:16:02'),
(238, 'App\\Models\\User', 1, 'ApiToken', '05f87a068c386333b08709459275672e795aef3fd5b2b7c5096ea7304db87927', '[\"*\"]', NULL, '2023-05-06 03:16:33', '2023-05-06 03:16:33'),
(239, 'App\\Models\\User', 1, 'ApiToken', 'e0e8da0f53ad5f76d510941b09d9e78f71bc12b96466d1005d1bb70504c99e4e', '[\"*\"]', '2023-05-06 03:53:09', '2023-05-06 03:51:53', '2023-05-06 03:53:09'),
(240, 'App\\Models\\User', 1, 'ApiToken', 'f79e44a11d91b710bf2f9d2861c2f1ce489237987470b6e62b92e6c6af9fea10', '[\"*\"]', NULL, '2023-05-06 03:56:36', '2023-05-06 03:56:36'),
(241, 'App\\Models\\User', 1, 'ApiToken', 'aabd8fddae92abfa0dc3b5319fd530184b07a82cc76d4ab46b0bc12e379a0d83', '[\"*\"]', '2023-05-06 04:00:00', '2023-05-06 03:59:58', '2023-05-06 04:00:00'),
(242, 'App\\Models\\User', 1, 'ApiToken', 'f7fc8dc03fa3dcdbc0646633948e7748c9b16d7e0678b180c7c0108893a496a6', '[\"*\"]', '2023-05-06 04:01:23', '2023-05-06 04:00:31', '2023-05-06 04:01:23'),
(243, 'App\\Models\\User', 1, 'ApiToken', 'b013908fba6f05eba0a701f7dd78bba6f4907196211ed9deb4a64f3321db2707', '[\"*\"]', NULL, '2023-05-06 04:05:01', '2023-05-06 04:05:01'),
(244, 'App\\Models\\User', 1, 'ApiToken', 'faef33274a9cb595b34f6851af7e023c58c8c387d09cf17a0bbb1fbaa6a7258f', '[\"*\"]', NULL, '2023-05-06 04:10:46', '2023-05-06 04:10:46'),
(245, 'App\\Models\\User', 1, 'ApiToken', 'b893aa4b49eacc81660f9bd7e8d9074f2b84342e8bf6aae24ce8c56584e6789e', '[\"*\"]', '2023-05-06 04:26:22', '2023-05-06 04:11:24', '2023-05-06 04:26:22'),
(246, 'App\\Models\\User', 1, 'ApiToken', 'e31e306e406fb1879a6ca96aa92bdbd068191552b03e6f8792534a5fa22953dc', '[\"*\"]', '2023-05-06 04:38:18', '2023-05-06 04:38:13', '2023-05-06 04:38:18'),
(247, 'App\\Models\\User', 1, 'ApiToken', '21b7875882622b15112fd3630978b5361a6fd8db1a06eeb0796c0e8e3c6fe301', '[\"*\"]', '2023-05-06 04:54:24', '2023-05-06 04:40:29', '2023-05-06 04:54:24'),
(248, 'App\\Models\\User', 1, 'ApiToken', '9bd2d5633015d42617da38dafbe501637b4748536a4f0b9b9c8a58dae0174e0d', '[\"*\"]', NULL, '2023-05-06 05:10:09', '2023-05-06 05:10:09'),
(249, 'App\\Models\\User', 1, 'ApiToken', '66c89a2a8df690fd725fe6ca4abc9aee7ae80ba40699fcf302aaedef28aed2fe', '[\"*\"]', '2023-05-06 05:11:55', '2023-05-06 05:11:49', '2023-05-06 05:11:55'),
(250, 'App\\Models\\User', 1, 'ApiToken', 'b0767c727e6bf0e408db196a128e9254712d108162766c06169b13ac4eb4de0c', '[\"*\"]', '2023-05-06 05:13:19', '2023-05-06 05:13:15', '2023-05-06 05:13:19'),
(251, 'App\\Models\\User', 1, 'ApiToken', '9669509ccf0db9af2495f083e5aafaaca4587a55fa25332c7c650fa601c3eeba', '[\"*\"]', '2023-05-06 05:13:54', '2023-05-06 05:13:48', '2023-05-06 05:13:54'),
(252, 'App\\Models\\User', 1, 'ApiToken', '96d9a3202256767653ef9eff281ecab54494874409142f0de37aa182ce1d631f', '[\"*\"]', '2023-05-06 05:14:31', '2023-05-06 05:14:27', '2023-05-06 05:14:31'),
(253, 'App\\Models\\User', 1, 'ApiToken', '37cbe6701f2e3584e917ef355c1e16991d2159f0466521f5d4a298e690181d5a', '[\"*\"]', '2023-05-06 05:56:58', '2023-05-06 05:52:10', '2023-05-06 05:56:58'),
(254, 'App\\Models\\User', 1, 'ApiToken', '42476267a5e013dbc0275e4ff79a5ccc1e3a993d18f54bf6f754fc43aaa2c0a3', '[\"*\"]', NULL, '2023-05-06 06:07:37', '2023-05-06 06:07:37'),
(255, 'App\\Models\\User', 1, 'ApiToken', '575fb1920a0cc6d360ae8ef79daeab3a7e11d5baf2460940b72fb72ffa22c181', '[\"*\"]', NULL, '2023-05-06 06:08:35', '2023-05-06 06:08:35'),
(256, 'App\\Models\\User', 1, 'ApiToken', '685d87cb300e6caf23d1249ed8374afdc6f60df1ede2725070bdd1d957973163', '[\"*\"]', NULL, '2023-05-06 06:09:27', '2023-05-06 06:09:27'),
(257, 'App\\Models\\User', 1, 'ApiToken', '78a3761fad59f5e86ee6320eaeef02b8410e9400892248da950388d24acbbfc8', '[\"*\"]', NULL, '2023-05-06 06:10:16', '2023-05-06 06:10:16'),
(258, 'App\\Models\\User', 1, 'ApiToken', '1ad449056c50a22f786d431bb0be766fbac092c6464b84499c9e4d0a3a0cd83c', '[\"*\"]', NULL, '2023-05-06 06:11:20', '2023-05-06 06:11:20'),
(259, 'App\\Models\\User', 1, 'ApiToken', '0f9a752c9d50821dad679a148a54d1bdffc0a7643985580f05af5ffb09f709ab', '[\"*\"]', '2023-05-06 06:11:48', '2023-05-06 06:11:45', '2023-05-06 06:11:48'),
(260, 'App\\Models\\User', 1, 'ApiToken', '31cc3e0b65d4f6d2529abe04760bf5af05c25944a0b60b1ca8c67e0989ed3e92', '[\"*\"]', NULL, '2023-05-06 06:14:59', '2023-05-06 06:14:59'),
(261, 'App\\Models\\User', 1, 'ApiToken', 'fc9a60bb8fedb0d695adfa8876f108aa1fa6001f7858615510311bd465b225ee', '[\"*\"]', NULL, '2023-05-06 06:16:04', '2023-05-06 06:16:04'),
(262, 'App\\Models\\User', 1, 'ApiToken', '0435f276dc76fab7babb8ded05c2a09d9265a5d281fafff2ff5a67c34908665b', '[\"*\"]', '2023-05-06 06:18:18', '2023-05-06 06:16:49', '2023-05-06 06:18:18'),
(263, 'App\\Models\\User', 1, 'ApiToken', '235f0d8616ce0b37565989333c9d1dfa6f46b08167c25ef80c118a37e43142d1', '[\"*\"]', NULL, '2023-05-06 06:19:27', '2023-05-06 06:19:27'),
(264, 'App\\Models\\User', 1, 'ApiToken', 'f32064170d64d5601658f992f3f443cc86b61894fb4c7ac35672ddaea2e63c80', '[\"*\"]', '2023-05-06 06:22:23', '2023-05-06 06:20:13', '2023-05-06 06:22:23'),
(265, 'App\\Models\\User', 1, 'ApiToken', 'df70acdb8c2af4b832c89e9f2bbde49c472da54425ea83ccc903ae107091d86e', '[\"*\"]', '2023-05-06 06:23:42', '2023-05-06 06:23:13', '2023-05-06 06:23:42'),
(266, 'App\\Models\\User', 1, 'ApiToken', '4f34c707d925e364de786d7bc582a8cb13f01aa02ec6dda4fe19c86771b6bb93', '[\"*\"]', '2023-05-06 06:24:36', '2023-05-06 06:24:34', '2023-05-06 06:24:36'),
(267, 'App\\Models\\User', 1, 'ApiToken', 'f561a48de88798a64ab18cb4f1c75de4b534c246e3288e7fa5fc18a2caa6ad2e', '[\"*\"]', '2023-05-06 06:31:23', '2023-05-06 06:28:40', '2023-05-06 06:31:23'),
(268, 'App\\Models\\User', 1, 'ApiToken', '300daef80fb8b0ed6613fc127b0dfbe2183ebc206d38e50e978b2e2de3e8bb04', '[\"*\"]', '2023-05-06 06:37:42', '2023-05-06 06:32:32', '2023-05-06 06:37:42'),
(269, 'App\\Models\\User', 1, 'ApiToken', '8cef88b5517dd0d393fffa141b76aece172bedaa68c8ee9c17de7e7d2bfe33e1', '[\"*\"]', NULL, '2023-05-06 06:44:27', '2023-05-06 06:44:27'),
(270, 'App\\Models\\User', 1, 'ApiToken', '4668da51f9abb2a7b0f99938f4c184384e0a1577069d2a15717e4c38b2c85055', '[\"*\"]', NULL, '2023-05-06 06:45:35', '2023-05-06 06:45:35'),
(271, 'App\\Models\\User', 1, 'ApiToken', '10e1e745be3618c2356b5e9512d91f5562e4db68dde47b3a0b70b82b00b18f7a', '[\"*\"]', NULL, '2023-05-06 06:46:16', '2023-05-06 06:46:16'),
(272, 'App\\Models\\User', 1, 'ApiToken', '890b4bd02e6461d617982eb210b0ed7ee2e4659a7640f5022e4cf3bf69de3649', '[\"*\"]', NULL, '2023-05-06 06:51:31', '2023-05-06 06:51:31'),
(273, 'App\\Models\\User', 1, 'ApiToken', 'e1031ddb18b966dbc74584e06962742e589bb198f5128cc485e014d93db7ed54', '[\"*\"]', NULL, '2023-05-06 06:51:47', '2023-05-06 06:51:47'),
(274, 'App\\Models\\User', 1, 'ApiToken', '9bc0fedd46d63a0ae726a48e9b04ba5fbfa5d2fd573127e8c1d271bcbe9c5cf2', '[\"*\"]', NULL, '2023-05-06 06:52:36', '2023-05-06 06:52:36'),
(275, 'App\\Models\\User', 1, 'ApiToken', 'e5ba137f038aa41d64feb64b0248503cefde6a592bd0e97a3d3623ec9bd2afb5', '[\"*\"]', NULL, '2023-05-06 06:53:08', '2023-05-06 06:53:08'),
(276, 'App\\Models\\User', 1, 'ApiToken', '09837ba25ecd3e97a34c517f9e3c24e0c65604580fa2f2c234ba07cfd720ec6c', '[\"*\"]', NULL, '2023-05-06 06:54:24', '2023-05-06 06:54:24'),
(277, 'App\\Models\\User', 1, 'ApiToken', '086d50304ed3e0f0d8c3ca81dd918992c8086c76f2512a77a21da42814e94d4b', '[\"*\"]', NULL, '2023-05-06 10:16:23', '2023-05-06 10:16:23'),
(278, 'App\\Models\\User', 1, 'ApiToken', 'a6d263932615ace48127574d2c42b82a422cd9b29434e7eb6d225db9f9b48ed0', '[\"*\"]', '2023-05-06 10:22:10', '2023-05-06 10:19:55', '2023-05-06 10:22:10'),
(279, 'App\\Models\\User', 1, 'ApiToken', '2499681aff92c838f15f7d1c8a8908cbe9f97b3f7ca94fb86c1668a5d6146f77', '[\"*\"]', '2023-05-06 10:22:50', '2023-05-06 10:22:48', '2023-05-06 10:22:50');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(280, 'App\\Models\\User', 1, 'ApiToken', 'b7bf04aa1521d79bb94835bb676c6f3d0f7ecf14562db0f5f3c9dc4f26612602', '[\"*\"]', '2023-05-06 10:25:20', '2023-05-06 10:25:17', '2023-05-06 10:25:20'),
(281, 'App\\Models\\User', 1, 'ApiToken', 'c49a8b0e2f1667916405f7def5c44738eda9726fd93fcca72b9796d56046d631', '[\"*\"]', '2023-05-06 10:26:15', '2023-05-06 10:26:13', '2023-05-06 10:26:15'),
(282, 'App\\Models\\User', 1, 'ApiToken', '9c046ac3f13df23a4a6e11584a1a851c8c0bcc5ec1b06e12ac5623481d99963c', '[\"*\"]', NULL, '2023-05-06 10:29:36', '2023-05-06 10:29:36'),
(283, 'App\\Models\\User', 1, 'ApiToken', 'ecd5c2eca813c449e3b62d9cadff879368b536e6c5b070946dde2a27a28aa967', '[\"*\"]', NULL, '2023-05-06 10:30:02', '2023-05-06 10:30:02'),
(284, 'App\\Models\\User', 1, 'ApiToken', '7b27a608d83e92741df2b05a29edccb8a23b1c7bff37bb04d835ae1eef28a86a', '[\"*\"]', NULL, '2023-05-06 10:33:13', '2023-05-06 10:33:13'),
(285, 'App\\Models\\User', 1, 'ApiToken', '8eab8185a0b09932712a9e5bc4a9cb74d4e662f23b283f368e120f5eeae1f4f0', '[\"*\"]', NULL, '2023-05-06 10:33:43', '2023-05-06 10:33:43'),
(286, 'App\\Models\\User', 1, 'ApiToken', '03ead03a1ca63c3c9019b976ba03c9a3b6f45669fa64cff0a10020af925f9b81', '[\"*\"]', '2023-05-06 10:37:05', '2023-05-06 10:37:01', '2023-05-06 10:37:05'),
(287, 'App\\Models\\User', 1, 'ApiToken', '898e2ead67ce99d98c02701d43a3a6ceb24cfad30387566c3eb168756af79e47', '[\"*\"]', NULL, '2023-05-06 10:38:19', '2023-05-06 10:38:19'),
(288, 'App\\Models\\User', 1, 'ApiToken', '527eb8abf24a27717f447e3b9049d055093f43d023a767d5ca4a1f7e8f73d087', '[\"*\"]', NULL, '2023-05-06 10:59:21', '2023-05-06 10:59:21'),
(289, 'App\\Models\\User', 1, 'ApiToken', '0d51468eda480e6f90ff54aec1f13189218a4896a3079d20d90ab76915f9e387', '[\"*\"]', NULL, '2023-05-06 11:00:27', '2023-05-06 11:00:27'),
(290, 'App\\Models\\User', 1, 'ApiToken', '4d9b1e8b058e079ac4b714d39640940c4dac2b22f6f0467e72aca475e478f399', '[\"*\"]', '2023-05-06 11:09:15', '2023-05-06 11:01:15', '2023-05-06 11:09:15'),
(291, 'App\\Models\\User', 1, 'ApiToken', '6dd5d2ae5dddc6617885b6c5e9c38b3b8fc4c1fd09f09081366aa378edca01cc', '[\"*\"]', '2023-05-06 11:45:34', '2023-05-06 11:45:32', '2023-05-06 11:45:34'),
(292, 'App\\Models\\User', 1, 'ApiToken', 'f107766a6de8fdc4f4adf015a6ae51b184da2991721ef777f2af4614caf25f8b', '[\"*\"]', '2023-05-06 12:11:04', '2023-05-06 12:02:08', '2023-05-06 12:11:04'),
(293, 'App\\Models\\User', 1, 'ApiToken', 'fd3d4593f52523f52703c4d20542e2595d7af30f647aab20c54598159a9cf8ba', '[\"*\"]', '2023-05-06 12:20:23', '2023-05-06 12:11:35', '2023-05-06 12:20:23'),
(294, 'App\\Models\\User', 1, 'ApiToken', 'cf9c2728c8a83ba6662217a38797fbd500cfe6ace9332d241e5617f2e56a52f7', '[\"*\"]', '2023-05-06 12:20:50', '2023-05-06 12:20:46', '2023-05-06 12:20:50'),
(295, 'App\\Models\\User', 1, 'ApiToken', '8c7247063a37607fbcc417e3de3f0045134715767af4be6ecba90f5c4d0b2344', '[\"*\"]', '2023-05-06 12:21:04', '2023-05-06 12:20:56', '2023-05-06 12:21:04'),
(296, 'App\\Models\\User', 1, 'ApiToken', 'c66e8f997c25efa6c14fc11da9e0283d8f4511cfe1aeac5bd53e992449c32220', '[\"*\"]', NULL, '2023-05-06 12:21:12', '2023-05-06 12:21:12'),
(297, 'App\\Models\\User', 1, 'ApiToken', '81bdbf5884b9e363aad31b5b0499d38e090767fdb6a57efa3a21b680d883f629', '[\"*\"]', '2023-05-07 11:43:13', '2023-05-06 12:38:00', '2023-05-07 11:43:13'),
(298, 'App\\Models\\User', 1, 'ApiToken', '05faa8f3ea725e232729edbbc9f8105879899a7796de9b3948e8d9c4028a917a', '[\"*\"]', NULL, '2023-05-07 01:08:49', '2023-05-07 01:08:49'),
(299, 'App\\Models\\User', 1, 'ApiToken', '2a9d45e09d41f6546eacf3757fad422beb70f741927956313eac5b0eb2e70fdf', '[\"*\"]', NULL, '2023-05-07 01:25:35', '2023-05-07 01:25:35'),
(300, 'App\\Models\\User', 1, 'ApiToken', '1ca1e7dc9cdc4026c9d33606b90076f22fbc39980ed1f6fe43a0ff64617c6d22', '[\"*\"]', NULL, '2023-05-07 01:26:52', '2023-05-07 01:26:52'),
(301, 'App\\Models\\User', 1, 'ApiToken', '2880054d320c89f46fa66c26cf689b5c9be796c4b7167d8ce0f7acfb4b17ae2a', '[\"*\"]', '2023-05-08 23:26:12', '2023-05-07 23:29:23', '2023-05-08 23:26:12'),
(302, 'App\\Models\\User', 1, 'ApiToken', '762819cfba3172f69df89b79bc0be6f1f5cde04a25a122044052c2a6e84f10e6', '[\"*\"]', NULL, '2023-05-08 03:23:24', '2023-05-08 03:23:24'),
(303, 'App\\Models\\User', 1, 'ApiToken', 'f83eaca0a6eb018470ed3cfc7c300e1305985fd0540e1dcce746ad807958d1c9', '[\"*\"]', NULL, '2023-05-08 03:23:40', '2023-05-08 03:23:40'),
(304, 'App\\Models\\User', 1, 'ApiToken', '3c43beb5599333b2a00ddd8c2cb3ccb4005024acaa3a0c7471c8618b73130fcf', '[\"*\"]', '2023-05-09 13:53:35', '2023-05-09 13:52:45', '2023-05-09 13:53:35'),
(305, 'App\\Models\\User', 1, 'ApiToken', '7ebdc9ac84b4cf32d95d214d82c441563e5a6c3d8f907f9dd287324e85025081', '[\"*\"]', '2023-05-10 06:15:15', '2023-05-10 00:56:21', '2023-05-10 06:15:15'),
(306, 'App\\Models\\User', 1, 'ApiToken', '7ab2912f3ce00260bd02776c5a5b0e1eb57ce4fc272816c2d91d7f7f1f021286', '[\"*\"]', '2023-05-10 03:37:47', '2023-05-10 03:11:11', '2023-05-10 03:37:47'),
(307, 'App\\Models\\User', 1, 'ApiToken', '3632eec8f340698193d7fb9f51b0f5fdf86cdcab9a819b61c50788df52951351', '[\"*\"]', '2023-05-10 05:39:19', '2023-05-10 05:38:57', '2023-05-10 05:39:19'),
(308, 'App\\Models\\User', 1, 'ApiToken', '86067090bf4d7510d0d8fa2dacc7e05663eb9d6d744071ee801a6f8751f2d327', '[\"*\"]', NULL, '2023-05-11 02:43:38', '2023-05-11 02:43:38'),
(309, 'App\\Models\\User', 1, 'ApiToken', '6c9b03a1d0fa4394e95742e891555245574c6a62de29f6a4048ba791357a8697', '[\"*\"]', '2023-05-14 14:01:10', '2023-05-14 13:56:59', '2023-05-14 14:01:10'),
(310, 'App\\Models\\User', 1, 'ApiToken', 'dbd0072f9a1ed248f640a82372d532ff6294d70430e9e77000204f456a0d9718', '[\"*\"]', '2023-05-14 14:54:58', '2023-05-14 14:07:02', '2023-05-14 14:54:58'),
(311, 'App\\Models\\User', 1, 'ApiToken', '074a32cfc0758568ad2755a76743c007255b3ea57625f7d6272d11969b2e50c2', '[\"*\"]', NULL, '2023-05-14 14:55:52', '2023-05-14 14:55:52'),
(312, 'App\\Models\\User', 1, 'ApiToken', 'a5bab99857bd91403078f8db379292bc5d2f85cafb6077467fabd3d40f9abd42', '[\"*\"]', '2023-05-14 14:58:43', '2023-05-14 14:55:52', '2023-05-14 14:58:43'),
(313, 'App\\Models\\User', 1, 'ApiToken', '2f6594535ea0959ed3dcf5f0750c6af3099b84f66160c9b42272b7ed6527baf6', '[\"*\"]', '2023-05-15 15:20:31', '2023-05-15 14:09:39', '2023-05-15 15:20:31'),
(314, 'App\\Models\\User', 1, 'ApiToken', 'ffa19318cf803800c0c6aa575932643faa6abe04e2f570415c6a2b4d6b9e7850', '[\"*\"]', '2023-05-16 08:17:37', '2023-05-16 08:12:09', '2023-05-16 08:17:37'),
(315, 'App\\Models\\User', 1, 'ApiToken', '7f22bd081035530feaca6d26f983d05d1e4894195c70eabf8d62f4708c7c8b90', '[\"*\"]', '2023-05-16 14:46:19', '2023-05-16 14:40:53', '2023-05-16 14:46:19'),
(316, 'App\\Models\\User', 1, 'ApiToken', '0b89991a883ad9ea5272bdbc9f38042c3050ff2dbbddd53227daa19ac4e2d348', '[\"*\"]', '2023-05-16 14:47:26', '2023-05-16 14:47:25', '2023-05-16 14:47:26'),
(317, 'App\\Models\\User', 1, 'ApiToken', 'c6cc9a6e28dd34f78013bac807c4d7d32a67ddb422efc759a6dc6e5562f0baf5', '[\"*\"]', '2023-05-18 01:05:13', '2023-05-17 23:31:15', '2023-05-18 01:05:13'),
(318, 'App\\Models\\User', 1, 'ApiToken', 'c472f6d3e7b8d79cef48e8450822a7dda769646d76f147c27810e056c2a13162', '[\"*\"]', '2023-05-18 15:00:16', '2023-05-18 14:49:42', '2023-05-18 15:00:16'),
(319, 'App\\Models\\User', 1, 'ApiToken', '7029adccaa7b66daaa8b54a22eb3072cd8de0872235cf12fded72c3ddee0cc70', '[\"*\"]', '2023-05-19 23:26:01', '2023-05-19 11:01:27', '2023-05-19 23:26:01'),
(320, 'App\\Models\\User', 1, 'ApiToken', 'f87475989d580c46ee76ecccac7f9d8fd3f3d287885a36db1854616b17f969df', '[\"*\"]', '2023-05-21 01:47:54', '2023-05-21 01:28:27', '2023-05-21 01:47:54'),
(321, 'App\\Models\\User', 1, 'ApiToken', 'cff527872d04b25003465be41c9170ff14e2f304ee81054bc0d08c16fb7fe8de', '[\"*\"]', '2023-05-21 02:01:37', '2023-05-21 02:01:26', '2023-05-21 02:01:37'),
(322, 'App\\Models\\User', 1, 'ApiToken', 'fe86020f93d86c04c6e8ddf3ecec4631256b7fc8560a2009db598b4ce985def1', '[\"*\"]', '2023-05-30 08:34:42', '2023-05-22 06:30:20', '2023-05-30 08:34:42'),
(323, 'App\\Models\\User', 1, 'ApiToken', 'ee1745052c757a21ae7eb6c2b6dc48f571ce67a08fbd151fdba162087f0bfaf1', '[\"*\"]', '2023-05-30 00:50:50', '2023-05-29 23:32:59', '2023-05-30 00:50:50'),
(324, 'App\\Models\\User', 1, 'ApiToken', '73e18851823abc13b6fcb7a50f426d8b947080e2c0ebd23914bf60c03ef5c9ef', '[\"*\"]', '2023-05-30 22:50:08', '2023-05-30 10:39:06', '2023-05-30 22:50:08'),
(325, 'App\\Models\\User', 1, 'ApiToken', 'eb0942ef94f901fc4219998e52a4dd53761c967a96057b3e6951a6e6cd340737', '[\"*\"]', '2023-05-30 23:56:41', '2023-05-30 23:55:22', '2023-05-30 23:56:41'),
(326, 'App\\Models\\User', 1, 'ApiToken', '9e6134b8b44a93cd073b0e3f500b0426dd827433c385dd9a356e3beea2f9cd69', '[\"*\"]', '2023-05-31 04:37:16', '2023-05-31 04:33:33', '2023-05-31 04:37:16'),
(327, 'App\\Models\\User', 1, 'ApiToken', 'b6819a137ccbc5982fde5ccc5262150b3bea8b9b658a8bb97e090cdad01c7dc6', '[\"*\"]', '2023-06-01 12:06:49', '2023-05-31 12:22:23', '2023-06-01 12:06:49'),
(328, 'App\\Models\\User', 1, 'ApiToken', 'bdf4120d819947aea2f4e472c51f9e605cda4fc85eb37c95081f5299232e2a02', '[\"*\"]', '2023-06-08 00:45:33', '2023-06-07 12:00:24', '2023-06-08 00:45:33'),
(329, 'App\\Models\\User', 1, 'ApiToken', 'acc603066fd89f53de168041473aaa51e82ab19c62c6f3c1a5ac3f6894e6ff6d', '[\"*\"]', '2023-06-12 22:58:45', '2023-06-12 22:58:32', '2023-06-12 22:58:45'),
(330, 'App\\Models\\User', 1, 'ApiToken', '4d8f90928720b80e344eb274d3752a93ce2b192519a9eb6b1fdd203bfd3689fa', '[\"*\"]', '2023-06-18 04:14:00', '2023-06-18 04:11:31', '2023-06-18 04:14:00'),
(331, 'App\\Models\\User', 1, 'ApiToken', '73e51eceef6e98761688bae22da83975270334b31a801806cc28e010ed901377', '[\"*\"]', '2023-06-23 03:56:16', '2023-06-23 03:50:58', '2023-06-23 03:56:16'),
(332, 'App\\Models\\User', 1, 'ApiToken', 'e6ee0daac1d3027fea68a63c679446be841a484132b72b0256090bb68b3c3a5b', '[\"*\"]', '2023-06-23 12:15:25', '2023-06-23 12:14:30', '2023-06-23 12:15:25'),
(333, 'App\\Models\\User', 1, 'ApiToken', '2af832c2a93be4e541dc1014a217fcc9cb79373eaddc1823ce8c77fe1f9f9da8', '[\"*\"]', NULL, '2023-06-24 13:53:01', '2023-06-24 13:53:01'),
(334, 'App\\Models\\User', 1, 'ApiToken', 'ce9b453c1b421fc4716db0e8d2e09754c85067891e298ae7ed5b9b915bba1f1c', '[\"*\"]', '2023-06-24 14:35:59', '2023-06-24 13:53:20', '2023-06-24 14:35:59'),
(335, 'App\\Models\\User', 1, 'ApiToken', '8437191b322a0cad5326f10271a904b9432b3db3a7ea0f1e0b2e8c4436ce5611', '[\"*\"]', '2023-06-24 15:18:26', '2023-06-24 15:00:00', '2023-06-24 15:18:26'),
(336, 'App\\Models\\User', 1, 'ApiToken', '47d0e86355aed6ae61f06b49dd10ba3031cd32210c8fd8266f0f1c711bb30691', '[\"*\"]', '2023-06-24 17:48:37', '2023-06-24 16:35:26', '2023-06-24 17:48:37'),
(337, 'App\\Models\\User', 1, 'ApiToken', 'ddf76045ba3a9abc124fe43f64224a02581ee136e16cf08d3009232c2c5cfc5d', '[\"*\"]', '2023-07-19 14:04:55', '2023-06-26 00:31:29', '2023-07-19 14:04:55'),
(338, 'App\\Models\\User', 1, 'ApiToken', 'f470638f01fa50c01670808fab1e51c53cd31597cdbba0beef69ed11fe88d1c0', '[\"*\"]', '2023-06-28 14:16:20', '2023-06-28 14:07:51', '2023-06-28 14:16:20'),
(339, 'App\\Models\\User', 1, 'ApiToken', '4be5ee07cf2c8d930cab3be34d7309bfbba4b64cde55249dedd2c694700829e7', '[\"*\"]', '2023-07-03 13:40:03', '2023-06-30 10:00:08', '2023-07-03 13:40:03'),
(340, 'App\\Models\\User', 1, 'ApiToken', 'bd36bcdbc01c572d768dcbdbfa10c6caff007973a0f2c400f745a110c4da7f1d', '[\"*\"]', '2023-07-02 10:58:34', '2023-07-02 10:02:34', '2023-07-02 10:58:34'),
(341, 'App\\Models\\User', 1, 'ApiToken', 'a020722e513bf61ab6d8e638ce118f0c098fe19f6ab433c16b6af65831af6ebc', '[\"*\"]', '2023-07-18 02:20:28', '2023-07-18 02:19:13', '2023-07-18 02:20:28'),
(342, 'App\\Models\\User', 1, 'ApiToken', '623fd3ab35a86f537ac3eb656000f5abf1801fed6f69accad924bda0e38dbd47', '[\"*\"]', '2023-07-25 00:34:06', '2023-07-21 13:16:53', '2023-07-25 00:34:06'),
(343, 'App\\Models\\User', 1, 'ApiToken', '4aaf023240dcd3dfacb5ff8a652cf2ca0551e7e01586ea643caf9ac392488d2b', '[\"*\"]', '2023-08-05 12:12:39', '2023-08-05 12:10:36', '2023-08-05 12:12:39'),
(344, 'App\\Models\\User', 1, 'ApiToken', 'dfd7cd03cddcd57d1b9dccb1de68a72949daadda20b05b44f852ba1780b3d8c5', '[\"*\"]', '2023-08-09 14:17:57', '2023-08-09 14:16:26', '2023-08-09 14:17:57'),
(345, 'App\\Models\\User', 1, 'ApiToken', 'ee3f5690c8e0d27f5659a921299d1ed12f34d9c956568299e089ee305a21347e', '[\"*\"]', '2023-08-17 13:46:46', '2023-08-17 13:36:42', '2023-08-17 13:46:46'),
(346, 'App\\Models\\User', 1, 'ApiToken', '16d4fdd863cb17aad44869d0c36cf0451e31cfe9155a939b40ace085b4f8ede7', '[\"*\"]', '2023-08-18 14:23:35', '2023-08-18 14:23:20', '2023-08-18 14:23:35'),
(347, 'App\\Models\\User', 1, 'ApiToken', 'f4f6c39c2b7a23932cb9e6ab5e3ea82605660d6e25d0cdb45812366db97077a9', '[\"*\"]', '2023-08-19 12:09:56', '2023-08-19 01:24:46', '2023-08-19 12:09:56'),
(348, 'App\\Models\\User', 1, 'ApiToken', 'd161e717943edcbe1f3c74edc8963adb879e01ef76755a1b54aa563b2524169d', '[\"*\"]', '2023-08-21 10:40:11', '2023-08-21 10:39:10', '2023-08-21 10:40:11'),
(349, 'App\\Models\\User', 1, 'ApiToken', '1ccab6cd99aa073f031177f241cae5f284b06de5a4110144b9f15fe084b80458', '[\"*\"]', '2023-09-11 14:23:48', '2023-08-27 01:34:18', '2023-09-11 14:23:48'),
(350, 'App\\Models\\User', 1, 'ApiToken', '9d9d580cba0bc82bbdd6355e3a39ace08f09c21bad5144179d008cbab63b050c', '[\"*\"]', '2023-08-27 02:25:19', '2023-08-27 02:25:10', '2023-08-27 02:25:19'),
(351, 'App\\Models\\User', 1, 'ApiToken', 'ac7d5885182a8e50566a79a0f50e1a45ec6ec99b8f0257533a53baab5e6da665', '[\"*\"]', '2023-08-29 01:18:33', '2023-08-29 01:18:17', '2023-08-29 01:18:33'),
(352, 'App\\Models\\User', 1, 'ApiToken', '8acc3be0fe6e25f1e58ee0bb4006a3e990113fe2423ed25b5e9b660ca84f6b30', '[\"*\"]', NULL, '2023-09-08 02:57:40', '2023-09-08 02:57:40'),
(353, 'App\\Models\\User', 1, 'ApiToken', '7183e74f8255d7460dfe30ebdcd7ebd48d9c224524cbddbd5698bf9e437fd062', '[\"*\"]', NULL, '2023-09-08 02:57:43', '2023-09-08 02:57:43'),
(354, 'App\\Models\\User', 1, 'ApiToken', 'ad6761655a233c1d074ba3ebefb109144fbf638e00a16b2196a63d82ebc655d9', '[\"*\"]', NULL, '2023-09-08 02:57:51', '2023-09-08 02:57:51'),
(355, 'App\\Models\\User', 1, 'ApiToken', 'c064b101f2d114288a2975a25d4b98347d08f918d626613512e5a0e726e7bae1', '[\"*\"]', '2023-09-08 02:58:52', '2023-09-08 02:58:51', '2023-09-08 02:58:52'),
(356, 'App\\Models\\User', 1, 'ApiToken', '48f90f29d17d21a87f5e102f280012c68b934b47d516cb45ae40617a9f70da19', '[\"*\"]', '2023-09-14 13:42:46', '2023-09-13 11:01:00', '2023-09-14 13:42:46'),
(357, 'App\\Models\\User', 1, 'ApiToken', '7621013bb94fa27869ccc9b5f24b986eb173e0465380735a54768deab46b83f5', '[\"*\"]', '2023-09-18 10:49:18', '2023-09-15 01:05:05', '2023-09-18 10:49:18'),
(358, 'App\\Models\\User', 1, 'ApiToken', '191a310c37f70c68375ee6ac1548a80ec87a68bdc65876c15754980beb03c21c', '[\"*\"]', '2023-09-15 03:25:52', '2023-09-15 03:11:31', '2023-09-15 03:25:52'),
(359, 'App\\Models\\User', 1, 'ApiToken', '8b2b56950353e6bf4eb4529a14bdd3f32176db7cb6b3e0ab3bbad751c2137db7', '[\"*\"]', '2023-09-21 07:56:08', '2023-09-21 07:54:46', '2023-09-21 07:56:08'),
(360, 'App\\Models\\User', 1, 'ApiToken', 'b84d9d21c847e7ffe228fd42d60769a296f03d9e3a0833baee7fcf4a9d4b235a', '[\"*\"]', '2023-09-24 08:46:50', '2023-09-23 12:59:10', '2023-09-24 08:46:50'),
(361, 'App\\Models\\User', 1, 'ApiToken', '97b0c37cdf26d3823669e2abe2d60e21066b0ee7d60fe0a9a4ccdfc333c6e416', '[\"*\"]', '2023-10-15 23:10:58', '2023-10-15 23:05:17', '2023-10-15 23:10:58'),
(362, 'App\\Models\\User', 1, 'ApiToken', '1950a1f9167e18756dfdb2f0f666057378f6f514bdc1ec59189ae752814bb88e', '[\"*\"]', '2024-01-18 03:10:00', '2024-01-18 03:09:12', '2024-01-18 03:10:00'),
(363, 'App\\Models\\User', 1, 'ApiToken', '68735b6e141c3ce6ead157db31a6db1f3a3e7fcff9bcf9db6c612585122dee98', '[\"*\"]', '2024-09-08 07:57:36', '2024-09-07 01:04:11', '2024-09-08 07:57:36'),
(364, 'App\\Models\\User', 1, 'ApiToken', '80409fa6880f9b20006dc3502957ff483e65084469419e0073952734e86d2878', '[\"*\"]', '2024-09-09 06:38:15', '2024-09-08 07:57:51', '2024-09-09 06:38:15'),
(365, 'App\\Models\\User', 1, 'ApiToken', '3999fb858d3ccb0b184e6033662f131cc54b5825a52bd3e7a2caad26e7c1af94', '[\"*\"]', NULL, '2024-09-09 05:57:57', '2024-09-09 05:57:57'),
(366, 'App\\Models\\User', 1, 'ApiToken', '1e09498b021431e40925714832478097698888d1d71b6f6778bbb37306fb71dd', '[\"*\"]', '2024-09-09 23:35:43', '2024-09-09 06:27:38', '2024-09-09 23:35:43'),
(367, 'App\\Models\\User', 1, 'ApiToken', 'e5d9067cdf960078d371142b3965c0d75f945c242992c6253da49023d2e5c32b', '[\"*\"]', '2025-01-07 23:56:21', '2025-01-07 10:07:42', '2025-01-07 23:56:21'),
(368, 'App\\Models\\User', 1, 'ApiToken', 'b1a2a23e6f39844ea84af774ede0d200a767a999bfa7a619bc692c8b2242c3a5', '[\"*\"]', '2025-01-21 00:14:13', '2025-01-20 23:01:16', '2025-01-21 00:14:13'),
(369, 'App\\Models\\User', 1, 'ApiToken', 'db24e986d208f90328e71f5a35daf0f552c684b059e219522c3618863661accc', '[\"*\"]', '2025-03-22 04:06:03', '2025-03-21 01:33:51', '2025-03-22 04:06:03'),
(370, 'App\\Models\\User', 1, 'ApiToken', '40ff5db22ec0c5e0f38b5874d04d167a2db16d652fa19bb4407e6452602da7ad', '[\"*\"]', '2025-03-24 06:04:41', '2025-03-22 04:06:42', '2025-03-24 06:04:41'),
(371, 'App\\Models\\User', 1, 'ApiToken', '740aeb2fffc7c7830b85dca40d4d4bb6e2ca608c286725a7b86fcc0cda0f0125', '[\"*\"]', '2025-03-24 23:01:18', '2025-03-22 05:35:52', '2025-03-24 23:01:18'),
(372, 'App\\Models\\User', 1, 'ApiToken', 'd25ab0784f7ad24a6c1795a16954374f671b84f973fce147d2d116255f7af553', '[\"*\"]', '2025-03-22 11:26:37', '2025-03-22 07:37:28', '2025-03-22 11:26:37'),
(373, 'App\\Models\\User', 1, 'ApiToken', '8bf9ccd78a9a0c28a34e8d31c261b47949e61a90b65710981635bf3f4911e564', '[\"*\"]', '2025-03-24 23:19:28', '2025-03-24 03:35:17', '2025-03-24 23:19:28');

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
-- Table structure for table `setup_dealer`
--

CREATE TABLE `setup_dealer` (
  `dealer_id` int NOT NULL,
  `cabang_repcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `unit_repcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dealer_repcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dealer_repcode_desc` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dealer_desc` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dealer_address` varchar(300) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dealer_status` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'CB',
  `dealer_alias` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `setup_dealer`
--

INSERT INTO `setup_dealer` (`dealer_id`, `cabang_repcode`, `unit_repcode`, `dealer_repcode`, `dealer_repcode_desc`, `dealer_desc`, `dealer_address`, `dealer_status`, `dealer_alias`, `date_create`, `date_update`) VALUES
(1, '01000', '00020', '01020', 'MARKAS PMI', 'MARKAS PMI<BR>KABUPATEN BADUNG', 'Jalan Raya Abianbase, Kapal, Mengwi, Badung, Telp (0361) 9006953', 'HO', 'MRS', '2022-03-27 08:31:19', '2023-03-09 02:01:40'),
(4, '11000', '00020', '11020', 'UTD PMI', 'UNIT TRANSFUSI DARAH<BR>PMI KABUPATEN BADUNG', 'Jalan Raya Abianbase, Kapal, Mengwi, Badung, Telp (0361) 9006953', 'HO', 'UTD', '2022-03-27 08:31:19', '2023-03-09 02:01:40');

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
  `accid_biaya` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblbarang`
--

INSERT INTO `tblbarang` (`id`, `kdBarang`, `nmBarang`, `hrgPokok`, `hrgJual`, `ktgBarang`, `satuanBarang`, `merek`, `stkBarang`, `stkSatuan`, `qtyMin`, `qtyMax`, `stsBarang`, `deskripsi`, `accid`, `accid_hpp`, `accid_persediaan`, `accid_biaya`, `created_at`, `updated_at`) VALUES
(2, 'BRG0004', 'KAMERA 2MP', 170000, 230000, 'KT-2021-9', 'PCS', 'HILOOK', '-14', NULL, '5', '200', '1', 'des', '41500', '51500', '11605', '52500', NULL, '2025-03-22 08:24:54'),
(3, 'BRG0005', 'DVR 4CH', 487000, 700000, 'KT-2021-9', 'PCS', 'HILOOK', '-6', NULL, '2', '10', '1', 'des', '41500', '51500', '11605', '52500', '2023-01-23 00:04:44', '2025-03-22 10:51:56'),
(4, 'BRG0006', 'BRIGHT GAS 5,5KG', 100000, 110000, 'KT-2021-3', 'TABUNG', 'BRIGHT', '0', NULL, '2', '10', '0', 'des', '41400', '51400', '11604', '', '2023-02-03 13:26:02', '2023-02-03 13:26:02'),
(5, 'BRG0007', 'ELPIGI GAS 3KG', 16000, 18000, 'KT-2021-3', 'TABUNG', 'ELPIGI', '0', NULL, '5', '100', '0', 'des', '41400', '51400', '11604', '', '2023-02-04 02:58:44', '2023-02-04 02:58:44'),
(6, 'BRG0008', 'OLI MESRAN 1.5L', 80000, 110000, 'KT-2021-2', 'BOTOL', 'MESRAN', '0', NULL, '5', '100', '0', 'des', '41500', '51500', '11605', '', '2023-02-04 02:59:07', '2023-02-04 02:59:07'),
(9, 'BRG0009', 'RAM VGEN', 200000, 350000, 'KT-2021-3', 'PCS', 'VISI', '-4', NULL, '2', '10', '0', 'des', '41400', '51400', '11604', '52400', '2024-09-09 06:54:24', '2025-01-07 10:15:46'),
(10, 'BRG00010', 'KOMPUTER CORE I3', 500000, 500000, 'KT-2021-3', 'SET', 'LG', '-4', NULL, '1', '20', '0', 'des', '41200', '51200', '11602', '', '2024-09-09 09:51:22', '2024-09-09 09:51:22'),
(14, 'BRG00011', 'Mainboard Varro H61', 28000, 350000, 'KT-2021-1', 'PCS', 'Varro', '-1', NULL, '1', '5', '0', 'des', '41400', '51400', '11604', '52400', '2025-03-21 02:27:30', '2025-03-21 02:39:34'),
(16, 'BRG00012', 'KABEL JARINGAN', 750000, 950000, 'KT-2021-7', 'Roll', 'Hikvisiob', '0', NULL, '3', '1', '0', 'des', '41400', '51400', '11604', '52400', '2025-03-22 07:50:17', '2025-03-22 07:50:45');

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
(1, 'BRG0001', 'PERTAMAX', 0, '0.00', '0.00', '-2880.00', 'pertamax.png', '41100', '51100', '11601', '52100', '2023-01-12 12:56:36', '2023-04-24 09:13:17'),
(2, 'BRG0002', 'PERTALITE', 0, '0.00', '0.00', '-5599.00', 'pertalite.png', '41200', '51200', '11602', '52200', '2023-01-12 12:56:36', '2023-04-24 09:13:34'),
(3, 'BRG0003', 'DEX LITE', 0, '0.00', '0.00', '-2395.00', 'dexlite.png', '41300', '51300', '11603', '52300', '2023-01-14 08:29:46', '2023-04-24 09:09:48');

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
  `satuan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `accid` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `r_regu` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
(6, 'IV0520231', 'PGA0320253', 'TV 32 INCH', '12400', '12503', '2016-02-05', '2016-02-05', 'SAMSUNG', 'HITAM', 3, '292124.00', '1.00', '2023-05-04 08:54:29', '2023-05-04 08:54:29'),
(7, 'IV0520232', 'PGA0520232', 'MESIN ABSEN SIDIK JARI', '12400', '12503', '2016-07-10', '2016-07-10', 'FINGERSPOT', 'HITAM', 3, '0.00', '0.00', '2023-05-04 08:55:19', '2023-05-04 08:55:19'),
(8, 'IV0520233', 'PGA0520233', 'DVR KAMERA CCTV 8CH', '12400', '12503', '2016-08-08', '2016-08-08', 'HIKVISION', 'HITAM', 3, '0.00', '0.00', '2023-05-04 08:56:11', '2023-05-04 08:56:11'),
(9, 'IV0520234', 'PGA0520234', 'DVR KAMERA CCTV 16CH', '12400', '12503', '2016-08-08', '2016-08-08', 'HIKVISION', 'HITAM', 3, '0.00', '0.00', '2023-05-04 08:56:48', '2023-05-04 08:56:48'),
(10, 'IV0520235', 'PGA0520235', 'KAMERA OUTDOOR', '12400', '12503', '2016-08-08', '2016-08-08', 'HIKVISION', 'PUTIH', 3, '0.00', '0.00', '2023-05-04 08:57:39', '2023-05-04 08:57:39'),
(11, 'IV0520236', 'PGA0520236', 'KAMERA INDOOR', '12400', '12503', '2016-11-20', '2016-11-20', 'HIKVISION', 'PUTIH', 3, '0.00', '0.00', '2023-05-04 08:58:11', '2023-05-04 08:58:11'),
(12, 'IV0520237', 'PGA0520237', 'AIR CONDENSIONER (AC)', '12400', '12503', '2015-03-12', '2015-03-12', 'PANASONIC', 'PUTIH', 3, '0.00', '0.00', '2023-05-04 08:59:29', '2023-05-04 08:59:29'),
(13, 'IV0520238', 'PGA0520238', 'AIR CONDENSIONER (AC)', '12400', '12503', '2018-08-26', '2018-08-26', 'MIDEA', 'PUTIH', 3, '0.00', '0.00', '2023-05-04 09:00:17', '2023-05-04 09:00:17'),
(14, 'IV0520239', 'PGA0320251', 'KOMPUTER', '12400', '12503', '2016-10-22', '2016-10-22', 'INTEL', 'HITAM', 3, '0.00', '1.00', '2023-05-04 09:01:01', '2023-05-04 09:01:01'),
(15, 'IV05202310', 'PGA0520239', 'MONITOR KOMPUTER', '12400', '12503', '2016-10-22', '2016-10-22', 'LG', 'HITAM', 3, '0.00', '0.00', '2023-05-04 09:02:02', '2023-05-04 09:02:02'),
(16, 'IV05202311', 'PGA05202310', 'PRINTER EPSON TM-U220', '12400', '12503', '2006-06-17', '2006-06-17', 'EPSON', 'HITAM', 3, '0.00', '0.00', '2023-05-07 23:31:38', '2023-05-07 23:31:38'),
(17, 'IV05202312', 'PGA05202311', 'PRINTER EPSON TM-U220', '12400', '12503', '2015-06-17', '2015-06-17', 'EPSON', 'HITAM', 3, '0.00', '0.00', '2023-05-07 23:33:01', '2023-05-07 23:33:01'),
(18, 'IV05202313', 'PGA05202312', 'PRINTER EPSON TM-U220 D', '12400', '12503', '2015-10-22', '2015-10-22', 'EPSON', 'HITAM', 3, '0.00', '0.00', '2023-05-07 23:33:51', '2023-05-07 23:33:51'),
(19, 'IV05202314', 'PGA05202313', 'PRINTER EPSON LQ310', '12400', '12503', '2016-11-30', '2016-11-30', 'EPSON', 'HITAM', 3, '0.00', '0.00', '2023-05-07 23:34:55', '2023-05-07 23:34:55'),
(20, 'IV05202315', 'PGA05202314', 'PRINTER EPSON L1110', '12400', '12503', '2017-09-24', '2017-09-24', 'EPSON', 'HITAM', 3, '0.00', '0.00', '2023-05-07 23:35:47', '2023-05-07 23:35:47'),
(21, 'IV05202316', 'PGA05202315', 'STABILIZER SVC 3000NA', '12400', '12503', '2005-07-18', '2005-07-18', 'MATSUYAMA', 'MERAH', 5, '0.00', '0.00', '2023-05-29 23:56:24', '2023-05-29 23:56:24'),
(22, 'IV05202317', 'PGA05202316', 'STABILIZER W-5000VA', '12400', '12503', '2011-05-02', '2011-05-02', 'MATSUNAGA', 'HITAM', 5, '0.00', '0.00', '2023-05-29 23:59:03', '2023-05-29 23:59:03'),
(23, 'IV05202318', 'PGA05202317', 'POWER SUPLY (UPS) ICA-CE1200', '12400', '12503', '2007-05-11', '2007-05-11', 'ICA', 'HITAM', 3, '0.00', '0.00', '2023-05-30 00:02:55', '2023-05-30 00:02:55'),
(24, 'IV05202319', 'PGA05202318', 'MESIN TATSUNO 2 NOZLE TYPE : GDA220220JMBDF000000-E', '12300', '12501', '2006-06-17', '2006-06-17', 'TATSUNO', 'HITAM', 15, '0.00', '0.00', '2023-05-30 00:06:55', '2023-05-30 00:06:55'),
(25, 'IV05202320', 'PGA05202319', 'MESIN TATSUNO 8 NOZLE TYPE : GSB4821', '12300', '12501', '2015-01-28', '2015-01-28', 'TATSUNO', 'HITAM', 15, '0.00', '0.00', '2023-05-30 00:08:45', '2023-05-30 00:08:45'),
(26, 'IV05202321', 'PGA05202320', 'MESIN TATSUNO 4 NOZLE TYPE : GDB2442P', '12300', '12501', '2017-10-04', '2017-10-04', 'TATSUNO', 'HITAM', 15, '0.00', '0.00', '2023-05-30 00:10:03', '2023-05-30 00:10:03'),
(27, 'IV05202322', 'PGA05202321', 'BEJANA UKUR 10LT', '12400', '12503', '1995-04-21', '2017-10-04', 'BEJANA', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:11:58', '2023-05-30 00:11:58'),
(28, 'IV05202323', 'PGA05202322', 'BEJANA UKUR 20LT', '12400', '12503', '2004-05-05', '2004-05-05', 'BEJANA', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:16:48', '2023-05-30 00:16:48'),
(29, 'IV05202324', 'PGA05202323', 'ALAT PEMADAM API 68KG', '12400', '12503', '1994-07-16', '1994-07-16', 'CHUBB POWDER', 'MERAH', 5, '0.00', '0.00', '2023-05-30 00:20:26', '2023-05-30 00:20:26'),
(30, 'IV05202325', 'PGA05202323', 'ALAT PEMADAM API 9KG', '12400', '12503', '1994-07-16', '1994-07-16', 'CHUBB POWDER', 'MERAH', 5, '0.00', '0.00', '2023-05-30 00:21:36', '2023-05-30 00:21:36'),
(31, 'IV05202326', 'PGA05202323', 'TANGKI PENDAM KAPASITAS 30KL PERTAMAX', '12300', '12501', '1994-07-16', '1994-07-16', 'TANGKI', 'MERAH', 20, '0.00', '0.00', '2023-05-30 00:23:21', '2023-05-30 00:23:21'),
(32, 'IV05202327', 'PGA05202323', 'TANGKI PENDAM KAPASITAS 15KL PERTALITE', '12300', '12501', '1994-07-16', '1994-07-16', 'TANGKI', 'MERAH', 20, '0.00', '0.00', '2023-05-30 00:24:52', '2023-05-30 00:24:52'),
(33, 'IV05202328', 'PGA05202323', 'TANGKI PENDAM KAPASITAS 15KL DEXLITE', '12300', '12501', '1994-07-16', '1994-07-16', 'TANGKI', 'MERAH', 20, '0.00', '0.00', '2023-05-30 00:26:09', '2023-05-30 00:26:09'),
(34, 'IV05202329', 'PGA05202324', 'GENSET KUBOTA 10KVA', '12300', '12501', '1985-04-25', '1985-04-25', 'KUBOTA', 'HITAM', 20, '0.00', '0.00', '2023-05-30 00:27:37', '2023-05-30 00:27:37'),
(35, 'IV05202330', 'PGA05202325', 'GENSET MERCEDEZ 40KVA', '12300', '12501', '2000-05-14', '2000-05-14', 'MERCEDEZ', 'HITAM', 20, '0.00', '0.00', '2023-05-30 00:28:35', '2023-05-30 00:28:35'),
(36, 'IV05202331', 'PGA05202326', 'MESIN SUMUR GRUNDFOS TYPE: JPD4-47', '12300', '12501', '2012-02-09', '2012-02-09', 'GRUNDFOS', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:30:15', '2023-05-30 00:30:15'),
(37, 'IV05202332', 'PGA05202327', 'MESIN POTONG RUMPUT TASCO TYPE: TAC328', '12300', '12501', '2014-12-19', '2014-12-19', 'TASCO', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:31:32', '2023-05-30 00:31:32'),
(38, 'IV05202333', 'PGA05202328', 'MESIN AIR HONDA TYPE: GX160', '12300', '12501', '2015-05-21', '2015-05-21', 'HONDA', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:32:48', '2023-05-30 00:32:48'),
(39, 'IV05202334', 'PGA05202329', 'MESIN KOMPRESSOR ANGIN PUMA 1HP', '12300', '12501', '2015-08-16', '2015-08-16', 'PUMA', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:34:05', '2023-05-30 00:34:05'),
(40, 'IV05202335', 'PGA05202330', 'TANDON AIR KAPASITAS 320LT OASIS', '12400', '12503', '2012-02-09', '2012-02-09', 'OASIS', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:35:29', '2023-05-30 00:35:29'),
(41, 'IV05202336', 'PGA05202331', 'TANDON AIR KAPASITAS 550LT PENGUIN', '12400', '12503', '2016-05-20', '2016-05-20', 'PENGUIN', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:36:23', '2023-05-30 00:36:23'),
(42, 'IV05202337', 'PGA05202332', 'TIMBANGAN DIGITAL NEWTECH TYPE : NT15E', '12400', '12503', '2012-06-08', '2012-06-08', 'NEWTECH', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:38:15', '2023-05-30 00:38:15'),
(43, 'IV05202338', 'PGA05202333', 'TABUNG GAS 12KG', '12300', '12501', '1996-06-08', '1996-06-08', 'TABUNG', 'HIJAU', 5, '0.00', '0.00', '2023-05-30 00:39:43', '2023-05-30 00:39:43'),
(44, 'IV05202339', 'PGA05202334', 'TABUNG GAS 3KG', '12300', '12501', '2002-02-11', '2002-02-11', 'TABUNG', 'HIJAU', 5, '0.00', '0.00', '2023-05-30 00:40:40', '2023-05-30 00:40:40'),
(45, 'IV05202340', 'PGA05202335', 'TABUNG GAS 5.5KG', '12300', '12501', '2012-07-22', '2012-07-22', 'TABUNG', 'PINK', 5, '0.00', '0.00', '2023-05-30 00:41:33', '2023-05-30 00:41:33'),
(46, 'IV05202341', 'PGA05202336', 'MESIN KAKSIR KKRISBOW', '12400', '12503', '2017-07-14', '2017-07-14', 'KRISBOW', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:42:56', '2023-05-30 00:42:56'),
(47, 'IV05202342', 'PGA05202337', 'KALKULATOR CASIO', '12400', '12503', '2020-05-19', '2020-05-19', 'CASIO', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:43:50', '2023-05-30 00:43:50'),
(48, 'IV05202343', 'PGA05202338', 'AUDIO SISTEM TOA TYPE: ZA-230W', '12400', '12503', '2020-12-14', '2020-12-14', 'TOA', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:44:54', '2023-05-30 00:44:54'),
(49, 'IV05202344', 'PGA05202338', 'SPEAKER TOA TYPE: ZS1030', '12400', '12503', '2020-12-14', '2020-12-14', 'TOA', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:45:51', '2023-05-30 00:45:51'),
(50, 'IV05202345', 'PGA05202338', 'PLAYER USB UNIT', '12400', '12503', '2020-12-14', '2020-12-14', 'USB', 'HITAM', 3, '0.00', '0.00', '2023-05-30 00:46:54', '2023-05-30 00:46:54'),
(51, 'IV05202346', 'PGA05202339', 'MESIN EDC', '12400', '12503', '2023-01-01', '2020-12-14', 'EDC', 'HITAM', 5, '0.00', '0.00', '2023-05-30 00:47:45', '2023-05-30 00:47:45'),
(52, 'IV05202347', 'PGA05202340', 'RUANG ATM', '12200', '12502', '2022-01-01', '2022-01-01', 'GEDUNG', 'PUTIH', 20, '0.00', '0.00', '2023-05-30 00:48:48', '2023-05-30 00:48:48'),
(56, 'IV05202351', NULL, 'GEDUNG KANTOR', '12200', '12502', '2020-01-01', '2020-01-01', 'GEDUNG', 'PUTIH', 20, '0.00', '0.00', '2023-05-30 00:50:50', '2023-05-30 00:50:50');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
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
-- Table structure for table `tbljasa`
--

CREATE TABLE `tbljasa` (
  `id` bigint UNSIGNED NOT NULL,
  `kdJasa` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nmJasa` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `biayaJasa` double NOT NULL,
  `deskripsi` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accid_jasa` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbljasa`
--

INSERT INTO `tbljasa` (`id`, `kdJasa`, `nmJasa`, `biayaJasa`, `deskripsi`, `accid`, `accid_jasa`, `created_at`, `updated_at`) VALUES
(18, 'JSA0001', 'INSTALL WINDOWS', 200000, 'Install windows dan aplikasi standart', '11110', '42801', '2025-03-24 00:10:27', '2025-03-24 00:10:27'),
(19, 'JSA0002', 'PERBAIKAN CCTV', 150000, 'PERBAIKAN CCTV', '11110', '42801', '2025-03-24 00:11:06', '2025-03-24 00:11:06');

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
(53, 'INV2025-1', 'BRG0009', '2025-03-01 00:00:00', '0.00', '0.00', '0.00', '1.00', '332500.00', '-1.00', '2025-03-25 06:34:26', '2025-03-25 06:34:26'),
(54, 'INV2025-2', 'BRG00011', '2025-03-25 00:00:00', '0.00', '0.00', '0.00', '1.00', '350000.00', '-1.00', '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(55, 'INV2025-2', 'BRG0009', '2025-03-25 00:00:00', '-1.00', '0.00', '0.00', '1.00', '350000.00', '-2.00', '2025-03-25 06:42:46', '2025-03-25 06:42:46'),
(60, 'INV2025-3', 'BRG0009', '2025-03-02 00:00:00', '-2.00', '0.00', '0.00', '1.00', '332500.00', '-3.00', '2025-03-25 06:57:49', '2025-03-25 06:57:49'),
(61, 'INV2025-4', 'BRG0004', '2025-03-25 00:00:00', '-12.00', '0.00', '0.00', '1.00', '230000.00', '-13.00', '2025-03-25 07:04:16', '2025-03-25 07:04:16'),
(62, 'INV2025-5', 'BRG0009', '2025-03-25 00:00:00', '-3.00', '0.00', '0.00', '1.00', '350000.00', '-4.00', '2025-03-25 07:11:24', '2025-03-25 07:11:24'),
(63, 'INV2025-6', 'BRG0005', '2025-03-25 00:00:00', '-5.00', '0.00', '0.00', '1.00', '700000.00', '-6.00', '2025-03-25 07:17:03', '2025-03-25 07:17:03'),
(64, 'INV2025-6', 'BRG0004', '2025-03-25 00:00:00', '-13.00', '0.00', '0.00', '1.00', '230000.00', '-14.00', '2025-03-25 07:17:03', '2025-03-25 07:17:03');

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
(1, 'KT-2021-1', 'LAPTOP', '2021-03-19 22:40:29', '2022-02-19 06:11:10'),
(2, 'KT-2021-2', 'KOMPUTER', '2021-03-19 22:40:36', '2021-03-19 22:40:36'),
(3, 'KT-2021-3', 'PRINTER', '2023-01-20 12:13:36', '2023-01-20 12:13:36'),
(4, 'KT-2021-4', 'PART PC DAN LAPTOP', '2023-01-20 12:13:36', '2023-01-20 12:13:36'),
(5, 'KT-2021-5', 'PART PRINTER', '2023-01-20 12:13:36', '2023-01-20 12:13:36'),
(6, 'KT-2021-6', 'NETWORKING', '2023-01-20 12:13:36', '2023-01-20 12:13:36'),
(7, 'KT-2021-7', 'KABEL', '2023-01-20 12:13:36', '2023-01-20 12:13:36'),
(8, 'KT-2021-8', 'AKSESORIS', '2023-01-20 12:13:36', '2023-01-20 12:13:36'),
(9, 'KT-2021-9', 'CCTV', '2023-01-20 12:13:36', '2023-01-20 12:13:36'),
(10, 'KT-2021-10', 'JASA', '2023-01-20 12:13:36', '2023-01-20 12:13:36');

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
(1, 1, 'BRG0001', 'PX 1', 5060563, 5060884, '0', '13300.00', '2023-01-14 09:54:41', '2023-09-15 06:28:02'),
(2, 1, 'BRG0001', 'PX 2', 4855535, 4855838, '0', '13300.00', '2023-01-14 09:56:59', '2023-09-15 06:28:02'),
(3, 2, 'BRG0002', 'PL 1', 4749554, 4751416, '0', '10000.00', '2023-01-14 09:58:16', '2023-09-15 06:28:02'),
(4, 2, 'BRG0002', 'PL 2', 4307126, 4308616, '0', '10000.00', '2023-01-14 09:56:59', '2023-09-15 06:28:02'),
(5, 1, 'BRG0001', 'PX 3', 8726231, 8726231, '0', '13300.00', '2023-01-14 09:56:59', '2023-09-15 06:28:02'),
(6, 2, 'BRG0002', 'PL 3', 15671360, 15671360, '0', '10000.00', '2023-01-14 09:56:59', '2023-09-15 06:28:02'),
(7, 3, 'BRG0003', 'DX 1', 1335997, 1336055, '0', '13700.00', '2023-01-14 09:58:16', '2023-09-15 06:28:02'),
(8, 3, 'BRG0003', 'DX 2', 653356, 653384, '0', '13700.00', '2023-01-14 09:58:16', '2023-09-15 06:28:02'),
(9, 2, 'BRG0002', 'PL 4', 4929329, 4929349, '0', '10000.00', '2023-01-14 09:58:16', '2023-09-15 06:28:02'),
(10, 2, 'BRG0002', 'PL 5', 5438928, 5438928, '0', '10000.00', '2023-01-14 09:56:59', '2023-09-15 06:28:02'),
(11, 1, 'BRG0001', 'PX 4', 3591970, 3592539, '0', '13300.00', '2023-01-14 09:58:16', '2023-09-15 06:28:02'),
(12, 1, 'BRG0001', 'PX 5', 2245162, 2245177, '0', '13300.00', '2023-01-14 09:58:16', '2023-09-15 06:28:02'),
(13, 2, 'BRG0002', 'PL 6', 4776501, 4777925, '0', '10000.00', '2023-02-02 13:04:04', '2023-09-15 06:28:02'),
(14, 2, 'BRG0002', 'PL 7', 5767518, 5769057, '0', '10000.00', '2023-02-02 13:05:33', '2023-09-15 06:28:02');

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
(30, 'PL02022030', 'CASH', '-', '-', '-', '-', 'user-avtar.svg', '0.00', '2022-08-04 21:42:35', '2022-08-04 21:42:35'),
(31, 'PL02022031', 'MIROR', '-', '-', '-', '-', 'user-avtar.svg', '0.00', '2022-08-04 21:42:50', '2022-08-04 21:42:50'),
(32, 'PL02022032', 'SMA 1 KUTA', '-', '-', '-', '-', 'user-avtar.svg', '0.00', '2022-08-18 04:12:11', '2022-08-18 04:12:11'),
(33, 'PL02022033', 'KUNJA', '-', '-', '-', '-', 'user-avtar.svg', '0.00', '2022-08-18 04:12:32', '2022-08-18 04:12:32'),
(34, 'PL02022034', 'CAFE DELMAR', '-', '-', '-', '-', '-', '0.00', '2023-01-29 13:05:53', '2023-01-29 13:05:53'),
(35, 'PL02022035', 'PETS CONTROL', '-', '-', '-', '-', '-', '0.00', '2023-01-29 13:06:57', '2023-01-29 13:06:57'),
(36, 'PL02022036', 'KAYU RAJA', '-', '-', '-', '-', '-', '0.00', '2023-01-29 13:09:28', '2023-01-29 13:09:28'),
(37, 'PL02022037', 'SURFING', '-', '-', '-', '-', '-', '0.00', '2023-01-29 13:09:28', '2023-01-29 13:09:28'),
(38, 'PL02022038', 'THE AWAN VILLAS', '-', '-', '-', '-', '-', '0.00', '2023-01-29 13:09:28', '2023-01-29 13:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblpembelian`
--

CREATE TABLE `tblpembelian` (
  `idPembelian` bigint UNSIGNED NOT NULL,
  `noNota` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
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
  `discPenjualan` decimal(13,2) NOT NULL DEFAULT '0.00',
  `discPercentP` int NOT NULL DEFAULT '0',
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
(56, 'INV2025-1', '2025-03-01 00:00:00', 'PL02022033', '532500.00', '0.00', 0, '36575.00', '532500.00', NULL, 0, '2025-03-01 00:00:00', '0', '0.00', '2025-03-24 22:34:26', '2025-03-24 22:34:26'),
(57, 'INV2025-2', '2025-03-25 00:00:00', 'PL02022031', '900000.00', '0.00', 0, '77000.00', '900000.00', NULL, 0, '2025-03-25 00:00:00', '0', '0.00', '2025-03-24 22:42:46', '2025-03-24 22:42:46'),
(61, 'INV2025-3', '2025-03-02 00:00:00', 'PL02022038', '532500.00', '0.00', 0, '36575.00', '532500.00', NULL, 0, '2025-03-25 00:00:00', '0', '0.00', '2025-03-24 22:57:49', '2025-03-24 22:57:49'),
(62, 'INV2025-4', '2025-03-25 00:00:00', 'PL02022031', '230000.00', '0.00', 0, '25300.00', '230000.00', NULL, 0, '2025-03-25 00:00:00', '0', '0.00', '2025-03-24 23:04:16', '2025-03-24 23:04:16'),
(63, 'INV2025-5', '2025-03-25 00:00:00', 'PL02022031', '350000.00', '0.00', 0, '38500.00', '350000.00', NULL, 0, '2025-03-25 00:00:00', '0', '0.00', '2025-03-24 23:11:24', '2025-03-24 23:11:24'),
(64, 'INV2025-6', '2025-03-25 00:00:00', 'PL02022032', '1080000.00', '0.00', 0, '102300.00', '1080000.00', NULL, 0, '2025-03-25 00:00:00', '0', '0.00', '2025-03-24 23:17:02', '2025-03-24 23:17:02');

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
  `disc` decimal(10,0) NOT NULL DEFAULT '0',
  `totalJual` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpenjualan_detail`
--

INSERT INTO `tblpenjualan_detail` (`idDetailPenjualan`, `r_noPenjualan`, `tgl_trans`, `r_kdBarang`, `r_nmBarang`, `kategori_jual`, `hrgJual`, `qty`, `satuanJual`, `totalHpp`, `disc`, `totalJual`, `created_at`, `updated_at`) VALUES
(48, 'INV2025-1', '2025-03-01 00:00:00', 'BRG0009', 'RAM VGEN', 'KT-2021-3', '350000.00', 1, 'PCS', '200000.00', '17500', '332500.00', '2025-03-24 22:34:26', '2025-03-24 22:34:26'),
(49, 'INV2025-2', '2025-03-25 00:00:00', 'BRG00011', 'Mainboard Varro H61', 'KT-2021-1', '350000.00', 1, 'PCS', '28000.00', '0', '350000.00', '2025-03-24 22:42:46', '2025-03-24 22:42:46'),
(50, 'INV2025-2', '2025-03-25 00:00:00', 'BRG0009', 'RAM VGEN', 'KT-2021-3', '350000.00', 1, 'PCS', '200000.00', '0', '350000.00', '2025-03-24 22:42:46', '2025-03-24 22:42:46'),
(55, 'INV2025-3', '2025-03-02 00:00:00', 'BRG0009', 'RAM VGEN', 'KT-2021-3', '350000.00', 1, 'PCS', '200000.00', '17500', '332500.00', '2025-03-24 22:57:49', '2025-03-24 22:57:49'),
(56, 'INV2025-4', '2025-03-25 00:00:00', 'BRG0004', 'KAMERA 2MP', 'KT-2021-9', '230000.00', 1, 'PCS', '170000.00', '0', '230000.00', '2025-03-24 23:04:16', '2025-03-24 23:04:16'),
(57, 'INV2025-5', '2025-03-25 00:00:00', 'BRG0009', 'RAM VGEN', 'KT-2021-3', '350000.00', 1, 'PCS', '200000.00', '0', '350000.00', '2025-03-24 23:11:24', '2025-03-24 23:11:24'),
(58, 'INV2025-6', '2025-03-25 00:00:00', 'BRG0005', 'DVR 4CH', 'KT-2021-9', '700000.00', 1, 'PCS', '487000.00', '0', '700000.00', '2025-03-24 23:17:03', '2025-03-24 23:17:03'),
(59, 'INV2025-6', '2025-03-25 00:00:00', 'BRG0004', 'KAMERA 2MP', 'KT-2021-9', '230000.00', 1, 'PCS', '170000.00', '0', '230000.00', '2025-03-24 23:17:03', '2025-03-24 23:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblpenjualan_detail_jasa`
--

CREATE TABLE `tblpenjualan_detail_jasa` (
  `idDetailPenjualan` int NOT NULL,
  `r_noPenjualan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_trans` datetime NOT NULL,
  `r_kdJasa` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_nmJasa` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `biayaJasa` decimal(13,2) NOT NULL,
  `qtyJasa` int NOT NULL,
  `totalJasa` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblpenjualan_detail_jasa`
--

INSERT INTO `tblpenjualan_detail_jasa` (`idDetailPenjualan`, `r_noPenjualan`, `tgl_trans`, `r_kdJasa`, `r_nmJasa`, `biayaJasa`, `qtyJasa`, `totalJasa`, `created_at`, `updated_at`) VALUES
(35, 'INV2025-1', '2025-03-01 00:00:00', 'JSA0001', 'INSTALL WINDOWS', '200000.00', 1, '200000.00', '2025-03-24 22:34:26', '2025-03-24 22:34:26'),
(36, 'INV2025-2', '2025-03-25 00:00:00', 'JSA0001', 'INSTALL WINDOWS', '200000.00', 1, '200000.00', '2025-03-24 22:42:46', '2025-03-24 22:42:46'),
(40, 'INV2025-3', '2025-03-02 00:00:00', 'JSA0001', 'INSTALL WINDOWS', '200000.00', 1, '200000.00', '2025-03-24 22:57:49', '2025-03-24 22:57:49'),
(41, 'INV2025-6', '2025-03-25 00:00:00', 'JSA0002', 'PERBAIKAN CCTV', '150000.00', 1, '150000.00', '2025-03-24 23:17:03', '2025-03-24 23:17:03');

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
(1, 'BRG0001', 'PERTAMAX', 0, 'Liter', 'KT-2021-1', '0.00', '0.00', '2023-01-19 22:24:13', '2023-01-19 22:24:13'),
(2, 'BRG0002', 'PERTALITE', 0, 'Liter', 'KT-2021-1', '0.00', '0.00', '2023-01-19 22:25:23', '2023-01-19 22:25:23'),
(3, 'BRG0003', 'DEX LITE', 0, 'Liter', 'KT-2021-1', '0.00', '0.00', '2023-01-19 22:26:32', '2023-01-19 22:26:32'),
(4, 'BRG0004', 'KAMERA 2MP', -14, 'PCS', 'KT-2021-9', '170000.00', '230000.00', '2023-01-20 12:14:45', '2025-03-22 08:24:54'),
(6, 'BRG0005', 'DVR 4CH', -6, 'PCS', 'KT-2021-9', '487000.00', '700000.00', NULL, '2025-03-22 10:51:56'),
(7, 'BRG0006', 'BRIGHT GAS 5,5KG', 0, 'TABUNG', 'KT-2021-3', '0.00', '0.00', NULL, NULL),
(8, 'BRG0007', 'ELPIGI GAS 3KG', 0, 'TABUNG', 'KT-2021-3', '0.00', '0.00', NULL, NULL),
(9, 'BRG0008', 'OLI MESRAN 1.5L', 0, 'BOTOL', 'KT-2021-2', '0.00', '0.00', NULL, NULL),
(10, 'BRG0009', 'RAM VGEN', -4, 'PCS', 'KT-2021-3', '200000.00', '350000.00', '2024-09-09 06:54:24', '2025-01-07 10:15:46'),
(11, 'BRG00010', 'KOMPUTER CORE I3', -2, 'SET', 'KT-2021-3', '500000.00', '500000.00', '2024-09-09 09:51:22', '2024-09-09 09:51:22'),
(15, 'BRG00011', 'Mainboard Varro H61', -1, 'PCS', 'KT-2021-1', '28000.00', '350000.00', '2025-03-21 02:27:30', '2025-03-21 02:39:34'),
(17, 'BRG00012', 'KABEL JARINGAN', 0, 'Roll', 'KT-2021-7', '0.00', '0.00', '2025-03-22 07:50:17', '2025-03-22 07:50:45');

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
  `total` decimal(13,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
(1, 'SP0001', 'DO Pertamina', 'DENPASAR', '08187654', 'MAS', '2023-01-20 13:30:05', '2023-01-20 13:30:05'),
(2, 'SP0002', 'PT BBM NUSANTARA', 'KARANGASEM', '987654', 'OM', '2023-01-20 13:30:48', '2023-01-20 13:30:48'),
(3, 'SP0003', 'PT MIGAS', 'DENPASAR', '787686', 'ANDI', '2023-01-20 13:44:37', '2023-01-20 13:44:37'),
(4, 'SP0004', 'CASH', 'DENPASAR', '787686', 'ANDI', '2023-01-20 13:44:37', '2023-01-20 13:44:37');

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
  `kd_transStok` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_fifo` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `r_trans` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `stok_trans` decimal(10,2) NOT NULL,
  `harga_trans` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbltransaksi_stok`
--

INSERT INTO `tbltransaksi_stok` (`id_trans`, `kd_transStok`, `r_fifo`, `r_trans`, `stok_trans`, `harga_trans`, `created_at`, `updated_at`) VALUES
(33, 'TS000008', '1', '20230402C1', '1300.00', '12735.00', '2023-04-25 02:29:06', '2023-04-25 02:29:06'),
(34, 'TS000009', '31', '20230402C1', '6645.00', '9640.00', '2023-04-25 02:29:06', '2023-04-25 02:29:06'),
(35, 'TS000010', '3', '20230402C1', '264.00', '14485.00', '2023-04-25 02:29:06', '2023-04-25 02:29:06'),
(39, 'TS000014', '1', '20230403B1', '254.00', '12735.00', '2023-04-25 03:06:53', '2023-04-25 03:06:53'),
(40, 'TS000015', '30', '20230403B1', '2731.00', '12735.00', '2023-04-25 03:06:53', '2023-04-25 03:06:53'),
(41, 'TS000016', '31', '20230403B1', '2192.00', '9640.00', '2023-04-25 03:06:53', '2023-04-25 03:06:53'),
(42, 'TS000017', '33', '20230403B1', '3147.00', '9640.00', '2023-04-25 03:06:53', '2023-04-25 03:06:53'),
(43, 'TS000018', '3', '20230403B1', '260.00', '14485.00', '2023-04-25 03:06:53', '2023-04-25 03:06:53'),
(291, 'TS000249', '75', '20230102A1', '1686.00', '12735.00', '2023-06-26 15:30:52', '2023-06-26 15:30:52'),
(292, 'TS000250', '78', '20230102A1', '7171.00', '9640.00', '2023-06-26 15:30:52', '2023-06-26 15:30:52'),
(293, 'TS000251', '65', '20230102A1', '105.00', '13785.00', '2023-06-26 15:30:52', '2023-06-26 15:30:52'),
(294, 'TS000252', '75', '20230102B1', '1806.00', '12735.00', '2023-06-26 15:40:09', '2023-06-26 15:40:09'),
(295, 'TS000253', '65', '20230102B1', '187.00', '13785.00', '2023-06-26 15:40:09', '2023-06-26 15:40:09'),
(328, 'TS000254', '1', '20230103C1', '1853.00', '12235.00', '2023-06-29 01:31:28', '2023-06-29 01:31:28'),
(329, 'TS000255', '2', '20230103C1', '7527.00', '9640.00', '2023-06-29 01:31:28', '2023-06-29 01:31:28'),
(330, 'TS000256', '3', '20230103C1', '254.00', '15685.00', '2023-06-29 01:31:28', '2023-06-29 01:31:28'),
(331, 'TS000257', '1', '20230103A1', '2403.00', '12235.00', '2023-06-29 02:13:07', '2023-06-29 02:13:07'),
(332, 'TS000258', '3', '20230103A1', '112.00', '15685.00', '2023-06-29 02:13:07', '2023-06-29 02:13:07'),
(333, 'TS000259', '1', '20230103A15', '293.00', '12235.00', '2023-06-29 02:17:03', '2023-06-29 02:17:03'),
(334, 'TS000260', '2', '20230103A15', '6150.00', '9640.00', '2023-06-29 02:17:03', '2023-06-29 02:17:03'),
(335, 'TS000261', '3', '20230103A15', '105.00', '15685.00', '2023-06-29 02:17:03', '2023-06-29 02:17:03'),
(336, 'TS000262', '1', '20230104B1', '451.00', '12235.00', '2023-06-29 03:12:07', '2023-06-29 03:12:07'),
(337, 'TS000263', '80', '20230104B1', '1398.00', '13335.00', '2023-06-29 03:12:07', '2023-06-29 03:12:07'),
(338, 'TS000264', '2', '20230104B1', '1323.00', '9640.00', '2023-06-29 03:12:07', '2023-06-29 03:12:07'),
(339, 'TS000265', '79', '20230104B1', '5829.00', '9640.00', '2023-06-29 03:12:07', '2023-06-29 03:12:07'),
(340, 'TS000266', '3', '20230104B1', '29.00', '15685.00', '2023-06-29 03:12:07', '2023-06-29 03:12:07'),
(341, 'TS000267', '83', '20230104B1', '95.00', '15685.00', '2023-06-29 03:12:07', '2023-06-29 03:12:07'),
(342, 'TS000268', '80', '20230104C1', '2135.00', '13335.00', '2023-06-29 03:19:38', '2023-06-29 03:19:38'),
(343, 'TS000269', '79', '20230104C1', '6910.00', '9640.00', '2023-06-29 03:19:38', '2023-06-29 03:19:38'),
(344, 'TS000270', '83', '20230104C1', '240.00', '15685.00', '2023-06-29 03:19:39', '2023-06-29 03:19:39'),
(345, 'TS000271', '80', '20230105A1', '1816.00', '13335.00', '2023-06-29 05:20:56', '2023-06-29 05:20:56'),
(346, 'TS000272', '79', '20230105A1', '6770.00', '9640.00', '2023-06-29 05:20:56', '2023-06-29 05:20:56'),
(347, 'TS000273', '83', '20230105A1', '77.00', '15685.00', '2023-06-29 05:20:56', '2023-06-29 05:20:56'),
(348, 'TS000274', '80', '20230105B1', '2186.00', '13335.00', '2023-06-29 05:26:47', '2023-06-29 05:26:47'),
(349, 'TS000275', '79', '20230105B1', '4491.00', '9640.00', '2023-06-29 05:26:47', '2023-06-29 05:26:47'),
(350, 'TS000276', '81', '20230105B1', '2789.00', '9640.00', '2023-06-29 05:26:47', '2023-06-29 05:26:47'),
(351, 'TS000277', '83', '20230105B1', '282.00', '15685.00', '2023-06-29 05:26:47', '2023-06-29 05:26:47'),
(352, 'TS000278', '80', '20230106C1', '465.00', '13335.00', '2023-06-29 05:36:16', '2023-06-29 05:36:16'),
(353, 'TS000279', '84', '20230106C1', '832.00', '12235.00', '2023-06-29 05:36:16', '2023-06-29 05:36:16'),
(354, 'TS000280', '81', '20230106C1', '6953.00', '9640.00', '2023-06-29 05:36:16', '2023-06-29 05:36:16'),
(355, 'TS000281', '83', '20230106C1', '66.00', '15685.00', '2023-06-29 05:36:16', '2023-06-29 05:36:16'),
(356, 'TS000282', '84', '20230106A1', '2300.00', '12235.00', '2023-06-29 05:40:06', '2023-06-29 05:40:06'),
(357, 'TS000283', '81', '20230106A1', '7602.00', '9640.00', '2023-06-29 05:40:06', '2023-06-29 05:40:06'),
(358, 'TS000284', '83', '20230106A1', '180.00', '15685.00', '2023-06-29 05:40:06', '2023-06-29 05:40:06'),
(359, 'TS000285', '84', '20230107B1', '1819.00', '12235.00', '2023-06-29 05:48:13', '2023-06-29 05:48:13'),
(360, 'TS000286', '81', '20230107B1', '6656.00', '9640.00', '2023-06-29 05:48:13', '2023-06-29 05:48:13'),
(361, 'TS000287', '82', '20230107B1', '948.00', '9640.00', '2023-06-29 05:48:13', '2023-06-29 05:48:13'),
(362, 'TS000288', '83', '20230107B1', '98.00', '15685.00', '2023-06-29 05:48:13', '2023-06-29 05:48:13'),
(363, 'TS000289', '84', '20230107C1', '2064.00', '12235.00', '2023-06-29 05:53:49', '2023-06-29 05:53:49'),
(364, 'TS000290', '82', '20230107C1', '8083.00', '9640.00', '2023-06-29 05:53:49', '2023-06-29 05:53:49'),
(365, 'TS000291', '83', '20230107C1', '373.00', '15685.00', '2023-06-29 05:53:49', '2023-06-29 05:53:49'),
(366, 'TS000292', '84', '20230108A1', '1763.00', '12235.00', '2023-06-29 05:58:25', '2023-06-29 05:58:25'),
(367, 'TS000293', '82', '20230108A1', '6969.00', '9640.00', '2023-06-29 05:58:25', '2023-06-29 05:58:25'),
(368, 'TS000294', '85', '20230108A1', '1077.00', '9640.00', '2023-06-29 05:58:25', '2023-06-29 05:58:25'),
(369, 'TS000295', '83', '20230108A1', '228.00', '15685.00', '2023-06-29 05:58:25', '2023-06-29 05:58:25'),
(370, 'TS000296', '84', '20230108B1', '1881.00', '12235.00', '2023-06-29 06:03:26', '2023-06-29 06:03:26'),
(371, 'TS000297', '85', '20230108B1', '6959.00', '9640.00', '2023-06-29 06:03:26', '2023-06-29 06:03:26'),
(372, 'TS000298', '83', '20230108B1', '203.00', '15685.00', '2023-06-29 06:03:26', '2023-06-29 06:03:26'),
(373, 'TS000299', '84', '20230109C1', '4907.00', '12235.00', '2023-06-29 06:14:40', '2023-06-29 06:14:40'),
(374, 'TS000300', '83', '20230109C1', '60.00', '15685.00', '2023-06-29 06:14:41', '2023-06-29 06:14:41'),
(375, 'TS000301', '84', '20230109A1', '434.00', '12235.00', '2023-06-29 06:23:19', '2023-06-29 06:23:19'),
(376, 'TS000302', '87', '20230109A1', '1630.00', '12235.00', '2023-06-29 06:23:19', '2023-06-29 06:23:19'),
(377, 'TS000303', '85', '20230109A1', '6677.00', '9640.00', '2023-06-29 06:23:19', '2023-06-29 06:23:19'),
(378, 'TS000304', '83', '20230109A1', '288.00', '15685.00', '2023-06-29 06:23:19', '2023-06-29 06:23:19'),
(379, 'TS000305', '87', '20230110B1', '1714.00', '12235.00', '2023-06-29 06:30:30', '2023-06-29 06:30:30'),
(380, 'TS000306', '85', '20230110B1', '7156.00', '9640.00', '2023-06-29 06:30:30', '2023-06-29 06:30:30'),
(381, 'TS000307', '83', '20230110B1', '108.00', '15685.00', '2023-06-29 06:30:30', '2023-06-29 06:30:30'),
(382, 'TS000308', '87', '20230110C1', '1895.00', '12235.00', '2023-06-29 06:33:43', '2023-06-29 06:33:43'),
(383, 'TS000309', '85', '20230110C1', '7504.00', '9640.00', '2023-06-29 06:33:43', '2023-06-29 06:33:43'),
(384, 'TS000310', '83', '20230110C1', '204.00', '15685.00', '2023-06-29 06:33:43', '2023-06-29 06:33:43'),
(385, 'TS000311', '87', '20230111A1', '1922.00', '12235.00', '2023-06-29 06:41:00', '2023-06-29 06:41:00'),
(386, 'TS000312', '85', '20230111A1', '7063.00', '9640.00', '2023-06-29 06:41:00', '2023-06-29 06:41:00'),
(387, 'TS000313', '83', '20230111A1', '118.00', '15685.00', '2023-06-29 06:41:00', '2023-06-29 06:41:00'),
(388, 'TS000314', '87', '20230111B1', '839.00', '12235.00', '2023-06-29 06:47:53', '2023-06-29 06:47:53'),
(389, 'TS000315', '90', '20230111B1', '552.00', '12235.00', '2023-06-29 06:47:53', '2023-06-29 06:47:53'),
(390, 'TS000316', '85', '20230111B1', '3564.00', '9640.00', '2023-06-29 06:47:53', '2023-06-29 06:47:53'),
(391, 'TS000317', '86', '20230111B1', '3183.00', '9640.00', '2023-06-29 06:47:53', '2023-06-29 06:47:53'),
(392, 'TS000318', '83', '20230111B1', '81.00', '15685.00', '2023-06-29 06:47:53', '2023-06-29 06:47:53'),
(393, 'TS000319', '90', '20230112B1', '1324.00', '12235.00', '2023-06-29 07:19:01', '2023-06-29 07:19:01'),
(394, 'TS000320', '86', '20230112B1', '7339.00', '9640.00', '2023-06-29 07:19:01', '2023-06-29 07:19:01'),
(395, 'TS000321', '83', '20230112B1', '112.00', '15685.00', '2023-06-29 07:19:01', '2023-06-29 07:19:01'),
(396, 'TS000322', '90', '20230112A1', '1868.00', '12235.00', '2023-06-29 07:28:28', '2023-06-29 07:28:28'),
(397, 'TS000323', '86', '20230112A1', '5478.00', '9640.00', '2023-06-29 07:28:28', '2023-06-29 07:28:28'),
(398, 'TS000324', '88', '20230112A1', '1861.00', '9640.00', '2023-06-29 07:28:28', '2023-06-29 07:28:28'),
(399, 'TS000325', '83', '20230112A1', '103.00', '15685.00', '2023-06-29 07:28:28', '2023-06-29 07:28:28'),
(400, 'TS000326', '90', '20230113B1', '1490.00', '12235.00', '2023-06-29 07:42:07', '2023-06-29 07:42:07'),
(401, 'TS000327', '88', '20230113B1', '6833.00', '9640.00', '2023-06-29 07:42:07', '2023-06-29 07:42:07'),
(402, 'TS000328', '83', '20230113B1', '124.00', '15685.00', '2023-06-29 07:42:07', '2023-06-29 07:42:07'),
(403, 'TS000329', '90', '20230113C1', '1634.00', '12235.00', '2023-06-29 08:06:09', '2023-06-29 08:06:09'),
(404, 'TS000330', '88', '20230113C1', '7146.00', '9640.00', '2023-06-29 08:06:09', '2023-06-29 08:06:09'),
(405, 'TS000331', '83', '20230113C1', '225.00', '15685.00', '2023-06-29 08:06:09', '2023-06-29 08:06:09'),
(406, 'TS000332', '90', '20230114A1', '1132.00', '12235.00', '2023-06-29 08:30:08', '2023-06-29 08:30:08'),
(407, 'TS000333', '92', '20230114A1', '562.00', '12235.00', '2023-06-29 08:30:08', '2023-06-29 08:30:08'),
(408, 'TS000334', '88', '20230114A1', '160.00', '9640.00', '2023-06-29 08:30:08', '2023-06-29 08:30:08'),
(409, 'TS000335', '89', '20230114A1', '6435.00', '9640.00', '2023-06-29 08:30:08', '2023-06-29 08:30:08'),
(410, 'TS000336', '83', '20230114A1', '386.00', '15685.00', '2023-06-29 08:30:08', '2023-06-29 08:30:08'),
(411, 'TS000337', '92', '20230114B1', '1730.00', '12235.00', '2023-06-29 08:33:54', '2023-06-29 08:33:54'),
(412, 'TS000338', '89', '20230114B1', '1565.00', '9640.00', '2023-06-29 08:33:54', '2023-06-29 08:33:54'),
(413, 'TS000339', '91', '20230114B1', '5922.00', '9640.00', '2023-06-29 08:33:54', '2023-06-29 08:33:54'),
(414, 'TS000340', '83', '20230114B1', '312.00', '15685.00', '2023-06-29 08:33:54', '2023-06-29 08:33:54'),
(415, 'TS000341', '92', '20230115C1', '1488.00', '12235.00', '2023-06-29 08:44:47', '2023-06-29 08:44:47'),
(416, 'TS000342', '91', '20230115C1', '6415.00', '9640.00', '2023-06-29 08:44:47', '2023-06-29 08:44:47'),
(417, 'TS000343', '83', '20230115C1', '37.00', '15685.00', '2023-06-29 08:44:47', '2023-06-29 08:44:47'),
(418, 'TS000344', '96', '20230115C1', '131.00', '15685.00', '2023-06-29 08:44:47', '2023-06-29 08:44:47'),
(419, 'TS000345', '92', '20230115A1', '1341.00', '12235.00', '2023-06-29 08:54:46', '2023-06-29 08:54:46'),
(420, 'TS000346', '91', '20230115A1', '3663.00', '9640.00', '2023-06-29 08:54:46', '2023-06-29 08:54:46'),
(421, 'TS000347', '93', '20230115A1', '3231.00', '9640.00', '2023-06-29 08:54:46', '2023-06-29 08:54:46'),
(422, 'TS000348', '96', '20230115A1', '211.00', '15685.00', '2023-06-29 08:54:46', '2023-06-29 08:54:46'),
(423, 'TS000349', '92', '20230116B1', '2643.00', '12235.00', '2023-06-29 09:09:44', '2023-06-29 09:09:44'),
(424, 'TS000350', '93', '20230116B1', '4965.00', '9640.00', '2023-06-29 09:09:44', '2023-06-29 09:09:44'),
(425, 'TS000351', '96', '20230116B1', '183.00', '15685.00', '2023-06-29 09:09:44', '2023-06-29 09:09:44'),
(426, 'TS000352', '92', '20230116C1', '236.00', '12235.00', '2023-06-29 09:13:34', '2023-06-29 09:13:34'),
(427, 'TS000353', '94', '20230116C1', '4155.00', '12235.00', '2023-06-29 09:13:34', '2023-06-29 09:13:34'),
(428, 'TS000354', '93', '20230116C1', '2628.00', '9640.00', '2023-06-29 09:13:34', '2023-06-29 09:13:34'),
(429, 'TS000355', '96', '20230116C1', '328.00', '15685.00', '2023-06-29 09:13:34', '2023-06-29 09:13:34'),
(430, 'TS000356', '94', '20230117A1', '1555.00', '12235.00', '2023-06-29 09:22:10', '2023-06-29 09:22:10'),
(431, 'TS000357', '93', '20230117A1', '6685.00', '9640.00', '2023-06-29 09:22:10', '2023-06-29 09:22:10'),
(432, 'TS000358', '96', '20230117A1', '124.00', '15685.00', '2023-06-29 09:22:11', '2023-06-29 09:22:11'),
(433, 'TS000359', '94', '20230117B1', '2109.00', '12235.00', '2023-06-29 09:28:21', '2023-06-29 09:28:21'),
(434, 'TS000360', '93', '20230117B1', '6828.00', '9640.00', '2023-06-29 09:28:21', '2023-06-29 09:28:21'),
(435, 'TS000361', '96', '20230117B1', '30.00', '15685.00', '2023-06-29 09:28:21', '2023-06-29 09:28:21'),
(436, 'TS000362', '94', '20230118C1', '181.00', '12235.00', '2023-06-29 09:35:38', '2023-06-29 09:35:38'),
(437, 'TS000363', '98', '20230118C1', '1472.00', '12235.00', '2023-06-29 09:35:38', '2023-06-29 09:35:38'),
(438, 'TS000364', '93', '20230118C1', '7663.00', '9640.00', '2023-06-29 09:35:38', '2023-06-29 09:35:38'),
(439, 'TS000365', '95', '20230118C1', '207.00', '9640.00', '2023-06-29 09:35:38', '2023-06-29 09:35:38'),
(440, 'TS000366', '96', '20230118C1', '96.00', '15685.00', '2023-06-29 09:35:38', '2023-06-29 09:35:38'),
(441, 'TS000367', '98', '20230118A1', '1728.00', '12235.00', '2023-06-29 09:38:48', '2023-06-29 09:38:48'),
(442, 'TS000368', '95', '20230118A1', '6874.00', '9640.00', '2023-06-29 09:38:48', '2023-06-29 09:38:48'),
(443, 'TS000369', '96', '20230118A1', '299.00', '15685.00', '2023-06-29 09:38:48', '2023-06-29 09:38:48'),
(444, 'TS000370', '98', '20230119B1', '1504.00', '12235.00', '2023-06-29 09:50:11', '2023-06-29 09:50:11'),
(445, 'TS000371', '95', '20230119B1', '7992.00', '9640.00', '2023-06-29 09:50:11', '2023-06-29 09:50:11'),
(446, 'TS000372', '96', '20230119B1', '143.00', '15685.00', '2023-06-29 09:50:11', '2023-06-29 09:50:11'),
(447, 'TS000373', '98', '20230119C1', '1823.00', '12235.00', '2023-06-29 09:57:09', '2023-06-29 09:57:09'),
(448, 'TS000374', '95', '20230119C1', '927.00', '9640.00', '2023-06-29 09:57:09', '2023-06-29 09:57:09'),
(449, 'TS000375', '97', '20230119C1', '6096.00', '9640.00', '2023-06-29 09:57:09', '2023-06-29 09:57:09'),
(450, 'TS000376', '96', '20230119C1', '228.00', '15685.00', '2023-06-29 09:57:09', '2023-06-29 09:57:09'),
(451, 'TS000377', '98', '20230120A1', '1473.00', '12235.00', '2023-06-29 10:15:43', '2023-06-29 10:15:43'),
(452, 'TS000378', '100', '20230120A1', '57.00', '12235.00', '2023-06-29 10:15:43', '2023-06-29 10:15:43'),
(453, 'TS000379', '97', '20230120A1', '7891.00', '9640.00', '2023-06-29 10:15:43', '2023-06-29 10:15:43'),
(454, 'TS000380', '96', '20230120A1', '75.00', '15685.00', '2023-06-29 10:15:43', '2023-06-29 10:15:43'),
(455, 'TS000381', '100', '20230120B1', '1901.00', '12235.00', '2023-06-29 10:22:59', '2023-06-29 10:22:59'),
(456, 'TS000382', '97', '20230120B1', '2013.00', '9640.00', '2023-06-29 10:22:59', '2023-06-29 10:22:59'),
(457, 'TS000383', '99', '20230120B1', '4621.00', '9640.00', '2023-06-29 10:22:59', '2023-06-29 10:22:59'),
(458, 'TS000384', '96', '20230120B1', '196.00', '15685.00', '2023-06-29 10:22:59', '2023-06-29 10:22:59'),
(459, 'TS000385', '100', '20230121C1', '1840.00', '12235.00', '2023-06-29 10:28:37', '2023-06-29 10:28:37'),
(460, 'TS000386', '99', '20230121C1', '8389.00', '9640.00', '2023-06-29 10:28:37', '2023-06-29 10:28:37'),
(461, 'TS000387', '96', '20230121C1', '187.00', '15685.00', '2023-06-29 10:28:37', '2023-06-29 10:28:37'),
(462, 'TS000388', '100', '20230121A1', '2191.00', '12235.00', '2023-06-29 10:33:48', '2023-06-29 10:33:48'),
(463, 'TS000389', '99', '20230121A1', '7054.00', '9640.00', '2023-06-29 10:33:48', '2023-06-29 10:33:48'),
(464, 'TS000390', '96', '20230121A1', '298.00', '15685.00', '2023-06-29 10:33:48', '2023-06-29 10:33:48'),
(465, 'TS000391', '100', '20230122B1', '1490.00', '12235.00', '2023-06-29 11:46:03', '2023-06-29 11:46:03'),
(466, 'TS000392', '99', '20230122B1', '3936.00', '9640.00', '2023-06-29 11:46:03', '2023-06-29 11:46:03'),
(467, 'TS000393', '101', '20230122B1', '4273.00', '9640.00', '2023-06-29 11:46:03', '2023-06-29 11:46:03'),
(468, 'TS000394', '96', '20230122B1', '89.00', '15685.00', '2023-06-29 11:46:03', '2023-06-29 11:46:03'),
(469, 'TS000395', '100', '20230122C1', '521.00', '12235.00', '2023-06-29 11:49:21', '2023-06-29 11:49:21'),
(470, 'TS000396', '102', '20230122C1', '1109.00', '12235.00', '2023-06-29 11:49:21', '2023-06-29 11:49:21'),
(471, 'TS000397', '101', '20230122C1', '7509.00', '9640.00', '2023-06-29 11:49:21', '2023-06-29 11:49:21'),
(472, 'TS000398', '96', '20230122C1', '124.00', '15685.00', '2023-06-29 11:49:21', '2023-06-29 11:49:21'),
(473, 'TS000399', '102', '20230123A1', '2300.00', '12235.00', '2023-06-29 11:57:34', '2023-06-29 11:57:34'),
(474, 'TS000400', '101', '20230123A1', '5661.00', '9640.00', '2023-06-29 11:57:34', '2023-06-29 11:57:34'),
(475, 'TS000401', '96', '20230123A1', '76.00', '15685.00', '2023-06-29 11:57:34', '2023-06-29 11:57:34'),
(476, 'TS000402', '102', '20230123B1', '2965.00', '12235.00', '2023-06-29 12:01:54', '2023-06-29 12:01:54'),
(477, 'TS000403', '101', '20230123B1', '5247.00', '9640.00', '2023-06-29 12:01:54', '2023-06-29 12:01:54'),
(478, 'TS000404', '96', '20230123B1', '103.00', '15685.00', '2023-06-29 12:01:54', '2023-06-29 12:01:54'),
(479, 'TS000405', '102', '20230124C1', '1626.00', '12235.00', '2023-06-29 12:05:01', '2023-06-29 12:05:01'),
(480, 'TS000406', '105', '20230124C1', '294.00', '12235.00', '2023-06-29 12:05:01', '2023-06-29 12:05:01'),
(481, 'TS000407', '101', '20230124C1', '8536.00', '9640.00', '2023-06-29 12:05:01', '2023-06-29 12:05:01'),
(482, 'TS000408', '96', '20230124C1', '87.00', '15685.00', '2023-06-29 12:05:01', '2023-06-29 12:05:01'),
(483, 'TS000409', '105', '20230124A1', '1522.00', '12235.00', '2023-06-29 12:08:53', '2023-06-29 12:08:53'),
(484, 'TS000410', '101', '20230124A1', '7578.00', '9640.00', '2023-06-29 12:08:53', '2023-06-29 12:08:53'),
(485, 'TS000411', '96', '20230124A1', '181.00', '15685.00', '2023-06-29 12:08:53', '2023-06-29 12:08:53'),
(486, 'TS000412', '105', '20230125B1', '1464.00', '12235.00', '2023-06-29 12:15:41', '2023-06-29 12:15:41'),
(487, 'TS000413', '101', '20230125B1', '1196.00', '9640.00', '2023-06-29 12:15:41', '2023-06-29 12:15:41'),
(488, 'TS000414', '103', '20230125B1', '6868.00', '9640.00', '2023-06-29 12:15:41', '2023-06-29 12:15:41'),
(489, 'TS000415', '96', '20230125B1', '102.00', '15685.00', '2023-06-29 12:15:41', '2023-06-29 12:15:41'),
(490, 'TS000416', '105', '20230125B15', '2014.00', '12235.00', '2023-06-29 12:19:57', '2023-06-29 12:19:57'),
(491, 'TS000417', '103', '20230125B15', '6546.00', '9640.00', '2023-06-29 12:19:57', '2023-06-29 12:19:57'),
(492, 'TS000418', '96', '20230125B15', '238.00', '15685.00', '2023-06-29 12:19:57', '2023-06-29 12:19:57'),
(493, 'TS000419', '105', '20230126A1', '1400.00', '12235.00', '2023-06-29 12:24:58', '2023-06-29 12:24:58'),
(494, 'TS000420', '103', '20230126A1', '2586.00', '9640.00', '2023-06-29 12:24:58', '2023-06-29 12:24:58'),
(495, 'TS000421', '104', '20230126A1', '5297.00', '9640.00', '2023-06-29 12:24:58', '2023-06-29 12:24:58'),
(496, 'TS000422', '96', '20230126A1', '130.00', '15685.00', '2023-06-29 12:24:58', '2023-06-29 12:24:58'),
(497, 'TS000423', '105', '20230126B1', '1306.00', '12235.00', '2023-06-29 12:28:43', '2023-06-29 12:28:43'),
(498, 'TS000424', '107', '20230126B1', '395.00', '12235.00', '2023-06-29 12:28:43', '2023-06-29 12:28:43'),
(499, 'TS000425', '104', '20230126B1', '6863.00', '9640.00', '2023-06-29 12:28:43', '2023-06-29 12:28:43'),
(500, 'TS000426', '96', '20230126B1', '313.00', '15685.00', '2023-06-29 12:28:43', '2023-06-29 12:28:43'),
(501, 'TS000427', '107', '20230127C1', '1463.00', '12235.00', '2023-06-29 12:42:24', '2023-06-29 12:42:24'),
(502, 'TS000428', '104', '20230127C1', '3840.00', '9640.00', '2023-06-29 12:42:24', '2023-06-29 12:42:24'),
(503, 'TS000429', '106', '20230127C1', '4433.00', '9640.00', '2023-06-29 12:42:24', '2023-06-29 12:42:24'),
(504, 'TS000430', '96', '20230127C1', '28.00', '15685.00', '2023-06-29 12:42:24', '2023-06-29 12:42:24'),
(505, 'TS000431', '112', '20230127C1', '209.00', '15685.00', '2023-06-29 12:42:24', '2023-06-29 12:42:24'),
(509, 'TS000432', '107', '20230127A1', '1470.00', '12235.00', '2023-06-29 12:47:07', '2023-06-29 12:47:07'),
(510, 'TS000433', '106', '20230127A1', '7401.00', '9640.00', '2023-06-29 12:47:07', '2023-06-29 12:47:07'),
(511, 'TS000434', '112', '20230127A1', '189.00', '15685.00', '2023-06-29 12:47:07', '2023-06-29 12:47:07'),
(512, 'TS000435', '107', '20230128B1', '1344.00', '12235.00', '2023-06-29 12:52:13', '2023-06-29 12:52:13'),
(513, 'TS000436', '106', '20230128B1', '4166.00', '9640.00', '2023-06-29 12:52:13', '2023-06-29 12:52:13'),
(514, 'TS000437', '108', '20230128B1', '4403.00', '9640.00', '2023-06-29 12:52:13', '2023-06-29 12:52:13'),
(515, 'TS000438', '112', '20230128B1', '152.00', '15685.00', '2023-06-29 12:52:13', '2023-06-29 12:52:13'),
(516, 'TS000439', '107', '20230128C1', '2241.00', '12235.00', '2023-06-29 12:57:16', '2023-06-29 12:57:16'),
(517, 'TS000440', '108', '20230128C1', '6135.00', '9640.00', '2023-06-29 12:57:16', '2023-06-29 12:57:16'),
(518, 'TS000441', '112', '20230128C1', '142.00', '15685.00', '2023-06-29 12:57:16', '2023-06-29 12:57:16'),
(519, 'TS000442', '107', '20230129A1', '1087.00', '12235.00', '2023-06-29 13:07:18', '2023-06-29 13:07:18'),
(520, 'TS000443', '109', '20230129A1', '657.00', '12235.00', '2023-06-29 13:07:18', '2023-06-29 13:07:18'),
(521, 'TS000444', '108', '20230129A1', '5462.00', '9640.00', '2023-06-29 13:07:18', '2023-06-29 13:07:18'),
(522, 'TS000445', '110', '20230129A1', '2295.00', '9640.00', '2023-06-29 13:07:18', '2023-06-29 13:07:18'),
(523, 'TS000446', '112', '20230129A1', '70.00', '15685.00', '2023-06-29 13:07:18', '2023-06-29 13:07:18'),
(524, 'TS000447', '109', '20230129B1', '1958.00', '12235.00', '2023-06-29 13:11:30', '2023-06-29 13:11:30'),
(525, 'TS000448', '110', '20230129B1', '6750.00', '9640.00', '2023-06-29 13:11:30', '2023-06-29 13:11:30'),
(526, 'TS000449', '112', '20230129B1', '287.00', '15685.00', '2023-06-29 13:11:30', '2023-06-29 13:11:30'),
(527, 'TS000450', '109', '20230130C1', '1764.00', '12235.00', '2023-06-29 13:16:31', '2023-06-29 13:16:31'),
(528, 'TS000451', '110', '20230130C1', '7703.00', '9640.00', '2023-06-29 13:16:31', '2023-06-29 13:16:31'),
(529, 'TS000452', '112', '20230130C1', '122.00', '15685.00', '2023-06-29 13:16:31', '2023-06-29 13:16:31'),
(530, 'TS000453', '109', '20230130A1', '3621.00', '12235.00', '2023-06-29 13:19:27', '2023-06-29 13:19:27'),
(531, 'TS000454', '113', '20230130A1', '1491.00', '12235.00', '2023-06-29 13:19:27', '2023-06-29 13:19:27'),
(532, 'TS000455', '110', '20230130A1', '2146.00', '9640.00', '2023-06-29 13:19:27', '2023-06-29 13:19:27'),
(533, 'TS000456', '113', '20230131B1', '1677.00', '12235.00', '2023-06-29 13:28:25', '2023-06-29 13:28:25'),
(534, 'TS000457', '110', '20230131B1', '8047.00', '9640.00', '2023-06-29 13:28:25', '2023-06-29 13:28:25'),
(535, 'TS000458', '112', '20230131B1', '19.00', '15685.00', '2023-06-29 13:28:25', '2023-06-29 13:28:25'),
(536, 'TS000459', '113', '20230131C1', '1790.00', '12235.00', '2023-06-29 13:32:57', '2023-06-29 13:32:57'),
(537, 'TS000460', '110', '20230131C1', '7535.00', '9640.00', '2023-06-29 13:32:57', '2023-06-29 13:32:57'),
(538, 'TS000461', '112', '20230131C1', '177.00', '15685.00', '2023-06-29 13:32:57', '2023-06-29 13:32:57'),
(539, 'TS000462', '113', '20230131A1', '1615.00', '12235.00', '2023-06-29 13:41:20', '2023-06-29 13:41:20'),
(540, 'TS000463', '110', '20230131A1', '5524.00', '9640.00', '2023-06-29 13:41:20', '2023-06-29 13:41:20'),
(541, 'TS000464', '111', '20230131A1', '2598.00', '9640.00', '2023-06-29 13:41:20', '2023-06-29 13:41:20'),
(542, 'TS000465', '112', '20230131A1', '113.00', '15685.00', '2023-06-29 13:41:20', '2023-06-29 13:41:20'),
(543, 'TS000466', '113', '20230201B1', '1427.00', '12235.00', '2023-06-30 01:39:57', '2023-06-30 01:39:57'),
(544, 'TS000467', '116', '20230201B1', '370.00', '12235.00', '2023-06-30 01:39:57', '2023-06-30 01:39:57'),
(545, 'TS000468', '111', '20230201B1', '6442.00', '9640.00', '2023-06-30 01:39:57', '2023-06-30 01:39:57'),
(546, 'TS000469', '112', '20230201B1', '196.00', '15685.00', '2023-06-30 01:39:57', '2023-06-30 01:39:57'),
(547, 'TS000470', '116', '20230202C1', '1486.00', '12235.00', '2023-06-30 04:11:14', '2023-06-30 04:11:14'),
(548, 'TS000471', '111', '20230202C1', '6960.00', '9640.00', '2023-06-30 04:11:14', '2023-06-30 04:11:14'),
(549, 'TS000472', '114', '20230202C1', '1205.00', '9640.00', '2023-06-30 04:11:14', '2023-06-30 04:11:14'),
(550, 'TS000473', '112', '20230202C1', '231.00', '15685.00', '2023-06-30 04:11:14', '2023-06-30 04:11:14'),
(551, 'TS000474', '116', '20230202A1', '2283.00', '12235.00', '2023-06-30 04:16:51', '2023-06-30 04:16:51'),
(552, 'TS000475', '114', '20230202A1', '6725.00', '9640.00', '2023-06-30 04:16:51', '2023-06-30 04:16:51'),
(553, 'TS000476', '112', '20230202A1', '205.00', '15685.00', '2023-06-30 04:16:51', '2023-06-30 04:16:51'),
(554, 'TS000477', '116', '20230203B1', '1720.00', '12235.00', '2023-06-30 04:22:26', '2023-06-30 04:22:26'),
(555, 'TS000478', '114', '20230203B1', '8070.00', '9640.00', '2023-06-30 04:22:26', '2023-06-30 04:22:26'),
(556, 'TS000479', '115', '20230203B1', '207.00', '9640.00', '2023-06-30 04:22:26', '2023-06-30 04:22:26'),
(557, 'TS000480', '112', '20230203B1', '84.00', '15685.00', '2023-06-30 04:22:26', '2023-06-30 04:22:26'),
(558, 'TS000481', '116', '20230203C1', '1995.00', '12235.00', '2023-06-30 04:27:13', '2023-06-30 04:27:13'),
(559, 'TS000482', '115', '20230203C1', '7385.00', '9640.00', '2023-06-30 04:27:13', '2023-06-30 04:27:13'),
(560, 'TS000483', '112', '20230203C1', '359.00', '15685.00', '2023-06-30 04:27:13', '2023-06-30 04:27:13'),
(561, 'TS000484', '116', '20230204A1', '146.00', '12235.00', '2023-06-30 04:41:20', '2023-06-30 04:41:20'),
(562, 'TS000485', '118', '20230204A1', '1610.00', '12235.00', '2023-06-30 04:41:20', '2023-06-30 04:41:20'),
(563, 'TS000486', '115', '20230204A1', '7720.00', '9640.00', '2023-06-30 04:41:20', '2023-06-30 04:41:20'),
(564, 'TS000487', '112', '20230204A1', '304.00', '15685.00', '2023-06-30 04:41:20', '2023-06-30 04:41:20'),
(565, 'TS000488', '118', '20230204A15', '1953.00', '12235.00', '2023-06-30 04:44:45', '2023-06-30 04:44:45'),
(566, 'TS000489', '115', '20230204A15', '688.00', '9640.00', '2023-06-30 04:44:45', '2023-06-30 04:44:45'),
(567, 'TS000490', '117', '20230204A15', '5940.00', '9640.00', '2023-06-30 04:44:45', '2023-06-30 04:44:45'),
(568, 'TS000491', '112', '20230204A15', '238.00', '15685.00', '2023-06-30 04:44:45', '2023-06-30 04:44:45'),
(569, 'TS000492', '118', '20230205C1', '1673.00', '12235.00', '2023-06-30 04:48:25', '2023-06-30 04:48:25'),
(570, 'TS000493', '117', '20230205C1', '7391.00', '9640.00', '2023-06-30 04:48:25', '2023-06-30 04:48:25'),
(571, 'TS000494', '112', '20230205C1', '76.00', '15685.00', '2023-06-30 04:48:25', '2023-06-30 04:48:25'),
(572, 'TS000495', '118', '20230205A1', '1165.00', '12235.00', '2023-06-30 04:52:14', '2023-06-30 04:52:14'),
(573, 'TS000496', '117', '20230205A1', '2669.00', '9640.00', '2023-06-30 04:52:14', '2023-06-30 04:52:14'),
(574, 'TS000497', '119', '20230205A1', '4213.00', '9640.00', '2023-06-30 04:52:14', '2023-06-30 04:52:14'),
(575, 'TS000498', '112', '20230205A1', '207.00', '15685.00', '2023-06-30 04:52:14', '2023-06-30 04:52:14'),
(576, 'TS000499', '118', '20230206B1', '1513.00', '12235.00', '2023-06-30 04:56:21', '2023-06-30 04:56:21'),
(577, 'TS000500', '119', '20230206B1', '5000.00', '9640.00', '2023-06-30 04:56:21', '2023-06-30 04:56:21'),
(578, 'TS000501', '112', '20230206B1', '39.00', '15685.00', '2023-06-30 04:56:21', '2023-06-30 04:56:21'),
(579, 'TS000502', '118', '20230206C1', '86.00', '12235.00', '2023-06-30 04:59:49', '2023-06-30 04:59:49'),
(580, 'TS000503', '120', '20230206C1', '3204.00', '12235.00', '2023-06-30 04:59:49', '2023-06-30 04:59:49'),
(581, 'TS000504', '119', '20230206C1', '4234.00', '9640.00', '2023-06-30 04:59:49', '2023-06-30 04:59:49'),
(582, 'TS000505', '112', '20230206C1', '285.00', '15685.00', '2023-06-30 04:59:49', '2023-06-30 04:59:49'),
(583, 'TS000506', '120', '20230207A1', '1686.00', '12235.00', '2023-06-30 05:03:25', '2023-06-30 05:03:25'),
(584, 'TS000507', '119', '20230207A1', '8570.00', '9640.00', '2023-06-30 05:03:25', '2023-06-30 05:03:25'),
(585, 'TS000508', '112', '20230207A1', '102.00', '15685.00', '2023-06-30 05:03:25', '2023-06-30 05:03:25'),
(586, 'TS000509', '120', '20230207B1', '1738.00', '12235.00', '2023-06-30 05:07:05', '2023-06-30 05:07:05'),
(587, 'TS000510', '119', '20230207B1', '7146.00', '9640.00', '2023-06-30 05:07:05', '2023-06-30 05:07:05'),
(588, 'TS000511', '112', '20230207B1', '194.00', '15685.00', '2023-06-30 05:07:05', '2023-06-30 05:07:05'),
(589, 'TS000512', '124', '20230207B1', '140.00', '15685.00', '2023-06-30 05:07:05', '2023-06-30 05:07:05'),
(590, 'TS000513', '120', '20230208C1', '1372.00', '12235.00', '2023-06-30 05:15:35', '2023-06-30 05:15:35'),
(591, 'TS000514', '125', '20230208C1', '216.00', '12235.00', '2023-06-30 05:15:35', '2023-06-30 05:15:35'),
(592, 'TS000515', '119', '20230208C1', '7462.00', '9640.00', '2023-06-30 05:15:35', '2023-06-30 05:15:35'),
(593, 'TS000516', '124', '20230208C1', '61.00', '15685.00', '2023-06-30 05:15:35', '2023-06-30 05:15:35'),
(594, 'TS000517', '125', '20230208A1', '1918.00', '12235.00', '2023-06-30 05:24:42', '2023-06-30 05:24:42'),
(595, 'TS000518', '119', '20230208A1', '3375.00', '9640.00', '2023-06-30 05:24:42', '2023-06-30 05:24:42'),
(596, 'TS000519', '121', '20230208A1', '3978.00', '9640.00', '2023-06-30 05:24:42', '2023-06-30 05:24:42'),
(597, 'TS000520', '124', '20230208A1', '260.00', '15685.00', '2023-06-30 05:24:42', '2023-06-30 05:24:42'),
(598, 'TS000521', '125', '20230209B1', '1401.00', '12235.00', '2023-06-30 05:46:30', '2023-06-30 05:46:30'),
(599, 'TS000522', '121', '20230209B1', '4022.00', '9640.00', '2023-06-30 05:46:30', '2023-06-30 05:46:30'),
(600, 'TS000523', '122', '20230209B1', '4252.00', '9640.00', '2023-06-30 05:46:30', '2023-06-30 05:46:30'),
(601, 'TS000524', '124', '20230209B1', '152.00', '15685.00', '2023-06-30 05:46:30', '2023-06-30 05:46:30'),
(602, 'TS000525', '125', '20230209A1', '1693.00', '12235.00', '2023-06-30 05:50:53', '2023-06-30 05:50:53'),
(603, 'TS000526', '122', '20230209A1', '7222.00', '9640.00', '2023-06-30 05:50:54', '2023-06-30 05:50:54'),
(604, 'TS000527', '124', '20230209A1', '227.00', '15685.00', '2023-06-30 05:50:54', '2023-06-30 05:50:54'),
(605, 'TS000528', '125', '20230210A1', '1301.00', '12235.00', '2023-06-30 05:55:56', '2023-06-30 05:55:56'),
(606, 'TS000529', '122', '20230210A1', '4526.00', '9640.00', '2023-06-30 05:55:56', '2023-06-30 05:55:56'),
(607, 'TS000530', '123', '20230210A1', '2522.00', '9640.00', '2023-06-30 05:55:56', '2023-06-30 05:55:56'),
(608, 'TS000531', '124', '20230210A1', '282.00', '15685.00', '2023-06-30 05:55:56', '2023-06-30 05:55:56'),
(609, 'TS000532', '125', '20230210B1', '1471.00', '12235.00', '2023-06-30 05:59:50', '2023-06-30 05:59:50'),
(610, 'TS000533', '127', '20230210B1', '285.00', '12235.00', '2023-06-30 05:59:50', '2023-06-30 05:59:50'),
(611, 'TS000534', '123', '20230210B1', '6748.00', '9640.00', '2023-06-30 05:59:50', '2023-06-30 05:59:50'),
(612, 'TS000535', '124', '20230210B1', '200.00', '15685.00', '2023-06-30 05:59:50', '2023-06-30 05:59:50'),
(613, 'TS000536', '127', '20230211C1', '1478.00', '12235.00', '2023-06-30 06:03:35', '2023-06-30 06:03:35'),
(614, 'TS000537', '123', '20230211C1', '6730.00', '9640.00', '2023-06-30 06:03:35', '2023-06-30 06:03:35'),
(615, 'TS000538', '126', '20230211C1', '2337.00', '9640.00', '2023-06-30 06:03:35', '2023-06-30 06:03:35'),
(616, 'TS000539', '124', '20230211C1', '186.00', '15685.00', '2023-06-30 06:03:35', '2023-06-30 06:03:35'),
(617, 'TS000540', '127', '20230211A1', '1933.00', '12235.00', '2023-06-30 06:06:50', '2023-06-30 06:06:50'),
(618, 'TS000541', '126', '20230211A1', '7773.00', '9640.00', '2023-06-30 06:06:50', '2023-06-30 06:06:50'),
(619, 'TS000542', '124', '20230211A1', '157.00', '15685.00', '2023-06-30 06:06:50', '2023-06-30 06:06:50'),
(620, 'TS000543', '127', '20230212B1', '1852.00', '12235.00', '2023-06-30 06:14:11', '2023-06-30 06:14:11'),
(621, 'TS000544', '126', '20230212B1', '5890.00', '9640.00', '2023-06-30 06:14:11', '2023-06-30 06:14:11'),
(622, 'TS000545', '128', '20230212B1', '2187.00', '9640.00', '2023-06-30 06:14:11', '2023-06-30 06:14:11'),
(623, 'TS000546', '124', '20230212B1', '239.00', '15685.00', '2023-06-30 06:14:11', '2023-06-30 06:14:11'),
(624, 'TS000547', '127', '20230212C1', '1801.00', '12235.00', '2023-06-30 06:19:16', '2023-06-30 06:19:16'),
(625, 'TS000548', '128', '20230212C1', '7779.00', '9640.00', '2023-06-30 06:19:16', '2023-06-30 06:19:16'),
(626, 'TS000549', '124', '20230212C1', '261.00', '15685.00', '2023-06-30 06:19:16', '2023-06-30 06:19:16'),
(627, 'TS000550', '127', '20230213A1', '651.00', '12235.00', '2023-06-30 06:30:11', '2023-06-30 06:30:11'),
(628, 'TS000551', '129', '20230213A1', '1561.00', '12235.00', '2023-06-30 06:30:11', '2023-06-30 06:30:11'),
(629, 'TS000552', '128', '20230213A1', '6789.00', '9640.00', '2023-06-30 06:30:11', '2023-06-30 06:30:11'),
(630, 'TS000553', '124', '20230213A1', '105.00', '15685.00', '2023-06-30 06:30:11', '2023-06-30 06:30:11'),
(631, 'TS000554', '129', '20230213B1', '1772.00', '12235.00', '2023-06-30 06:35:48', '2023-06-30 06:35:48'),
(632, 'TS000555', '128', '20230213B1', '7064.00', '9640.00', '2023-06-30 06:35:48', '2023-06-30 06:35:48'),
(633, 'TS000556', '124', '20230213B1', '293.00', '15685.00', '2023-06-30 06:35:48', '2023-06-30 06:35:48'),
(634, 'TS000557', '129', '20230214C1', '1560.00', '12235.00', '2023-06-30 06:40:27', '2023-06-30 06:40:27'),
(635, 'TS000558', '128', '20230214C1', '8751.00', '9640.00', '2023-06-30 06:40:27', '2023-06-30 06:40:27'),
(636, 'TS000559', '124', '20230214C1', '123.00', '15685.00', '2023-06-30 06:40:27', '2023-06-30 06:40:27'),
(637, 'TS000560', '129', '20230214A1', '3070.00', '12235.00', '2023-06-30 06:43:58', '2023-06-30 06:43:58'),
(638, 'TS000561', '128', '20230214A1', '5333.00', '9640.00', '2023-06-30 06:43:58', '2023-06-30 06:43:58'),
(639, 'TS000562', '124', '20230214A1', '214.00', '15685.00', '2023-06-30 06:43:58', '2023-06-30 06:43:58'),
(640, 'TS000563', '129', '20230215B1', '37.00', '12235.00', '2023-06-30 06:53:15', '2023-06-30 06:53:15'),
(641, 'TS000564', '132', '20230215B1', '920.00', '12235.00', '2023-06-30 06:53:15', '2023-06-30 06:53:15'),
(642, 'TS000565', '128', '20230215B1', '2097.00', '9640.00', '2023-06-30 06:53:15', '2023-06-30 06:53:15'),
(643, 'TS000566', '130', '20230215B1', '6442.00', '9640.00', '2023-06-30 06:53:15', '2023-06-30 06:53:15'),
(644, 'TS000567', '124', '20230215B1', '99.00', '15685.00', '2023-06-30 06:53:15', '2023-06-30 06:53:15'),
(645, 'TS000568', '132', '20230215C1', '3988.00', '12235.00', '2023-06-30 06:57:27', '2023-06-30 06:57:27'),
(646, 'TS000569', '130', '20230215C1', '4814.00', '9640.00', '2023-06-30 06:57:27', '2023-06-30 06:57:27'),
(647, 'TS000570', '124', '20230215C1', '200.00', '15685.00', '2023-06-30 06:57:27', '2023-06-30 06:57:27'),
(648, 'TS000571', '132', '20230216A1', '1499.00', '12235.00', '2023-06-30 07:05:44', '2023-06-30 07:05:44'),
(649, 'TS000572', '130', '20230216A1', '4744.00', '9640.00', '2023-06-30 07:05:44', '2023-06-30 07:05:44'),
(650, 'TS000573', '131', '20230216A1', '4080.00', '9640.00', '2023-06-30 07:05:44', '2023-06-30 07:05:44'),
(651, 'TS000574', '124', '20230216A1', '61.00', '15685.00', '2023-06-30 07:05:44', '2023-06-30 07:05:44'),
(652, 'TS000575', '132', '20230216B1', '1593.00', '12235.00', '2023-06-30 07:09:56', '2023-06-30 07:09:56'),
(653, 'TS000576', '135', '20230216B1', '702.00', '12235.00', '2023-06-30 07:09:56', '2023-06-30 07:09:56'),
(654, 'TS000577', '131', '20230216B1', '7656.00', '9640.00', '2023-06-30 07:09:56', '2023-06-30 07:09:56'),
(655, 'TS000578', '124', '20230216B1', '178.00', '15685.00', '2023-06-30 07:09:56', '2023-06-30 07:09:56'),
(656, 'TS000579', '135', '20230217C1', '1393.00', '12235.00', '2023-06-30 07:29:03', '2023-06-30 07:29:03'),
(657, 'TS000580', '131', '20230217C1', '4264.00', '9640.00', '2023-06-30 07:29:03', '2023-06-30 07:29:03'),
(658, 'TS000581', '133', '20230217C1', '3744.00', '9640.00', '2023-06-30 07:29:03', '2023-06-30 07:29:03'),
(659, 'TS000582', '124', '20230217C1', '62.00', '15685.00', '2023-06-30 07:29:03', '2023-06-30 07:29:03'),
(660, 'TS000583', '135', '20230217A1', '2003.00', '12235.00', '2023-06-30 07:32:15', '2023-06-30 07:32:15'),
(661, 'TS000584', '133', '20230217A1', '6987.00', '9640.00', '2023-06-30 07:32:15', '2023-06-30 07:32:15'),
(662, 'TS000585', '124', '20230217A1', '435.00', '15685.00', '2023-06-30 07:32:15', '2023-06-30 07:32:15'),
(663, 'TS000586', '135', '20230218B1', '1756.00', '12235.00', '2023-06-30 07:36:01', '2023-06-30 07:36:01'),
(664, 'TS000587', '133', '20230218B1', '5269.00', '9640.00', '2023-06-30 07:36:01', '2023-06-30 07:36:01'),
(665, 'TS000588', '134', '20230218B1', '2593.00', '9640.00', '2023-06-30 07:36:01', '2023-06-30 07:36:01'),
(666, 'TS000589', '124', '20230218B1', '65.00', '15685.00', '2023-06-30 07:36:01', '2023-06-30 07:36:01'),
(667, 'TS000590', '137', '20230218B1', '11.00', '15685.00', '2023-06-30 07:36:01', '2023-06-30 07:36:01'),
(668, 'TS000591', '135', '20230218C1', '2035.00', '12235.00', '2023-06-30 07:40:01', '2023-06-30 07:40:01'),
(669, 'TS000592', '134', '20230218C1', '7262.00', '9640.00', '2023-06-30 07:40:01', '2023-06-30 07:40:01'),
(670, 'TS000593', '137', '20230218C1', '153.00', '15685.00', '2023-06-30 07:40:01', '2023-06-30 07:40:01'),
(671, 'TS000594', '135', '20230219A1', '1839.00', '12235.00', '2023-06-30 07:44:02', '2023-06-30 07:44:02'),
(672, 'TS000595', '134', '20230219A1', '6145.00', '9640.00', '2023-06-30 07:44:02', '2023-06-30 07:44:02'),
(673, 'TS000596', '136', '20230219A1', '2250.00', '9640.00', '2023-06-30 07:44:02', '2023-06-30 07:44:02'),
(674, 'TS000597', '137', '20230219A1', '240.00', '15685.00', '2023-06-30 07:44:02', '2023-06-30 07:44:02'),
(675, 'TS000598', '135', '20230219B1', '1352.00', '12235.00', '2023-06-30 07:47:42', '2023-06-30 07:47:42'),
(676, 'TS000599', '136', '20230219B1', '7177.00', '9640.00', '2023-06-30 07:47:42', '2023-06-30 07:47:42'),
(677, 'TS000600', '137', '20230219B1', '145.00', '15685.00', '2023-06-30 07:47:42', '2023-06-30 07:47:42'),
(678, 'TS000601', '135', '20230220C1', '1536.00', '12235.00', '2023-06-30 08:10:10', '2023-06-30 08:10:10'),
(679, 'TS000602', '136', '20230220C1', '7521.00', '9640.00', '2023-06-30 08:10:10', '2023-06-30 08:10:10'),
(680, 'TS000603', '137', '20230220C1', '189.00', '15685.00', '2023-06-30 08:10:10', '2023-06-30 08:10:10'),
(681, 'TS000604', '135', '20230220A1', '3384.00', '12235.00', '2023-06-30 08:15:09', '2023-06-30 08:15:09'),
(682, 'TS000605', '139', '20230220A1', '565.00', '12235.00', '2023-06-30 08:15:09', '2023-06-30 08:15:09'),
(683, 'TS000606', '136', '20230220A1', '3261.00', '9640.00', '2023-06-30 08:15:10', '2023-06-30 08:15:10'),
(684, 'TS000607', '137', '20230220A1', '332.00', '15685.00', '2023-06-30 08:15:10', '2023-06-30 08:15:10'),
(685, 'TS000608', '139', '20230221B1', '1433.00', '12235.00', '2023-06-30 08:18:51', '2023-06-30 08:18:51'),
(686, 'TS000609', '136', '20230221B1', '8880.00', '9640.00', '2023-06-30 08:18:51', '2023-06-30 08:18:51'),
(687, 'TS000610', '137', '20230221B1', '62.00', '15685.00', '2023-06-30 08:18:51', '2023-06-30 08:18:51'),
(688, 'TS000611', '139', '20230221C1', '1738.00', '12235.00', '2023-06-30 08:22:49', '2023-06-30 08:22:49'),
(689, 'TS000612', '136', '20230221C1', '7589.00', '9640.00', '2023-06-30 08:22:49', '2023-06-30 08:22:49'),
(690, 'TS000613', '137', '20230221C1', '146.00', '15685.00', '2023-06-30 08:22:49', '2023-06-30 08:22:49'),
(691, 'TS000614', '139', '20230222A1', '1821.00', '12235.00', '2023-06-30 08:44:49', '2023-06-30 08:44:49'),
(692, 'TS000615', '136', '20230222A1', '3322.00', '9640.00', '2023-06-30 08:44:49', '2023-06-30 08:44:49'),
(693, 'TS000616', '138', '20230222A1', '5169.00', '9640.00', '2023-06-30 08:44:49', '2023-06-30 08:44:49'),
(694, 'TS000617', '137', '20230222A1', '171.00', '15685.00', '2023-06-30 08:44:49', '2023-06-30 08:44:49'),
(695, 'TS000618', '139', '20230222B1', '2000.00', '12235.00', '2023-06-30 08:49:52', '2023-06-30 08:49:52'),
(696, 'TS000619', '138', '20230222B1', '7056.00', '9640.00', '2023-06-30 08:49:52', '2023-06-30 08:49:52'),
(697, 'TS000620', '137', '20230222B1', '171.00', '15685.00', '2023-06-30 08:49:52', '2023-06-30 08:49:52'),
(698, 'TS000621', '139', '20230223C1', '443.00', '12235.00', '2023-06-30 08:53:53', '2023-06-30 08:53:53'),
(699, 'TS000622', '142', '20230223C1', '966.00', '12235.00', '2023-06-30 08:53:53', '2023-06-30 08:53:53'),
(700, 'TS000623', '138', '20230223C1', '3775.00', '9640.00', '2023-06-30 08:53:53', '2023-06-30 08:53:53'),
(701, 'TS000624', '140', '20230223C1', '4640.00', '9640.00', '2023-06-30 08:53:53', '2023-06-30 08:53:53'),
(702, 'TS000625', '137', '20230223C1', '180.00', '15685.00', '2023-06-30 08:53:53', '2023-06-30 08:53:53'),
(703, 'TS000626', '142', '20230223A1', '1453.00', '12235.00', '2023-06-30 08:57:07', '2023-06-30 08:57:07'),
(704, 'TS000627', '140', '20230223A1', '7254.00', '9640.00', '2023-06-30 08:57:07', '2023-06-30 08:57:07'),
(705, 'TS000628', '137', '20230223A1', '207.00', '15685.00', '2023-06-30 08:57:07', '2023-06-30 08:57:07'),
(706, 'TS000629', '142', '20230224C1', '2169.00', '12235.00', '2023-06-30 09:00:29', '2023-06-30 09:00:29'),
(707, 'TS000630', '140', '20230224C1', '4106.00', '9640.00', '2023-06-30 09:00:29', '2023-06-30 09:00:29'),
(708, 'TS000631', '141', '20230224C1', '3124.00', '9640.00', '2023-06-30 09:00:29', '2023-06-30 09:00:29'),
(709, 'TS000632', '137', '20230224C1', '82.00', '15685.00', '2023-06-30 09:00:29', '2023-06-30 09:00:29'),
(710, 'TS000633', '142', '20230224C15', '1263.00', '12235.00', '2023-06-30 09:03:47', '2023-06-30 09:03:47'),
(711, 'TS000634', '141', '20230224C15', '7976.00', '9640.00', '2023-06-30 09:03:47', '2023-06-30 09:03:47'),
(712, 'TS000635', '137', '20230224C15', '141.00', '15685.00', '2023-06-30 09:03:47', '2023-06-30 09:03:47'),
(713, 'TS000636', '142', '20230225A1', '1530.00', '12235.00', '2023-06-30 09:09:47', '2023-06-30 09:09:47'),
(714, 'TS000637', '141', '20230225A1', '4900.00', '9640.00', '2023-06-30 09:09:47', '2023-06-30 09:09:47'),
(715, 'TS000638', '143', '20230225A1', '3755.00', '9640.00', '2023-06-30 09:09:47', '2023-06-30 09:09:47'),
(716, 'TS000639', '137', '20230225A1', '75.00', '15685.00', '2023-06-30 09:09:47', '2023-06-30 09:09:47'),
(717, 'TS000640', '142', '20230225B1', '619.00', '12235.00', '2023-06-30 09:13:37', '2023-06-30 09:13:37'),
(718, 'TS000641', '144', '20230225B1', '1424.00', '12235.00', '2023-06-30 09:13:37', '2023-06-30 09:13:37'),
(719, 'TS000642', '143', '20230225B1', '6961.00', '9640.00', '2023-06-30 09:13:37', '2023-06-30 09:13:37'),
(720, 'TS000643', '137', '20230225B1', '114.00', '15685.00', '2023-06-30 09:13:37', '2023-06-30 09:13:37'),
(721, 'TS000644', '144', '20230226C1', '1689.00', '12235.00', '2023-06-30 09:17:32', '2023-06-30 09:17:32'),
(722, 'TS000645', '143', '20230226C1', '5284.00', '9640.00', '2023-06-30 09:17:32', '2023-06-30 09:17:32'),
(723, 'TS000646', '145', '20230226C1', '2990.00', '9640.00', '2023-06-30 09:17:32', '2023-06-30 09:17:32'),
(724, 'TS000647', '137', '20230226C1', '148.00', '15685.00', '2023-06-30 09:17:32', '2023-06-30 09:17:32'),
(725, 'TS000648', '144', '20230226A1', '1594.00', '12235.00', '2023-06-30 09:21:50', '2023-06-30 09:21:50'),
(726, 'TS000649', '145', '20230226A1', '7457.00', '9640.00', '2023-06-30 09:21:50', '2023-06-30 09:21:50'),
(727, 'TS000650', '137', '20230226A1', '267.00', '15685.00', '2023-06-30 09:21:50', '2023-06-30 09:21:50'),
(728, 'TS000651', '144', '20230227B1', '1950.00', '12235.00', '2023-06-30 09:25:40', '2023-06-30 09:25:40'),
(729, 'TS000652', '145', '20230227B1', '5805.00', '9640.00', '2023-06-30 09:25:40', '2023-06-30 09:25:40'),
(730, 'TS000653', '137', '20230227B1', '144.00', '15685.00', '2023-06-30 09:25:40', '2023-06-30 09:25:40'),
(731, 'TS000654', '144', '20230227C1', '1343.00', '12235.00', '2023-06-30 09:28:55', '2023-06-30 09:28:55'),
(732, 'TS000655', '146', '20230227C1', '1251.00', '12235.00', '2023-06-30 09:28:55', '2023-06-30 09:28:55'),
(733, 'TS000656', '145', '20230227C1', '5950.00', '9640.00', '2023-06-30 09:28:55', '2023-06-30 09:28:55'),
(734, 'TS000657', '137', '20230227C1', '314.00', '15685.00', '2023-06-30 09:28:55', '2023-06-30 09:28:55'),
(735, 'TS000658', '146', '20230228A1', '1357.00', '12235.00', '2023-06-30 09:35:16', '2023-06-30 09:35:16'),
(736, 'TS000659', '145', '20230228A1', '8145.00', '9640.00', '2023-06-30 09:35:16', '2023-06-30 09:35:16'),
(737, 'TS000660', '137', '20230228A1', '129.00', '15685.00', '2023-06-30 09:35:16', '2023-06-30 09:35:16'),
(738, 'TS000661', '146', '20230228B1', '1786.00', '12235.00', '2023-06-30 10:15:27', '2023-06-30 10:15:27'),
(739, 'TS000662', '145', '20230228B1', '7099.00', '9640.00', '2023-06-30 10:15:27', '2023-06-30 10:15:27'),
(740, 'TS000663', '137', '20230228B1', '192.00', '15685.00', '2023-06-30 10:15:27', '2023-06-30 10:15:27'),
(741, 'TS000664', '146', '20230301C1', '358.00', '12235.00', '2023-07-03 04:03:31', '2023-07-03 04:03:31'),
(742, 'TS000665', '145', '20230301C1', '1657.00', '9640.00', '2023-07-03 04:03:31', '2023-07-03 04:03:31'),
(764, 'TS000666', '146', '20230228C1', '1245.00', '12235.00', '2023-07-03 04:34:41', '2023-07-03 04:34:41'),
(765, 'TS000667', '145', '20230228C1', '897.00', '9640.00', '2023-07-03 04:34:41', '2023-07-03 04:34:41'),
(766, 'TS000668', '147', '20230228C1', '5014.00', '9640.00', '2023-07-03 04:34:41', '2023-07-03 04:34:41'),
(767, 'TS000669', '137', '20230228C1', '166.00', '15685.00', '2023-07-03 04:34:41', '2023-07-03 04:34:41'),
(768, 'TS000670', '146', '20230301A1', '1922.00', '12235.00', '2023-07-03 05:12:29', '2023-07-03 05:12:29'),
(769, 'TS000671', '147', '20230301A1', '7286.00', '9640.00', '2023-07-03 05:12:30', '2023-07-03 05:12:30'),
(770, 'TS000672', '137', '20230301A1', '221.00', '15685.00', '2023-07-03 05:12:30', '2023-07-03 05:12:30'),
(771, 'TS000673', '155', '20230301A1', '207.00', '14485.00', '2023-07-03 05:12:30', '2023-07-03 05:12:30'),
(772, 'TS000674', '146', '20230302B1', '81.00', '12235.00', '2023-07-03 05:23:43', '2023-07-03 05:23:43'),
(773, 'TS000675', '153', '20230302B1', '1715.00', '12735.00', '2023-07-03 05:23:43', '2023-07-03 05:23:43'),
(774, 'TS000676', '147', '20230302B1', '3700.00', '9640.00', '2023-07-03 05:23:43', '2023-07-03 05:23:43'),
(775, 'TS000677', '148', '20230302B1', '4743.00', '9640.00', '2023-07-03 05:23:43', '2023-07-03 05:23:43'),
(776, 'TS000678', '155', '20230302B1', '160.00', '14485.00', '2023-07-03 05:23:44', '2023-07-03 05:23:44'),
(777, 'TS000679', '153', '20230302C1', '1851.00', '12735.00', '2023-07-03 05:31:00', '2023-07-03 05:31:00'),
(778, 'TS000680', '148', '20230302C1', '8306.00', '9640.00', '2023-07-03 05:31:00', '2023-07-03 05:31:00'),
(779, 'TS000681', '155', '20230302C1', '165.00', '14485.00', '2023-07-03 05:31:00', '2023-07-03 05:31:00'),
(780, 'TS000682', '153', '20230303A1', '1701.00', '12735.00', '2023-07-03 05:40:40', '2023-07-03 05:40:40'),
(781, 'TS000683', '148', '20230303A1', '2951.00', '9640.00', '2023-07-03 05:40:40', '2023-07-03 05:40:40'),
(782, 'TS000684', '152', '20230303A1', '4881.00', '9640.00', '2023-07-03 05:40:40', '2023-07-03 05:40:40'),
(783, 'TS000685', '155', '20230303A1', '166.00', '14485.00', '2023-07-03 05:40:40', '2023-07-03 05:40:40'),
(784, 'TS000686', '153', '20230303B1', '2020.00', '12735.00', '2023-07-03 05:44:27', '2023-07-03 05:44:27'),
(785, 'TS000687', '152', '20230303B1', '7803.00', '9640.00', '2023-07-03 05:44:27', '2023-07-03 05:44:27'),
(786, 'TS000688', '155', '20230303B1', '364.00', '14485.00', '2023-07-03 05:44:27', '2023-07-03 05:44:27'),
(787, 'TS000689', '153', '20230304C1', '713.00', '12735.00', '2023-07-03 05:52:06', '2023-07-03 05:52:06'),
(788, 'TS000690', '158', '20230304C1', '1106.00', '12735.00', '2023-07-03 05:52:06', '2023-07-03 05:52:06'),
(789, 'TS000691', '152', '20230304C1', '3316.00', '9640.00', '2023-07-03 05:52:06', '2023-07-03 05:52:06'),
(790, 'TS000692', '154', '20230304C1', '5771.00', '9640.00', '2023-07-03 05:52:06', '2023-07-03 05:52:06'),
(791, 'TS000693', '155', '20230304C1', '209.00', '14485.00', '2023-07-03 05:52:06', '2023-07-03 05:52:06'),
(792, 'TS000694', '158', '20230304A1', '2136.00', '12735.00', '2023-07-03 05:56:32', '2023-07-03 05:56:32'),
(793, 'TS000695', '154', '20230304A1', '7174.00', '9640.00', '2023-07-03 05:56:32', '2023-07-03 05:56:32'),
(794, 'TS000696', '155', '20230304A1', '132.00', '14485.00', '2023-07-03 05:56:32', '2023-07-03 05:56:32'),
(795, 'TS000697', '158', '20230305B1', '1601.00', '12735.00', '2023-07-03 06:00:32', '2023-07-03 06:00:32'),
(796, 'TS000698', '154', '20230305B1', '3055.00', '9640.00', '2023-07-03 06:00:32', '2023-07-03 06:00:32'),
(797, 'TS000699', '159', '20230305B1', '5390.00', '9640.00', '2023-07-03 06:00:32', '2023-07-03 06:00:32'),
(798, 'TS000700', '155', '20230305B1', '230.00', '14485.00', '2023-07-03 06:00:32', '2023-07-03 06:00:32'),
(799, 'TS000701', '158', '20230305C1', '1611.00', '12735.00', '2023-07-03 06:04:07', '2023-07-03 06:04:07'),
(800, 'TS000702', '159', '20230305C1', '7223.00', '9640.00', '2023-07-03 06:04:07', '2023-07-03 06:04:07'),
(801, 'TS000703', '155', '20230305C1', '266.00', '14485.00', '2023-07-03 06:04:07', '2023-07-03 06:04:07'),
(802, 'TS000704', '158', '20230306A1', '1546.00', '12735.00', '2023-07-03 06:18:05', '2023-07-03 06:18:05'),
(803, 'TS000705', '160', '20230306A1', '2415.00', '12735.00', '2023-07-03 06:18:05', '2023-07-03 06:18:05'),
(804, 'TS000706', '159', '20230306A1', '3132.00', '9640.00', '2023-07-03 06:18:05', '2023-07-03 06:18:05'),
(805, 'TS000707', '155', '20230306A1', '301.00', '14485.00', '2023-07-03 06:18:05', '2023-07-03 06:18:05'),
(806, 'TS000708', '160', '20230306B1', '2770.00', '12735.00', '2023-07-03 06:22:12', '2023-07-03 06:22:12'),
(807, 'TS000709', '159', '20230306B1', '6611.00', '9640.00', '2023-07-03 06:22:12', '2023-07-03 06:22:12'),
(808, 'TS000710', '155', '20230306B1', '183.00', '14485.00', '2023-07-03 06:22:12', '2023-07-03 06:22:12'),
(809, 'TS000711', '160', '20230307B1', '1809.00', '12735.00', '2023-07-03 06:49:23', '2023-07-03 06:49:23');
INSERT INTO `tbltransaksi_stok` (`id_trans`, `kd_transStok`, `r_fifo`, `r_trans`, `stok_trans`, `harga_trans`, `created_at`, `updated_at`) VALUES
(810, 'TS000712', '159', '20230307B1', '8512.00', '9640.00', '2023-07-03 06:49:23', '2023-07-03 06:49:23'),
(811, 'TS000713', '155', '20230307B1', '90.00', '14485.00', '2023-07-03 06:49:23', '2023-07-03 06:49:23'),
(812, 'TS000714', '160', '20230307A1', '1006.00', '12735.00', '2023-07-03 06:57:27', '2023-07-03 06:57:27'),
(813, 'TS000715', '162', '20230307A1', '5256.00', '12735.00', '2023-07-03 06:57:27', '2023-07-03 06:57:27'),
(814, 'TS000716', '159', '20230307A1', '7.00', '9640.00', '2023-07-03 06:57:27', '2023-07-03 06:57:27'),
(815, 'TS000717', '155', '20230307A1', '188.00', '14485.00', '2023-07-03 06:57:27', '2023-07-03 06:57:27'),
(816, 'TS000718', '162', '20230308B1', '1582.00', '12735.00', '2023-07-03 07:58:59', '2023-07-03 07:58:59'),
(817, 'TS000719', '159', '20230308B1', '7668.00', '9640.00', '2023-07-03 07:58:59', '2023-07-03 07:58:59'),
(818, 'TS000720', '155', '20230308B1', '234.00', '14485.00', '2023-07-03 07:58:59', '2023-07-03 07:58:59'),
(819, 'TS000721', '162', '20230308C1', '1162.00', '12735.00', '2023-07-03 08:03:17', '2023-07-03 08:03:17'),
(820, 'TS000722', '165', '20230308C1', '994.00', '12735.00', '2023-07-03 08:03:17', '2023-07-03 08:03:17'),
(821, 'TS000723', '159', '20230308C1', '1457.00', '9640.00', '2023-07-03 08:03:17', '2023-07-03 08:03:17'),
(822, 'TS000724', '161', '20230308C1', '5377.00', '9640.00', '2023-07-03 08:03:17', '2023-07-03 08:03:17'),
(823, 'TS000725', '155', '20230308C1', '129.00', '14485.00', '2023-07-03 08:03:17', '2023-07-03 08:03:17'),
(824, 'TS000726', '165', '20230309A1', '1579.00', '12735.00', '2023-07-03 08:14:03', '2023-07-03 08:14:03'),
(825, 'TS000727', '161', '20230309A1', '8211.00', '9640.00', '2023-07-03 08:14:03', '2023-07-03 08:14:03'),
(826, 'TS000728', '155', '20230309A1', '114.00', '14485.00', '2023-07-03 08:14:03', '2023-07-03 08:14:03'),
(827, 'TS000729', '165', '20230309B1', '1766.00', '12735.00', '2023-07-03 08:18:06', '2023-07-03 08:18:06'),
(828, 'TS000730', '161', '20230309B1', '2412.00', '9640.00', '2023-07-03 08:18:06', '2023-07-03 08:18:06'),
(829, 'TS000731', '163', '20230309B1', '4461.00', '9640.00', '2023-07-03 08:18:06', '2023-07-03 08:18:06'),
(830, 'TS000732', '155', '20230309B1', '300.00', '14485.00', '2023-07-03 08:18:06', '2023-07-03 08:18:06'),
(831, 'TS000733', '165', '20230310C1', '1526.00', '12735.00', '2023-07-03 08:36:27', '2023-07-03 08:36:27'),
(832, 'TS000734', '163', '20230310C1', '7590.00', '9640.00', '2023-07-03 08:36:27', '2023-07-03 08:36:27'),
(833, 'TS000735', '155', '20230310C1', '106.00', '14485.00', '2023-07-03 08:36:27', '2023-07-03 08:36:27'),
(834, 'TS000736', '165', '20230310A1', '1340.00', '12735.00', '2023-07-03 08:39:58', '2023-07-03 08:39:58'),
(835, 'TS000737', '163', '20230310A1', '3949.00', '9640.00', '2023-07-03 08:39:58', '2023-07-03 08:39:58'),
(836, 'TS000738', '164', '20230310A1', '3838.00', '9640.00', '2023-07-03 08:39:58', '2023-07-03 08:39:58'),
(837, 'TS000739', '155', '20230310A1', '196.00', '14485.00', '2023-07-03 08:39:58', '2023-07-03 08:39:58'),
(838, 'TS000740', '165', '20230311B1', '795.00', '12735.00', '2023-07-03 08:45:43', '2023-07-03 08:45:43'),
(839, 'TS000741', '167', '20230311B1', '644.00', '12735.00', '2023-07-03 08:45:43', '2023-07-03 08:45:43'),
(840, 'TS000742', '164', '20230311B1', '7811.00', '9640.00', '2023-07-03 08:45:43', '2023-07-03 08:45:43'),
(841, 'TS000743', '155', '20230311B1', '92.00', '14485.00', '2023-07-03 08:45:43', '2023-07-03 08:45:43'),
(842, 'TS000744', '167', '20230311C1', '2012.00', '12735.00', '2023-07-03 08:50:04', '2023-07-03 08:50:04'),
(843, 'TS000745', '164', '20230311C1', '4351.00', '9640.00', '2023-07-03 08:50:04', '2023-07-03 08:50:04'),
(844, 'TS000746', '166', '20230311C1', '3378.00', '9640.00', '2023-07-03 08:50:04', '2023-07-03 08:50:04'),
(845, 'TS000747', '155', '20230311C1', '133.00', '14485.00', '2023-07-03 08:50:04', '2023-07-03 08:50:04'),
(846, 'TS000748', '167', '20230312A1', '1599.00', '12735.00', '2023-07-03 09:14:59', '2023-07-03 09:14:59'),
(847, 'TS000749', '166', '20230312A1', '8053.00', '9640.00', '2023-07-03 09:14:59', '2023-07-03 09:14:59'),
(848, 'TS000750', '155', '20230312A1', '34.00', '14485.00', '2023-07-03 09:14:59', '2023-07-03 09:14:59'),
(849, 'TS000751', '167', '20230312B1', '1605.00', '12735.00', '2023-07-03 09:19:43', '2023-07-03 09:19:43'),
(850, 'TS000752', '166', '20230312B1', '4569.00', '9640.00', '2023-07-03 09:19:43', '2023-07-03 09:19:43'),
(851, 'TS000753', '168', '20230312B1', '2264.00', '9640.00', '2023-07-03 09:19:43', '2023-07-03 09:19:43'),
(852, 'TS000754', '155', '20230312B1', '1.00', '14485.00', '2023-07-03 09:19:43', '2023-07-03 09:19:43'),
(853, 'TS000755', '171', '20230312B1', '158.00', '14485.00', '2023-07-03 09:19:43', '2023-07-03 09:19:43'),
(854, 'TS000756', '167', '20230313C1', '2140.00', '12735.00', '2023-07-03 09:32:58', '2023-07-03 09:32:58'),
(855, 'TS000757', '169', '20230313C1', '602.00', '12735.00', '2023-07-03 09:32:58', '2023-07-03 09:32:58'),
(856, 'TS000758', '168', '20230313C1', '5832.00', '9640.00', '2023-07-03 09:32:58', '2023-07-03 09:32:58'),
(857, 'TS000759', '171', '20230313C1', '158.00', '14485.00', '2023-07-03 09:32:58', '2023-07-03 09:32:58'),
(858, 'TS000760', '169', '20230313A1', '2918.00', '12735.00', '2023-07-03 09:37:23', '2023-07-03 09:37:23'),
(859, 'TS000761', '168', '20230313A1', '5856.00', '9640.00', '2023-07-03 09:37:23', '2023-07-03 09:37:23'),
(860, 'TS000762', '171', '20230313A1', '84.00', '14485.00', '2023-07-03 09:37:23', '2023-07-03 09:37:23'),
(861, 'TS000763', '169', '20230314B1', '1587.00', '12735.00', '2023-07-03 09:44:50', '2023-07-03 09:44:50'),
(862, 'TS000764', '168', '20230314B1', '9080.00', '9640.00', '2023-07-03 09:44:50', '2023-07-03 09:44:50'),
(863, 'TS000765', '171', '20230314B1', '130.00', '14485.00', '2023-07-03 09:44:50', '2023-07-03 09:44:50'),
(864, 'TS000766', '169', '20230314C1', '1897.00', '12735.00', '2023-07-03 09:49:17', '2023-07-03 09:49:17'),
(865, 'TS000767', '168', '20230314C1', '7809.00', '9640.00', '2023-07-03 09:49:18', '2023-07-03 09:49:18'),
(866, 'TS000768', '171', '20230314C1', '168.00', '14485.00', '2023-07-03 09:49:18', '2023-07-03 09:49:18'),
(867, 'TS000769', '169', '20230315A1', '996.00', '12735.00', '2023-07-03 10:09:11', '2023-07-03 10:09:11'),
(868, 'TS000770', '173', '20230315A1', '927.00', '12735.00', '2023-07-03 10:09:11', '2023-07-03 10:09:11'),
(869, 'TS000771', '168', '20230315A1', '7928.00', '9640.00', '2023-07-03 10:09:11', '2023-07-03 10:09:11'),
(870, 'TS000772', '171', '20230315A1', '13.00', '14485.00', '2023-07-03 10:09:11', '2023-07-03 10:09:11'),
(871, 'TS000773', '173', '20230315B1', '1676.00', '12735.00', '2023-07-03 10:14:26', '2023-07-03 10:14:26'),
(872, 'TS000774', '168', '20230315B1', '1231.00', '9640.00', '2023-07-03 10:14:26', '2023-07-03 10:14:26'),
(873, 'TS000775', '170', '20230315B1', '5797.00', '9640.00', '2023-07-03 10:14:26', '2023-07-03 10:14:26'),
(874, 'TS000776', '171', '20230315B1', '274.00', '14485.00', '2023-07-03 10:14:26', '2023-07-03 10:14:26'),
(875, 'TS000777', '173', '20230316C1', '1465.00', '12735.00', '2023-07-03 11:48:57', '2023-07-03 11:48:57'),
(876, 'TS000778', '170', '20230316C1', '2203.00', '9640.00', '2023-07-03 11:48:57', '2023-07-03 11:48:57'),
(877, 'TS000779', '172', '20230316C1', '6404.00', '9640.00', '2023-07-03 11:48:57', '2023-07-03 11:48:57'),
(878, 'TS000780', '171', '20230316C1', '127.00', '14485.00', '2023-07-03 11:48:57', '2023-07-03 11:48:57'),
(879, 'TS000781', '173', '20230316A1', '1511.00', '12735.00', '2023-07-03 11:52:39', '2023-07-03 11:52:39'),
(880, 'TS000782', '172', '20230316A1', '7831.00', '9640.00', '2023-07-03 11:52:39', '2023-07-03 11:52:39'),
(881, 'TS000783', '171', '20230316A1', '381.00', '14485.00', '2023-07-03 11:52:39', '2023-07-03 11:52:39'),
(882, 'TS000784', '173', '20230317B1', '1684.00', '12735.00', '2023-07-04 02:00:02', '2023-07-04 02:00:02'),
(883, 'TS000785', '172', '20230317B1', '1765.00', '9640.00', '2023-07-04 02:00:02', '2023-07-04 02:00:02'),
(884, 'TS000786', '174', '20230317B1', '6218.00', '9640.00', '2023-07-04 02:00:02', '2023-07-04 02:00:02'),
(885, 'TS000787', '171', '20230317B1', '33.00', '14485.00', '2023-07-04 02:00:02', '2023-07-04 02:00:02'),
(886, 'TS000788', '173', '20230317C1', '737.00', '12735.00', '2023-07-04 02:21:10', '2023-07-04 02:21:10'),
(887, 'TS000789', '176', '20230317C1', '403.00', '12735.00', '2023-07-04 02:21:10', '2023-07-04 02:21:10'),
(888, 'TS000790', '174', '20230317C1', '7852.00', '9640.00', '2023-07-04 02:21:10', '2023-07-04 02:21:10'),
(889, 'TS000791', '171', '20230317C1', '356.00', '14485.00', '2023-07-04 02:21:10', '2023-07-04 02:21:10'),
(890, 'TS000792', '176', '20230318A1', '1827.00', '12735.00', '2023-07-04 04:01:30', '2023-07-04 04:01:30'),
(891, 'TS000793', '174', '20230318A1', '1930.00', '9640.00', '2023-07-04 04:01:30', '2023-07-04 04:01:30'),
(892, 'TS000794', '175', '20230318A1', '7046.00', '9640.00', '2023-07-04 04:01:30', '2023-07-04 04:01:30'),
(893, 'TS000795', '171', '20230318A1', '156.00', '14485.00', '2023-07-04 04:01:30', '2023-07-04 04:01:30'),
(894, 'TS000796', '176', '20230318B1', '1395.00', '12735.00', '2023-07-04 04:04:35', '2023-07-04 04:04:35'),
(895, 'TS000797', '175', '20230318B1', '8410.00', '9640.00', '2023-07-04 04:04:35', '2023-07-04 04:04:35'),
(896, 'TS000798', '171', '20230318B1', '148.00', '14485.00', '2023-07-04 04:04:35', '2023-07-04 04:04:35'),
(897, 'TS000799', '176', '20230319C1', '1629.00', '12735.00', '2023-07-04 04:11:26', '2023-07-04 04:11:26'),
(898, 'TS000800', '175', '20230319C1', '544.00', '9640.00', '2023-07-04 04:11:26', '2023-07-04 04:11:26'),
(899, 'TS000801', '177', '20230319C1', '8100.00', '9640.00', '2023-07-04 04:11:26', '2023-07-04 04:11:26'),
(900, 'TS000802', '171', '20230319C1', '94.00', '14485.00', '2023-07-04 04:11:26', '2023-07-04 04:11:26'),
(901, 'TS000803', '176', '20230319A1', '1267.00', '12735.00', '2023-07-04 04:14:51', '2023-07-04 04:14:51'),
(902, 'TS000804', '177', '20230319A1', '5347.00', '9640.00', '2023-07-04 04:14:51', '2023-07-04 04:14:51'),
(903, 'TS000805', '171', '20230319A1', '72.00', '14485.00', '2023-07-04 04:14:51', '2023-07-04 04:14:51'),
(904, 'TS000806', '176', '20230320B1', '1479.00', '12735.00', '2023-07-04 04:19:02', '2023-07-04 04:19:02'),
(905, 'TS000807', '178', '20230320B1', '2498.00', '12735.00', '2023-07-04 04:19:02', '2023-07-04 04:19:02'),
(906, 'TS000808', '177', '20230320B1', '2668.00', '9640.00', '2023-07-04 04:19:02', '2023-07-04 04:19:02'),
(907, 'TS000809', '171', '20230320B1', '180.00', '14485.00', '2023-07-04 04:19:02', '2023-07-04 04:19:02'),
(908, 'TS000810', '178', '20230320C1', '1692.00', '12735.00', '2023-07-04 04:22:04', '2023-07-04 04:22:04'),
(909, 'TS000811', '177', '20230320C1', '7962.00', '9640.00', '2023-07-04 04:22:04', '2023-07-04 04:22:04'),
(910, 'TS000812', '171', '20230320C1', '397.00', '14485.00', '2023-07-04 04:22:04', '2023-07-04 04:22:04'),
(911, 'TS000813', '178', '20230321A1', '3051.00', '12735.00', '2023-07-04 04:25:53', '2023-07-04 04:25:53'),
(912, 'TS000814', '177', '20230321A1', '7551.00', '9640.00', '2023-07-04 04:25:53', '2023-07-04 04:25:53'),
(913, 'TS000815', '171', '20230321A1', '193.00', '14485.00', '2023-07-04 04:25:53', '2023-07-04 04:25:53'),
(914, 'TS000816', '178', '20230321B1', '1546.00', '12735.00', '2023-07-04 04:29:26', '2023-07-04 04:29:26'),
(915, 'TS000817', '177', '20230321B1', '6620.00', '9640.00', '2023-07-04 04:29:26', '2023-07-04 04:29:26'),
(916, 'TS000818', '171', '20230321B1', '84.00', '14485.00', '2023-07-04 04:29:26', '2023-07-04 04:29:26'),
(917, 'TS000819', '178', '20230322C1', '1578.00', '12735.00', '2023-07-04 05:01:24', '2023-07-04 05:01:24'),
(918, 'TS000820', '177', '20230322C1', '1752.00', '9640.00', '2023-07-04 05:01:24', '2023-07-04 05:01:24'),
(919, 'TS000821', '179', '20230322C1', '5331.00', '9640.00', '2023-07-04 05:01:24', '2023-07-04 05:01:24'),
(920, 'TS000822', '171', '20230322C1', '191.00', '14485.00', '2023-07-04 05:01:24', '2023-07-04 05:01:24'),
(921, 'TS000823', '178', '20230322C15', '1618.00', '12735.00', '2023-07-04 05:07:01', '2023-07-04 05:07:01'),
(922, 'TS000824', '179', '20230322C15', '6667.00', '9640.00', '2023-07-04 05:07:01', '2023-07-04 05:07:01'),
(923, 'TS000825', '171', '20230322C15', '220.00', '14485.00', '2023-07-04 05:07:01', '2023-07-04 05:07:01'),
(924, 'TS000826', '178', '20230323C1', '281.00', '12735.00', '2023-07-04 05:13:48', '2023-07-04 05:13:48'),
(925, 'TS000827', '179', '20230323C1', '1154.00', '9640.00', '2023-07-04 05:13:48', '2023-07-04 05:13:48'),
(926, 'TS000828', '171', '20230323C1', '3.00', '14485.00', '2023-07-04 05:13:48', '2023-07-04 05:13:48'),
(927, 'TS000829', '178', '20230323A1', '1780.00', '12735.00', '2023-07-04 05:22:44', '2023-07-04 05:22:44'),
(928, 'TS000830', '179', '20230323A1', '8460.00', '9640.00', '2023-07-04 05:22:44', '2023-07-04 05:22:44'),
(929, 'TS000831', '171', '20230323A1', '46.00', '14485.00', '2023-07-04 05:22:45', '2023-07-04 05:22:45'),
(930, 'TS000832', '178', '20230324B1', '1956.00', '12735.00', '2023-07-04 05:28:41', '2023-07-04 05:28:41'),
(931, 'TS000833', '180', '20230324B1', '25.00', '12735.00', '2023-07-04 05:28:41', '2023-07-04 05:28:41'),
(932, 'TS000834', '179', '20230324B1', '5255.00', '9640.00', '2023-07-04 05:28:41', '2023-07-04 05:28:41'),
(933, 'TS000835', '171', '20230324B1', '89.00', '14485.00', '2023-07-04 05:28:41', '2023-07-04 05:28:41'),
(934, 'TS000836', '180', '20230324C1', '2037.00', '12735.00', '2023-07-04 05:32:44', '2023-07-04 05:32:44'),
(935, 'TS000837', '179', '20230324C1', '7256.00', '9640.00', '2023-07-04 05:32:44', '2023-07-04 05:32:44'),
(936, 'TS000838', '171', '20230324C1', '115.00', '14485.00', '2023-07-04 05:32:44', '2023-07-04 05:32:44'),
(937, 'TS000839', '180', '20230325A1', '1671.00', '12735.00', '2023-07-04 05:39:18', '2023-07-04 05:39:18'),
(938, 'TS000840', '179', '20230325A1', '5877.00', '9640.00', '2023-07-04 05:39:18', '2023-07-04 05:39:18'),
(939, 'TS000841', '181', '20230325A1', '2319.00', '9640.00', '2023-07-04 05:39:18', '2023-07-04 05:39:18'),
(940, 'TS000842', '171', '20230325A1', '119.00', '14485.00', '2023-07-04 05:39:19', '2023-07-04 05:39:19'),
(941, 'TS000843', '180', '20230325B1', '1748.00', '12735.00', '2023-07-04 05:42:43', '2023-07-04 05:42:43'),
(942, 'TS000844', '181', '20230325B1', '7030.00', '9640.00', '2023-07-04 05:42:43', '2023-07-04 05:42:43'),
(943, 'TS000845', '171', '20230325B1', '11.00', '14485.00', '2023-07-04 05:42:43', '2023-07-04 05:42:43'),
(944, 'TS000846', '184', '20230325B1', '356.00', '14485.00', '2023-07-04 05:42:43', '2023-07-04 05:42:43'),
(945, 'TS000847', '180', '20230326C1', '1373.00', '12735.00', '2023-07-04 05:46:20', '2023-07-04 05:46:20'),
(946, 'TS000848', '181', '20230326C1', '8096.00', '9640.00', '2023-07-04 05:46:20', '2023-07-04 05:46:20'),
(947, 'TS000849', '184', '20230326C1', '228.00', '14485.00', '2023-07-04 05:46:20', '2023-07-04 05:46:20'),
(948, 'TS000850', '180', '20230326A1', '1146.00', '12735.00', '2023-07-04 05:49:56', '2023-07-04 05:49:56'),
(949, 'TS000851', '182', '20230326A1', '457.00', '12735.00', '2023-07-04 05:49:56', '2023-07-04 05:49:56'),
(950, 'TS000852', '181', '20230326A1', '6370.00', '9640.00', '2023-07-04 05:49:56', '2023-07-04 05:49:56'),
(951, 'TS000853', '184', '20230326A1', '188.00', '14485.00', '2023-07-04 05:49:56', '2023-07-04 05:49:56'),
(952, 'TS000854', '182', '20230327B1', '2412.00', '12735.00', '2023-07-04 05:57:24', '2023-07-04 05:57:24'),
(953, 'TS000855', '181', '20230327B1', '5457.00', '9640.00', '2023-07-04 05:57:24', '2023-07-04 05:57:24'),
(954, 'TS000856', '184', '20230327B1', '113.00', '14485.00', '2023-07-04 05:57:24', '2023-07-04 05:57:24'),
(955, 'TS000857', '182', '20230327C1', '4504.00', '12735.00', '2023-07-04 06:00:17', '2023-07-04 06:00:17'),
(956, 'TS000858', '181', '20230327C1', '1293.00', '9640.00', '2023-07-04 06:00:18', '2023-07-04 06:00:18'),
(957, 'TS000859', '184', '20230327C1', '228.00', '14485.00', '2023-07-04 06:00:18', '2023-07-04 06:00:18'),
(958, 'TS000860', '182', '20230328A1', '627.00', '12735.00', '2023-07-04 06:03:32', '2023-07-04 06:03:32'),
(959, 'TS000861', '187', '20230328A1', '689.00', '12735.00', '2023-07-04 06:03:32', '2023-07-04 06:03:32'),
(960, 'TS000862', '181', '20230328A1', '7892.00', '9640.00', '2023-07-04 06:03:32', '2023-07-04 06:03:32'),
(961, 'TS000863', '184', '20230328A1', '153.00', '14485.00', '2023-07-04 06:03:32', '2023-07-04 06:03:32'),
(962, 'TS000864', '187', '20230328B1', '1950.00', '12735.00', '2023-07-04 06:06:54', '2023-07-04 06:06:54'),
(963, 'TS000865', '181', '20230328B1', '1543.00', '9640.00', '2023-07-04 06:06:54', '2023-07-04 06:06:54'),
(964, 'TS000866', '183', '20230328B1', '4686.00', '9640.00', '2023-07-04 06:06:54', '2023-07-04 06:06:54'),
(965, 'TS000867', '184', '20230328B1', '245.00', '14485.00', '2023-07-04 06:06:54', '2023-07-04 06:06:54'),
(966, 'TS000868', '187', '20230329C1', '2746.00', '12735.00', '2023-07-04 06:25:57', '2023-07-04 06:25:57'),
(967, 'TS000869', '183', '20230329C1', '2673.00', '9640.00', '2023-07-04 06:25:57', '2023-07-04 06:25:57'),
(968, 'TS000870', '184', '20230329C1', '101.00', '14485.00', '2023-07-04 06:25:57', '2023-07-04 06:25:57'),
(969, 'TS000871', '187', '20230329A1', '1383.00', '12735.00', '2023-07-04 06:29:24', '2023-07-04 06:29:24'),
(970, 'TS000872', '183', '20230329A1', '7967.00', '9640.00', '2023-07-04 06:29:24', '2023-07-04 06:29:24'),
(971, 'TS000873', '184', '20230329A1', '159.00', '14485.00', '2023-07-04 06:29:24', '2023-07-04 06:29:24'),
(972, 'TS000874', '187', '20230330B1', '1232.00', '12735.00', '2023-07-04 07:23:39', '2023-07-04 07:23:39'),
(973, 'TS000875', '189', '20230330B1', '189.00', '12735.00', '2023-07-04 07:23:39', '2023-07-04 07:23:39'),
(974, 'TS000876', '183', '20230330B1', '674.00', '9640.00', '2023-07-04 07:23:39', '2023-07-04 07:23:39'),
(975, 'TS000877', '185', '20230330B1', '6346.00', '9640.00', '2023-07-04 07:23:39', '2023-07-04 07:23:39'),
(976, 'TS000878', '184', '20230330B1', '168.00', '14485.00', '2023-07-04 07:23:39', '2023-07-04 07:23:39'),
(977, 'TS000879', '189', '20230330C1', '1268.00', '12735.00', '2023-07-04 07:27:07', '2023-07-04 07:27:07'),
(978, 'TS000880', '185', '20230330C1', '8013.00', '9640.00', '2023-07-04 07:27:07', '2023-07-04 07:27:07'),
(979, 'TS000881', '184', '20230330C1', '249.00', '14485.00', '2023-07-04 07:27:07', '2023-07-04 07:27:07'),
(980, 'TS000882', '189', '20230331A1', '1600.00', '12735.00', '2023-07-04 07:31:19', '2023-07-04 07:31:19'),
(981, 'TS000883', '185', '20230331A1', '1641.00', '9640.00', '2023-07-04 07:31:19', '2023-07-04 07:31:19'),
(982, 'TS000884', '186', '20230331A1', '5409.00', '9640.00', '2023-07-04 07:31:19', '2023-07-04 07:31:19'),
(983, 'TS000885', '184', '20230331A1', '101.00', '14485.00', '2023-07-04 07:31:19', '2023-07-04 07:31:19'),
(984, 'TS000886', '189', '20230331A15', '1600.00', '12735.00', '2023-07-04 08:05:00', '2023-07-04 08:05:00'),
(985, 'TS000887', '186', '20230331A15', '7050.00', '9640.00', '2023-07-04 08:05:00', '2023-07-04 08:05:00'),
(986, 'TS000888', '184', '20230331A15', '101.00', '14485.00', '2023-07-04 08:05:00', '2023-07-04 08:05:00'),
(987, 'TS000889', '189', '20230331B1', '1658.00', '12735.00', '2023-07-04 08:08:09', '2023-07-04 08:08:09'),
(988, 'TS000890', '186', '20230331B1', '3541.00', '9640.00', '2023-07-04 08:08:09', '2023-07-04 08:08:09'),
(989, 'TS000891', '188', '20230331B1', '3759.00', '9640.00', '2023-07-04 08:08:09', '2023-07-04 08:08:09'),
(990, 'TS000892', '184', '20230331B1', '307.00', '14485.00', '2023-07-04 08:08:09', '2023-07-04 08:08:09'),
(1065, 'TS000967', '1', '20230401C1', '997.00', '12235.00', '2023-08-19 02:51:13', '2023-08-19 02:51:13'),
(1066, 'TS000968', '2', '20230401C1', '7322.00', '9640.00', '2023-08-19 02:51:13', '2023-08-19 02:51:13'),
(1067, 'TS000969', '3', '20230401C1', '262.00', '15685.00', '2023-08-19 02:51:13', '2023-08-19 02:51:13'),
(1068, 'TS000970', '1', '20230401A1', '1438.00', '12235.00', '2023-08-19 02:56:36', '2023-08-19 02:56:36'),
(1069, 'TS000971', '2', '20230401A1', '3413.00', '9640.00', '2023-08-19 02:56:36', '2023-08-19 02:56:36'),
(1070, 'TS000972', '188', '20230401A1', '4241.00', '9640.00', '2023-08-19 02:56:36', '2023-08-19 02:56:36'),
(1071, 'TS000973', '190', '20230401A1', '123.00', '9640.00', '2023-08-19 02:56:36', '2023-08-19 02:56:36'),
(1072, 'TS000974', '3', '20230401A1', '242.00', '15685.00', '2023-08-19 02:56:36', '2023-08-19 02:56:36'),
(1073, 'TS000975', '1', '20230402B1', '1673.00', '12235.00', '2023-08-19 03:25:18', '2023-08-19 03:25:18'),
(1074, 'TS000976', '190', '20230402B1', '2958.00', '9640.00', '2023-08-19 03:25:18', '2023-08-19 03:25:18'),
(1075, 'TS000977', '72', '20230402B1', '5540.00', '9640.00', '2023-08-19 03:25:18', '2023-08-19 03:25:18'),
(1076, 'TS000978', '3', '20230402B1', '213.00', '15685.00', '2023-08-19 03:25:18', '2023-08-19 03:25:18'),
(1077, 'TS000979', '1', '20230402C1', '1540.00', '12235.00', '2023-08-19 03:31:13', '2023-08-19 03:31:13'),
(1078, 'TS000980', '72', '20230402C1', '2320.00', '9640.00', '2023-08-19 03:31:13', '2023-08-19 03:31:13'),
(1079, 'TS000981', '78', '20230402C1', '2052.00', '9640.00', '2023-08-19 03:31:13', '2023-08-19 03:31:13'),
(1080, 'TS000982', '192', '20230402C1', '2473.00', '9640.00', '2023-08-19 03:31:13', '2023-08-19 03:31:13'),
(1081, 'TS000983', '3', '20230402C1', '264.00', '15685.00', '2023-08-19 03:31:13', '2023-08-19 03:31:13'),
(1082, 'TS000984', '1', '20230403A1', '1921.00', '12235.00', '2023-08-19 05:46:54', '2023-08-19 05:46:54'),
(1083, 'TS000985', '189', '20230403A1', '997.00', '12735.00', '2023-08-19 05:46:54', '2023-08-19 05:46:54'),
(1084, 'TS000986', '56', '20230403A1', '1540.00', '12735.00', '2023-08-19 05:46:54', '2023-08-19 05:46:54'),
(1085, 'TS000987', '78', '20230403A1', '1623.00', '9640.00', '2023-08-19 05:46:54', '2023-08-19 05:46:54'),
(1086, 'TS000988', '3', '20230403A1', '102.00', '15685.00', '2023-08-19 05:46:54', '2023-08-19 05:46:54'),
(1087, 'TS000989', '56', '20230403B1', '2985.00', '12735.00', '2023-08-19 05:50:03', '2023-08-19 05:50:03'),
(1088, 'TS000990', '78', '20230403B1', '3904.00', '9640.00', '2023-08-19 05:50:03', '2023-08-19 05:50:03'),
(1089, 'TS000991', '192', '20230403B1', '1615.00', '9640.00', '2023-08-19 05:50:03', '2023-08-19 05:50:03'),
(1090, 'TS000992', '3', '20230403B1', '260.00', '15685.00', '2023-08-19 05:50:03', '2023-08-19 05:50:03'),
(1121, 'TS000993', '1', 'OP0920233', '1870.00', '12235.00', '2023-09-07 10:43:56', '2023-09-07 10:43:56'),
(1122, 'TS000994', '72', 'OP0920233', '4996.00', '9640.00', '2023-09-07 10:43:56', '2023-09-07 10:43:56'),
(1123, 'TS000995', '3', 'OP0920233', '80.00', '15685.00', '2023-09-07 10:43:56', '2023-09-07 10:43:56'),
(1124, 'TS000996', '1', 'OP0920234', '984.00', '12235.00', '2023-09-07 10:46:06', '2023-09-07 10:46:06'),
(1125, 'TS000997', '56', 'OP0920234', '536.00', '12735.00', '2023-09-07 10:46:06', '2023-09-07 10:46:06'),
(1126, 'TS000998', '72', 'OP0920234', '1440.00', '9640.00', '2023-09-07 10:46:06', '2023-09-07 10:46:06'),
(1127, 'TS000999', '3', 'OP0920234', '100.00', '15685.00', '2023-09-07 10:46:06', '2023-09-07 10:46:06'),
(1128, 'TS001000', '56', 'OP0920235', '2890.00', '12735.00', '2023-09-07 10:48:15', '2023-09-07 10:48:15'),
(1129, 'TS001001', '72', 'OP0920235', '1685.00', '9640.00', '2023-09-07 10:48:15', '2023-09-07 10:48:15'),
(1130, 'TS001002', '78', 'OP0920235', '1675.00', '9640.00', '2023-09-07 10:48:15', '2023-09-07 10:48:15'),
(1131, 'TS001003', '3', 'OP0920235', '240.00', '15685.00', '2023-09-07 10:48:15', '2023-09-07 10:48:15'),
(1132, 'TS001004', '189', '20230404C1', '688.00', '12735.00', '2023-09-11 04:41:35', '2023-09-11 04:41:35'),
(1133, 'TS001005', '206', '20230404C1', '1499.00', '12735.00', '2023-09-11 04:41:35', '2023-09-11 04:41:35'),
(1134, 'TS001006', '190', '20230404C1', '7630.00', '9640.00', '2023-09-11 04:41:35', '2023-09-11 04:41:35'),
(1135, 'TS001007', '3', '20230404C1', '48.00', '15685.00', '2023-09-11 04:41:35', '2023-09-11 04:41:35'),
(1136, 'TS001008', '206', '20230404A1', '1747.00', '12735.00', '2023-09-11 04:47:10', '2023-09-11 04:47:10'),
(1137, 'TS001009', '190', '20230404A1', '7412.00', '9640.00', '2023-09-11 04:47:10', '2023-09-11 04:47:10'),
(1138, 'TS001010', '3', '20230404A1', '70.00', '15685.00', '2023-09-11 04:47:10', '2023-09-11 04:47:10'),
(1139, 'TS001011', '206', '20230406A1', '1197.00', '12735.00', '2023-09-11 04:54:30', '2023-09-11 04:54:30'),
(1140, 'TS001012', '190', '20230406A1', '8254.00', '9640.00', '2023-09-11 04:54:30', '2023-09-11 04:54:30'),
(1141, 'TS001013', '3', '20230406A1', '39.00', '15685.00', '2023-09-11 04:54:30', '2023-09-11 04:54:30'),
(1142, 'TS001014', '206', '20230406B1', '1730.00', '12735.00', '2023-09-11 05:01:40', '2023-09-11 05:01:40'),
(1143, 'TS001015', '190', '20230406B1', '5623.00', '9640.00', '2023-09-11 05:01:40', '2023-09-11 05:01:40'),
(1144, 'TS001016', '207', '20230406B1', '1636.00', '9640.00', '2023-09-11 05:01:40', '2023-09-11 05:01:40'),
(1145, 'TS001017', '3', '20230406B1', '232.00', '15685.00', '2023-09-11 05:01:40', '2023-09-11 05:01:40'),
(1146, 'TS001018', '206', '20230407C1', '1298.00', '12735.00', '2023-09-11 05:12:22', '2023-09-11 05:12:22'),
(1147, 'TS001019', '207', '20230407C1', '7428.00', '9640.00', '2023-09-11 05:12:22', '2023-09-11 05:12:22'),
(1148, 'TS001020', '3', '20230407C1', '77.00', '15685.00', '2023-09-11 05:12:22', '2023-09-11 05:12:22'),
(1149, 'TS001021', '206', '20230407A1', '529.00', '12735.00', '2023-09-11 05:17:06', '2023-09-11 05:17:06'),
(1150, 'TS001022', '208', '20230407A1', '1266.00', '12735.00', '2023-09-11 05:17:06', '2023-09-11 05:17:06'),
(1151, 'TS001023', '207', '20230407A1', '6812.00', '9640.00', '2023-09-11 05:17:06', '2023-09-11 05:17:06'),
(1152, 'TS001024', '3', '20230407A1', '190.00', '15685.00', '2023-09-11 05:17:06', '2023-09-11 05:17:06'),
(1153, 'TS001025', '208', '20230408B1', '1479.00', '12735.00', '2023-09-11 05:24:00', '2023-09-11 05:24:00'),
(1154, 'TS001026', '207', '20230408B1', '124.00', '9640.00', '2023-09-11 05:24:00', '2023-09-11 05:24:00'),
(1155, 'TS001027', '235', '20230408B1', '7722.00', '9640.00', '2023-09-11 05:24:00', '2023-09-11 05:24:00'),
(1156, 'TS001028', '3', '20230408B1', '166.00', '15685.00', '2023-09-11 05:24:00', '2023-09-11 05:24:00'),
(1157, 'TS001029', '208', '20230408C1', '1571.00', '12735.00', '2023-09-11 05:28:04', '2023-09-11 05:28:04'),
(1158, 'TS001030', '235', '20230408C1', '7588.00', '9640.00', '2023-09-11 05:28:04', '2023-09-11 05:28:04'),
(1159, 'TS001031', '3', '20230408C1', '235.00', '15685.00', '2023-09-11 05:28:04', '2023-09-11 05:28:04'),
(1160, 'TS001032', '208', '20230409A1', '1298.00', '12735.00', '2023-09-11 05:35:02', '2023-09-11 05:35:02'),
(1161, 'TS001033', '235', '20230409A1', '690.00', '9640.00', '2023-09-11 05:35:02', '2023-09-11 05:35:02'),
(1162, 'TS001034', '209', '20230409A1', '7359.00', '9640.00', '2023-09-11 05:35:02', '2023-09-11 05:35:02'),
(1163, 'TS001035', '3', '20230409A1', '21.00', '15685.00', '2023-09-11 05:35:02', '2023-09-11 05:35:02'),
(1164, 'TS001036', '208', '20230409B1', '1598.00', '12735.00', '2023-09-11 05:40:12', '2023-09-11 05:40:12'),
(1165, 'TS001037', '209', '20230409B1', '6850.00', '9640.00', '2023-09-11 05:40:12', '2023-09-11 05:40:12'),
(1166, 'TS001038', '3', '20230409B1', '86.00', '15685.00', '2023-09-11 05:40:12', '2023-09-11 05:40:12'),
(1167, 'TS001039', '208', '20230410C1', '788.00', '12735.00', '2023-09-11 05:44:37', '2023-09-11 05:44:37'),
(1168, 'TS001040', '210', '20230410C1', '792.00', '12735.00', '2023-09-11 05:44:37', '2023-09-11 05:44:37'),
(1169, 'TS001041', '209', '20230410C1', '1791.00', '9640.00', '2023-09-11 05:44:37', '2023-09-11 05:44:37'),
(1170, 'TS001042', '211', '20230410C1', '5728.00', '9640.00', '2023-09-11 05:44:37', '2023-09-11 05:44:37'),
(1171, 'TS001043', '3', '20230410C1', '49.00', '15685.00', '2023-09-11 05:44:37', '2023-09-11 05:44:37'),
(1172, 'TS001044', '210', '20230410A1', '1758.00', '12735.00', '2023-09-11 05:47:58', '2023-09-11 05:47:58'),
(1173, 'TS001045', '211', '20230410A1', '8923.00', '9640.00', '2023-09-11 05:47:58', '2023-09-11 05:47:58'),
(1174, 'TS001046', '3', '20230410A1', '230.00', '15685.00', '2023-09-11 05:47:58', '2023-09-11 05:47:58'),
(1175, 'TS001047', '210', '20230411B1', '1831.00', '12735.00', '2023-09-11 05:56:17', '2023-09-11 05:56:17'),
(1176, 'TS001048', '211', '20230411B1', '7230.00', '9640.00', '2023-09-11 05:56:17', '2023-09-11 05:56:17'),
(1177, 'TS001049', '3', '20230411B1', '49.00', '15685.00', '2023-09-11 05:56:17', '2023-09-11 05:56:17'),
(1178, 'TS001050', '210', '20230411C1', '1378.00', '12735.00', '2023-09-11 06:01:17', '2023-09-11 06:01:17'),
(1179, 'TS001051', '211', '20230411C1', '7658.00', '9640.00', '2023-09-11 06:01:17', '2023-09-11 06:01:17'),
(1180, 'TS001052', '3', '20230411C1', '71.00', '15685.00', '2023-09-11 06:01:17', '2023-09-11 06:01:17'),
(1181, 'TS001053', '210', '20230412A1', '1604.00', '12735.00', '2023-09-11 06:39:14', '2023-09-11 06:39:14'),
(1182, 'TS001054', '211', '20230412A1', '8345.00', '9640.00', '2023-09-11 06:39:14', '2023-09-11 06:39:14'),
(1183, 'TS001055', '3', '20230412A1', '3.00', '15685.00', '2023-09-11 06:39:14', '2023-09-11 06:39:14'),
(1184, 'TS001056', '184', '20230412A1', '174.00', '14485.00', '2023-09-11 06:39:14', '2023-09-11 06:39:14'),
(1185, 'TS001057', '210', '20230412B1', '637.00', '12735.00', '2023-09-11 06:42:32', '2023-09-11 06:42:32'),
(1186, 'TS001058', '225', '20230412B1', '1122.00', '12735.00', '2023-09-11 06:42:32', '2023-09-11 06:42:32'),
(1187, 'TS001059', '211', '20230412B1', '7368.00', '9640.00', '2023-09-11 06:42:32', '2023-09-11 06:42:32'),
(1188, 'TS001060', '184', '20230412B1', '283.00', '14485.00', '2023-09-11 06:42:32', '2023-09-11 06:42:32'),
(1189, 'TS001061', '225', '20230413C1', '1664.00', '12735.00', '2023-09-11 07:01:21', '2023-09-11 07:01:21'),
(1190, 'TS001062', '211', '20230413C1', '7700.00', '9640.00', '2023-09-11 07:01:21', '2023-09-11 07:01:21'),
(1191, 'TS001063', '184', '20230413C1', '84.00', '14485.00', '2023-09-11 07:01:21', '2023-09-11 07:01:21'),
(1192, 'TS001064', '225', '20230413A1', '1183.00', '12735.00', '2023-09-11 07:06:17', '2023-09-11 07:06:17'),
(1193, 'TS001065', '211', '20230413A1', '3048.00', '9640.00', '2023-09-11 07:06:17', '2023-09-11 07:06:17'),
(1194, 'TS001066', '226', '20230413A1', '2316.00', '9640.00', '2023-09-11 07:06:17', '2023-09-11 07:06:17'),
(1195, 'TS001067', '184', '20230413A1', '239.00', '14485.00', '2023-09-11 07:06:17', '2023-09-11 07:06:17'),
(1196, 'TS001068', '225', '20230414B1', '1713.00', '12735.00', '2023-09-11 07:44:47', '2023-09-11 07:44:47'),
(1197, 'TS001069', '226', '20230414B1', '7781.00', '9640.00', '2023-09-11 07:44:47', '2023-09-11 07:44:47'),
(1198, 'TS001070', '184', '20230414B1', '123.00', '14485.00', '2023-09-11 07:44:47', '2023-09-11 07:44:47'),
(1199, 'TS001071', '225', '20230414C1', '1983.00', '12735.00', '2023-09-11 07:53:51', '2023-09-11 07:53:51'),
(1200, 'TS001072', '226', '20230414C1', '5903.00', '9640.00', '2023-09-11 07:53:51', '2023-09-11 07:53:51'),
(1201, 'TS001073', '227', '20230414C1', '1724.00', '9640.00', '2023-09-11 07:53:51', '2023-09-11 07:53:51'),
(1202, 'TS001074', '184', '20230414C1', '99.00', '14485.00', '2023-09-11 07:53:51', '2023-09-11 07:53:51'),
(1203, 'TS001075', '225', '20230415A1', '335.00', '12735.00', '2023-09-11 08:09:30', '2023-09-11 08:09:30'),
(1204, 'TS001076', '216', '20230415A1', '1416.00', '12735.00', '2023-09-11 08:09:30', '2023-09-11 08:09:30'),
(1205, 'TS001077', '227', '20230415A1', '8015.00', '9640.00', '2023-09-11 08:09:30', '2023-09-11 08:09:30'),
(1206, 'TS001078', '184', '20230415A1', '118.00', '14485.00', '2023-09-11 08:09:30', '2023-09-11 08:09:30'),
(1207, 'TS001079', '216', '20230415B1', '1507.00', '12735.00', '2023-09-11 08:16:16', '2023-09-11 08:16:16'),
(1208, 'TS001080', '227', '20230415B1', '6261.00', '9640.00', '2023-09-11 08:16:16', '2023-09-11 08:16:16'),
(1209, 'TS001081', '217', '20230415B1', '1476.00', '9640.00', '2023-09-11 08:16:16', '2023-09-11 08:16:16'),
(1210, 'TS001082', '184', '20230415B1', '82.00', '14485.00', '2023-09-11 08:16:16', '2023-09-11 08:16:16'),
(1211, 'TS001083', '216', '20230416C1', '1552.00', '12735.00', '2023-09-11 08:48:49', '2023-09-11 08:48:49'),
(1212, 'TS001084', '217', '20230416C1', '7652.00', '9640.00', '2023-09-11 08:48:49', '2023-09-11 08:48:49'),
(1213, 'TS001085', '184', '20230416C1', '101.00', '14485.00', '2023-09-11 08:48:49', '2023-09-11 08:48:49'),
(1214, 'TS001086', '224', '20230416C1', '69.00', '13785.00', '2023-09-11 08:48:49', '2023-09-11 08:48:49'),
(1215, 'TS001087', '216', '20230416A1', '1406.00', '12735.00', '2023-09-11 08:51:52', '2023-09-11 08:51:52'),
(1216, 'TS001088', '217', '20230416A1', '6872.00', '9640.00', '2023-09-11 08:51:52', '2023-09-11 08:51:52'),
(1217, 'TS001089', '203', '20230416A1', '287.00', '9640.00', '2023-09-11 08:51:52', '2023-09-11 08:51:52'),
(1218, 'TS001090', '224', '20230416A1', '138.00', '13785.00', '2023-09-11 08:51:52', '2023-09-11 08:51:52'),
(1219, 'TS001091', '216', '20230417B1', '1693.00', '12735.00', '2023-09-11 09:08:42', '2023-09-11 09:08:42'),
(1220, 'TS001092', '203', '20230417B1', '6924.00', '9640.00', '2023-09-11 09:08:42', '2023-09-11 09:08:42'),
(1221, 'TS001093', '224', '20230417B1', '132.00', '13785.00', '2023-09-11 09:08:42', '2023-09-11 09:08:42'),
(1222, 'TS001094', '216', '20230417C1', '426.00', '12735.00', '2023-09-11 09:13:13', '2023-09-11 09:13:13'),
(1223, 'TS001095', '212', '20230417C1', '1855.00', '12735.00', '2023-09-11 09:13:13', '2023-09-11 09:13:13'),
(1224, 'TS001096', '203', '20230417C1', '5874.00', '9640.00', '2023-09-11 09:13:13', '2023-09-11 09:13:13'),
(1225, 'TS001097', '224', '20230417C1', '142.00', '13785.00', '2023-09-11 09:13:13', '2023-09-11 09:13:13'),
(1226, 'TS001098', '212', '20230418A1', '3362.00', '12735.00', '2023-09-11 09:16:35', '2023-09-11 09:16:35'),
(1227, 'TS001099', '203', '20230418A1', '2915.00', '9640.00', '2023-09-11 09:16:35', '2023-09-11 09:16:35'),
(1228, 'TS001100', '213', '20230418A1', '875.00', '9640.00', '2023-09-11 09:16:35', '2023-09-11 09:16:35'),
(1229, 'TS001101', '224', '20230418A1', '52.00', '13785.00', '2023-09-11 09:16:35', '2023-09-11 09:16:35'),
(1230, 'TS001102', '212', '20230418B1', '2783.00', '12735.00', '2023-09-11 09:19:50', '2023-09-11 09:19:50'),
(1231, 'TS001103', '218', '20230418B1', '2366.00', '12735.00', '2023-09-11 09:19:50', '2023-09-11 09:19:50'),
(1232, 'TS001104', '213', '20230418B1', '392.00', '9640.00', '2023-09-11 09:19:50', '2023-09-11 09:19:50'),
(1233, 'TS001105', '224', '20230418B1', '124.00', '13785.00', '2023-09-11 09:19:50', '2023-09-11 09:19:50'),
(1234, 'TS001106', '218', '20230419C1', '1601.00', '12735.00', '2023-09-11 09:24:32', '2023-09-11 09:24:32'),
(1235, 'TS001107', '213', '20230419C1', '8484.00', '9640.00', '2023-09-11 09:24:32', '2023-09-11 09:24:32'),
(1236, 'TS001108', '224', '20230419C1', '214.00', '13785.00', '2023-09-11 09:24:32', '2023-09-11 09:24:32'),
(1237, 'TS001109', '218', '20230419A1', '1915.00', '12735.00', '2023-09-11 09:28:39', '2023-09-11 09:28:39'),
(1238, 'TS001110', '213', '20230419A1', '7743.00', '9640.00', '2023-09-11 09:28:39', '2023-09-11 09:28:39'),
(1239, 'TS001111', '224', '20230419A1', '376.00', '13785.00', '2023-09-11 09:28:39', '2023-09-11 09:28:39'),
(1240, 'TS001112', '218', '20230420B1', '1731.00', '12735.00', '2023-09-11 09:53:49', '2023-09-11 09:53:49'),
(1241, 'TS001113', '213', '20230420B1', '7792.00', '9640.00', '2023-09-11 09:53:49', '2023-09-11 09:53:49'),
(1242, 'TS001114', '224', '20230420B1', '129.00', '13785.00', '2023-09-11 09:53:49', '2023-09-11 09:53:49'),
(1243, 'TS001115', '218', '20230420C1', '387.00', '12735.00', '2023-09-11 09:58:13', '2023-09-11 09:58:13'),
(1244, 'TS001116', '222', '20230420C1', '1431.00', '12735.00', '2023-09-11 09:58:13', '2023-09-11 09:58:13'),
(1245, 'TS001117', '213', '20230420C1', '7704.00', '9640.00', '2023-09-11 09:58:13', '2023-09-11 09:58:13'),
(1246, 'TS001118', '224', '20230420C1', '208.00', '13785.00', '2023-09-11 09:58:13', '2023-09-11 09:58:13'),
(1247, 'TS001119', '222', '20230421A1', '1359.00', '12735.00', '2023-09-11 10:02:33', '2023-09-11 10:02:33'),
(1248, 'TS001120', '213', '20230421A1', '7010.00', '9640.00', '2023-09-11 10:02:33', '2023-09-11 10:02:33'),
(1249, 'TS001121', '219', '20230421A1', '1132.00', '9640.00', '2023-09-11 10:02:33', '2023-09-11 10:02:33'),
(1250, 'TS001122', '224', '20230421A1', '200.00', '13785.00', '2023-09-11 10:02:33', '2023-09-11 10:02:33'),
(1251, 'TS001123', '222', '20230421C1', '2080.00', '12735.00', '2023-09-11 10:09:47', '2023-09-11 10:09:47'),
(1252, 'TS001124', '219', '20230421C1', '7037.00', '9640.00', '2023-09-11 10:09:47', '2023-09-11 10:09:47'),
(1253, 'TS001125', '224', '20230421C1', '410.00', '13785.00', '2023-09-11 10:09:47', '2023-09-11 10:09:47'),
(1254, 'TS001126', '222', '20230422C1', '1403.00', '12735.00', '2023-09-11 12:03:27', '2023-09-11 12:03:27'),
(1255, 'TS001127', '219', '20230422C1', '6721.00', '9640.00', '2023-09-11 12:03:27', '2023-09-11 12:03:27'),
(1256, 'TS001128', '224', '20230422C1', '217.00', '13785.00', '2023-09-11 12:03:27', '2023-09-11 12:03:27'),
(1257, 'TS001129', '222', '20230422A1', '1727.00', '12735.00', '2023-09-11 12:06:47', '2023-09-11 12:06:47'),
(1258, 'TS001130', '236', '20230422A1', '609.00', '12735.00', '2023-09-11 12:06:47', '2023-09-11 12:06:47'),
(1259, 'TS001131', '219', '20230422A1', '1110.00', '9640.00', '2023-09-11 12:06:47', '2023-09-11 12:06:47'),
(1260, 'TS001132', '223', '20230422A1', '6989.00', '9640.00', '2023-09-11 12:06:47', '2023-09-11 12:06:47'),
(1261, 'TS001133', '224', '20230422A1', '164.00', '13785.00', '2023-09-11 12:06:47', '2023-09-11 12:06:47'),
(1262, 'TS001134', '236', '20230423B1', '1864.00', '12735.00', '2023-09-11 12:10:12', '2023-09-11 12:10:12'),
(1263, 'TS001135', '223', '20230423B1', '8014.00', '9640.00', '2023-09-11 12:10:12', '2023-09-11 12:10:12'),
(1264, 'TS001136', '224', '20230423B1', '383.00', '13785.00', '2023-09-11 12:10:12', '2023-09-11 12:10:12'),
(1265, 'TS001137', '236', '20230423C1', '1510.00', '12735.00', '2023-09-11 12:14:08', '2023-09-11 12:14:08'),
(1266, 'TS001138', '223', '20230423C1', '8431.00', '9640.00', '2023-09-11 12:14:08', '2023-09-11 12:14:08'),
(1267, 'TS001139', '224', '20230423C1', '256.00', '13785.00', '2023-09-11 12:14:08', '2023-09-11 12:14:08'),
(1268, 'TS001140', '236', '20230424A1', '1773.00', '12735.00', '2023-09-11 12:34:09', '2023-09-11 12:34:09'),
(1269, 'TS001141', '223', '20230424A1', '7445.00', '9640.00', '2023-09-11 12:34:09', '2023-09-11 12:34:09'),
(1270, 'TS001142', '224', '20230424A1', '185.00', '13785.00', '2023-09-11 12:34:09', '2023-09-11 12:34:09'),
(1271, 'TS001143', '236', '20230424B1', '2606.00', '12735.00', '2023-09-11 12:38:54', '2023-09-11 12:38:54'),
(1272, 'TS001144', '223', '20230424B1', '1121.00', '9640.00', '2023-09-11 12:38:54', '2023-09-11 12:38:54'),
(1273, 'TS001145', '237', '20230424B1', '4580.00', '9640.00', '2023-09-11 12:38:54', '2023-09-11 12:38:54'),
(1274, 'TS001146', '224', '20230424B1', '316.00', '13785.00', '2023-09-11 12:38:54', '2023-09-11 12:38:54'),
(1275, 'TS001147', '236', '20230425C1', '1963.00', '12735.00', '2023-09-11 12:51:05', '2023-09-11 12:51:05'),
(1276, 'TS001148', '237', '20230425C1', '7740.00', '9640.00', '2023-09-11 12:51:05', '2023-09-11 12:51:05'),
(1277, 'TS001149', '224', '20230425C1', '126.00', '13785.00', '2023-09-11 12:51:05', '2023-09-11 12:51:05'),
(1278, 'TS001150', '236', '20230425A1', '3342.00', '12735.00', '2023-09-11 12:55:25', '2023-09-11 12:55:25'),
(1279, 'TS001151', '237', '20230425A1', '4954.00', '9640.00', '2023-09-11 12:55:25', '2023-09-11 12:55:25'),
(1280, 'TS001152', '224', '20230425A1', '159.00', '13785.00', '2023-09-11 12:55:25', '2023-09-11 12:55:25'),
(1281, 'TS001153', '239', '20230425A1', '519.00', '13785.00', '2023-09-11 12:55:25', '2023-09-11 12:55:25'),
(1282, 'TS001154', '236', '20230426B1', '1888.00', '12735.00', '2023-09-11 13:14:13', '2023-09-11 13:14:13'),
(1283, 'TS001155', '237', '20230426B1', '8474.00', '9640.00', '2023-09-11 13:14:13', '2023-09-11 13:14:13'),
(1284, 'TS001156', '239', '20230426B1', '138.00', '13785.00', '2023-09-11 13:14:13', '2023-09-11 13:14:13'),
(1285, 'TS001157', '236', '20230426C1', '445.00', '12735.00', '2023-09-11 13:18:14', '2023-09-11 13:18:14'),
(1286, 'TS001158', '240', '20230426C1', '1456.00', '12735.00', '2023-09-11 13:18:14', '2023-09-11 13:18:14'),
(1287, 'TS001159', '237', '20230426C1', '7943.00', '9640.00', '2023-09-11 13:18:14', '2023-09-11 13:18:14'),
(1288, 'TS001160', '239', '20230426C1', '237.00', '13785.00', '2023-09-11 13:18:14', '2023-09-11 13:18:14'),
(1289, 'TS001161', '240', '20230427A1', '1759.00', '12735.00', '2023-09-11 13:27:24', '2023-09-11 13:27:24'),
(1290, 'TS001162', '237', '20230427A1', '8790.00', '9640.00', '2023-09-11 13:27:24', '2023-09-11 13:27:24'),
(1291, 'TS001163', '239', '20230427A1', '126.00', '13785.00', '2023-09-11 13:27:24', '2023-09-11 13:27:24'),
(1292, 'TS001164', '240', '20230427B1', '2241.00', '12735.00', '2023-09-11 13:30:34', '2023-09-11 13:30:34'),
(1293, 'TS001165', '237', '20230427B1', '5519.00', '9640.00', '2023-09-11 13:30:34', '2023-09-11 13:30:34'),
(1294, 'TS001166', '238', '20230427B1', '1830.00', '9640.00', '2023-09-11 13:30:34', '2023-09-11 13:30:34'),
(1295, 'TS001167', '239', '20230427B1', '244.00', '13785.00', '2023-09-11 13:30:34', '2023-09-11 13:30:34'),
(1296, 'TS001168', '240', '20230428C1', '1789.00', '12735.00', '2023-09-11 13:34:29', '2023-09-11 13:34:29'),
(1297, 'TS001169', '237', '20230428C1', '3689.00', '9640.00', '2023-09-11 13:34:29', '2023-09-11 13:34:29'),
(1298, 'TS001170', '238', '20230428C1', '3689.00', '9640.00', '2023-09-11 13:34:29', '2023-09-11 13:34:29'),
(1299, 'TS001171', '241', '20230428C1', '762.00', '9640.00', '2023-09-11 13:34:29', '2023-09-11 13:34:29'),
(1300, 'TS001172', '239', '20230428C1', '115.00', '13785.00', '2023-09-11 13:34:30', '2023-09-11 13:34:30'),
(1301, 'TS001173', '240', '20230428A1', '755.00', '12735.00', '2023-09-11 13:47:11', '2023-09-11 13:47:11'),
(1302, 'TS001174', '244', '20230428A1', '1302.00', '12735.00', '2023-09-11 13:47:11', '2023-09-11 13:47:11'),
(1303, 'TS001175', '241', '20230428A1', '7547.00', '9640.00', '2023-09-11 13:47:11', '2023-09-11 13:47:11'),
(1304, 'TS001176', '239', '20230428A1', '388.00', '13785.00', '2023-09-11 13:47:11', '2023-09-11 13:47:11'),
(1305, 'TS001177', '244', '20230429C1', '2317.00', '12735.00', '2023-09-11 13:51:43', '2023-09-11 13:51:43'),
(1306, 'TS001178', '241', '20230429C1', '7061.00', '9640.00', '2023-09-11 13:51:43', '2023-09-11 13:51:43'),
(1307, 'TS001179', '239', '20230429C1', '307.00', '13785.00', '2023-09-11 13:51:43', '2023-09-11 13:51:43'),
(1308, 'TS001180', '244', '20230429B1', '1766.00', '12735.00', '2023-09-11 13:55:33', '2023-09-11 13:55:33'),
(1309, 'TS001181', '241', '20230429B1', '7867.00', '9640.00', '2023-09-11 13:55:33', '2023-09-11 13:55:33'),
(1310, 'TS001182', '239', '20230429B1', '155.00', '13785.00', '2023-09-11 13:55:33', '2023-09-11 13:55:33'),
(1311, 'TS001183', '244', '20230430A1', '1772.00', '12735.00', '2023-09-11 14:06:18', '2023-09-11 14:06:18'),
(1312, 'TS001184', '241', '20230430A1', '763.00', '9640.00', '2023-09-11 14:06:18', '2023-09-11 14:06:18'),
(1313, 'TS001185', '243', '20230430A1', '6977.00', '9640.00', '2023-09-11 14:06:18', '2023-09-11 14:06:18'),
(1314, 'TS001186', '239', '20230430A1', '95.00', '13785.00', '2023-09-11 14:06:18', '2023-09-11 14:06:18'),
(1315, 'TS001187', '244', '20230430B1', '843.00', '12735.00', '2023-09-11 14:11:09', '2023-09-11 14:11:09'),
(1316, 'TS001188', '246', '20230430B1', '1022.00', '12735.00', '2023-09-11 14:11:09', '2023-09-11 14:11:09'),
(1317, 'TS001189', '243', '20230430B1', '7998.00', '9640.00', '2023-09-11 14:11:09', '2023-09-11 14:11:09'),
(1318, 'TS001190', '239', '20230430B1', '159.00', '13785.00', '2023-09-11 14:11:09', '2023-09-11 14:11:09'),
(1319, 'TS001191', '246', '20230430C1', '1563.00', '12735.00', '2023-09-11 14:15:47', '2023-09-11 14:15:47'),
(1320, 'TS001192', '243', '20230430C1', '1025.00', '9640.00', '2023-09-11 14:15:47', '2023-09-11 14:15:47'),
(1321, 'TS001193', '245', '20230430C1', '4419.00', '9640.00', '2023-09-11 14:15:47', '2023-09-11 14:15:47'),
(1322, 'TS001194', '239', '20230430C1', '159.00', '13785.00', '2023-09-11 14:15:47', '2023-09-11 14:15:47'),
(1323, 'TS001195', '246', 'OP0920236', '3050.00', '12735.00', '2023-09-13 12:18:20', '2023-09-13 12:18:20'),
(1324, 'TS001196', '245', 'OP0920236', '4710.00', '9640.00', '2023-09-13 12:18:20', '2023-09-13 12:18:20'),
(1325, 'TS001197', '246', '20230501C1', '180.00', '12735.00', '2023-09-14 06:15:38', '2023-09-14 06:15:38'),
(1326, 'TS001198', '245', '20230501C1', '1102.00', '9640.00', '2023-09-14 06:15:38', '2023-09-14 06:15:38'),
(1327, 'TS001199', '246', '20230501A1', '1326.00', '12735.00', '2023-09-14 06:21:24', '2023-09-14 06:21:24'),
(1328, 'TS001200', '245', '20230501A1', '5769.00', '9640.00', '2023-09-14 06:21:24', '2023-09-14 06:21:24'),
(1329, 'TS001201', '247', '20230501A1', '2289.00', '9640.00', '2023-09-14 06:21:24', '2023-09-14 06:21:24'),
(1330, 'TS001202', '3', '20230501A1', '25.00', '15685.00', '2023-09-14 06:21:25', '2023-09-14 06:21:25'),
(1331, 'TS001203', '239', '20230501A1', '114.00', '13785.00', '2023-09-14 06:21:25', '2023-09-14 06:21:25'),
(1332, 'TS001204', '246', '20230502B1', '859.00', '12735.00', '2023-09-14 07:04:27', '2023-09-14 07:04:27'),
(1333, 'TS001205', '254', '20230502B1', '623.00', '12660.00', '2023-09-14 07:04:27', '2023-09-14 07:04:27'),
(1334, 'TS001206', '247', '20230502B1', '8149.00', '9640.00', '2023-09-14 07:04:27', '2023-09-14 07:04:27'),
(1335, 'TS001207', '239', '20230502B1', '47.00', '13785.00', '2023-09-14 07:04:27', '2023-09-14 07:04:27'),
(1336, 'TS001208', '254', '20230502C1', '1667.00', '12660.00', '2023-09-14 07:08:32', '2023-09-14 07:08:32'),
(1337, 'TS001209', '247', '20230502C1', '7954.00', '9640.00', '2023-09-14 07:08:33', '2023-09-14 07:08:33'),
(1338, 'TS001210', '239', '20230502C1', '134.00', '13785.00', '2023-09-14 07:08:33', '2023-09-14 07:08:33'),
(1339, 'TS001211', '254', '20230503A1', '1805.00', '12660.00', '2023-09-14 07:16:24', '2023-09-14 07:16:24'),
(1340, 'TS001212', '247', '20230503A1', '7744.00', '9640.00', '2023-09-14 07:16:24', '2023-09-14 07:16:24'),
(1341, 'TS001213', '239', '20230503A1', '67.00', '13785.00', '2023-09-14 07:16:24', '2023-09-14 07:16:24'),
(1342, 'TS001214', '254', '20230503B1', '1683.00', '12660.00', '2023-09-14 07:19:54', '2023-09-14 07:19:54'),
(1343, 'TS001215', '247', '20230503B1', '7199.00', '9640.00', '2023-09-14 07:19:54', '2023-09-14 07:19:54'),
(1344, 'TS001216', '239', '20230503B1', '216.00', '13785.00', '2023-09-14 07:19:54', '2023-09-14 07:19:54'),
(1345, 'TS001217', '254', '20230504C1', '1445.00', '12660.00', '2023-09-14 07:30:49', '2023-09-14 07:30:49'),
(1346, 'TS001218', '247', '20230504C1', '6665.00', '9640.00', '2023-09-14 07:30:49', '2023-09-14 07:30:49'),
(1347, 'TS001219', '255', '20230504C1', '1292.00', '9640.00', '2023-09-14 07:30:49', '2023-09-14 07:30:49'),
(1348, 'TS001220', '239', '20230504C1', '29.00', '13785.00', '2023-09-14 07:30:49', '2023-09-14 07:30:49'),
(1349, 'TS001221', '254', '20230504A1', '777.00', '12660.00', '2023-09-14 07:35:43', '2023-09-14 07:35:43'),
(1350, 'TS001222', '258', '20230504A1', '2403.00', '12660.00', '2023-09-14 07:35:43', '2023-09-14 07:35:43'),
(1351, 'TS001223', '255', '20230504A1', '4646.00', '9640.00', '2023-09-14 07:35:44', '2023-09-14 07:35:44'),
(1352, 'TS001224', '239', '20230504A1', '271.00', '13785.00', '2023-09-14 07:35:44', '2023-09-14 07:35:44'),
(1353, 'TS001225', '258', '20230505B1', '1597.00', '12660.00', '2023-09-14 07:42:51', '2023-09-14 07:42:51'),
(1354, 'TS001226', '255', '20230505B1', '7866.00', '9640.00', '2023-09-14 07:42:51', '2023-09-14 07:42:51'),
(1355, 'TS001227', '239', '20230505B1', '58.00', '13785.00', '2023-09-14 07:42:51', '2023-09-14 07:42:51'),
(1356, 'TS001228', '258', '20230505C1', '1832.00', '12660.00', '2023-09-14 07:47:13', '2023-09-14 07:47:13'),
(1357, 'TS001229', '255', '20230505C1', '2196.00', '9640.00', '2023-09-14 07:47:13', '2023-09-14 07:47:13'),
(1358, 'TS001230', '256', '20230505C1', '4321.00', '9640.00', '2023-09-14 07:47:13', '2023-09-14 07:47:13'),
(1359, 'TS001231', '239', '20230505C1', '322.00', '13785.00', '2023-09-14 07:47:13', '2023-09-14 07:47:13'),
(1360, 'TS001232', '258', '20230506A1', '1812.00', '12660.00', '2023-09-14 07:58:38', '2023-09-14 07:58:38'),
(1361, 'TS001233', '256', '20230506A1', '3679.00', '9640.00', '2023-09-14 07:58:38', '2023-09-14 07:58:38'),
(1362, 'TS001234', '257', '20230506A1', '4685.00', '9640.00', '2023-09-14 07:58:38', '2023-09-14 07:58:38'),
(1363, 'TS001235', '239', '20230506A1', '100.00', '13785.00', '2023-09-14 07:58:38', '2023-09-14 07:58:38'),
(1364, 'TS001236', '248', '20230506A1', '65.00', '13785.00', '2023-09-14 07:58:38', '2023-09-14 07:58:38'),
(1365, 'TS001237', '258', '20230506B1', '356.00', '12660.00', '2023-09-14 08:03:14', '2023-09-14 08:03:14'),
(1366, 'TS001238', '261', '20230506B1', '1364.00', '12660.00', '2023-09-14 08:03:14', '2023-09-14 08:03:14'),
(1367, 'TS001239', '257', '20230506B1', '3315.00', '9640.00', '2023-09-14 08:03:14', '2023-09-14 08:03:14'),
(1368, 'TS001240', '259', '20230506B1', '3315.00', '9640.00', '2023-09-14 08:03:14', '2023-09-14 08:03:14'),
(1369, 'TS001241', '260', '20230506B1', '779.00', '9640.00', '2023-09-14 08:03:15', '2023-09-14 08:03:15'),
(1370, 'TS001242', '248', '20230506B1', '206.00', '13785.00', '2023-09-14 08:03:15', '2023-09-14 08:03:15'),
(1371, 'TS001243', '261', '20230507C1', '1645.00', '12660.00', '2023-09-14 08:20:57', '2023-09-14 08:20:57'),
(1372, 'TS001244', '260', '20230507C1', '7534.00', '9640.00', '2023-09-14 08:20:57', '2023-09-14 08:20:57'),
(1373, 'TS001245', '248', '20230507C1', '175.00', '13785.00', '2023-09-14 08:20:57', '2023-09-14 08:20:57'),
(1374, 'TS001246', '261', '20230507C15', '1305.00', '12660.00', '2023-09-14 08:25:37', '2023-09-14 08:25:37'),
(1375, 'TS001247', '260', '20230507C15', '7351.00', '9640.00', '2023-09-14 08:25:37', '2023-09-14 08:25:37'),
(1376, 'TS001248', '248', '20230507C15', '140.00', '13785.00', '2023-09-14 08:25:37', '2023-09-14 08:25:37'),
(1377, 'TS001249', '261', '20230508B1', '1431.00', '12660.00', '2023-09-14 08:39:24', '2023-09-14 08:39:24'),
(1378, 'TS001250', '260', '20230508B1', '336.00', '9640.00', '2023-09-14 08:39:24', '2023-09-14 08:39:24'),
(1379, 'TS001251', '262', '20230508B1', '7357.00', '9640.00', '2023-09-14 08:39:24', '2023-09-14 08:39:24'),
(1380, 'TS001252', '248', '20230508B1', '302.00', '13785.00', '2023-09-14 08:39:24', '2023-09-14 08:39:24');
INSERT INTO `tbltransaksi_stok` (`id_trans`, `kd_transStok`, `r_fifo`, `r_trans`, `stok_trans`, `harga_trans`, `created_at`, `updated_at`) VALUES
(1381, 'TS001253', '261', '20230508C1', '2079.00', '12660.00', '2023-09-14 08:42:50', '2023-09-14 08:42:50'),
(1382, 'TS001254', '262', '20230508C1', '6439.00', '9640.00', '2023-09-14 08:42:50', '2023-09-14 08:42:50'),
(1383, 'TS001255', '248', '20230508C1', '195.00', '13785.00', '2023-09-14 08:42:50', '2023-09-14 08:42:50'),
(1384, 'TS001256', '261', '20230509A1', '176.00', '12660.00', '2023-09-14 08:51:33', '2023-09-14 08:51:33'),
(1385, 'TS001257', '263', '20230509A1', '1863.00', '12660.00', '2023-09-14 08:51:33', '2023-09-14 08:51:33'),
(1386, 'TS001258', '262', '20230509A1', '7180.00', '9640.00', '2023-09-14 08:51:33', '2023-09-14 08:51:33'),
(1387, 'TS001259', '248', '20230509A1', '198.00', '13785.00', '2023-09-14 08:51:33', '2023-09-14 08:51:33'),
(1388, 'TS001260', '263', '20230509B1', '1196.00', '12660.00', '2023-09-14 08:57:58', '2023-09-14 08:57:58'),
(1389, 'TS001261', '262', '20230509B1', '7296.00', '9640.00', '2023-09-14 08:57:58', '2023-09-14 08:57:58'),
(1390, 'TS001262', '248', '20230509B1', '100.00', '13785.00', '2023-09-14 08:57:58', '2023-09-14 08:57:58'),
(1391, 'TS001263', '263', '20230510C1', '1098.00', '12660.00', '2023-09-14 09:19:11', '2023-09-14 09:19:11'),
(1392, 'TS001264', '262', '20230510C1', '7001.00', '9640.00', '2023-09-14 09:19:11', '2023-09-14 09:19:11'),
(1393, 'TS001265', '248', '20230510C1', '124.00', '13785.00', '2023-09-14 09:19:11', '2023-09-14 09:19:11'),
(1394, 'TS001266', '263', '20230510A1', '1911.00', '12660.00', '2023-09-14 09:22:19', '2023-09-14 09:22:19'),
(1395, 'TS001267', '262', '20230510A1', '4727.00', '9640.00', '2023-09-14 09:22:19', '2023-09-14 09:22:19'),
(1396, 'TS001268', '264', '20230510A1', '2613.00', '9640.00', '2023-09-14 09:22:19', '2023-09-14 09:22:19'),
(1397, 'TS001269', '248', '20230510A1', '144.00', '13785.00', '2023-09-14 09:22:19', '2023-09-14 09:22:19'),
(1398, 'TS001270', '263', '20230511B1', '1501.00', '12660.00', '2023-09-14 09:31:48', '2023-09-14 09:31:48'),
(1399, 'TS001271', '264', '20230511B1', '7649.00', '9640.00', '2023-09-14 09:31:48', '2023-09-14 09:31:48'),
(1400, 'TS001272', '248', '20230511B1', '60.00', '13785.00', '2023-09-14 09:31:48', '2023-09-14 09:31:48'),
(1401, 'TS001273', '263', '20230511C1', '431.00', '12660.00', '2023-09-14 09:34:58', '2023-09-14 09:34:58'),
(1402, 'TS001274', '266', '20230511C1', '1116.00', '12660.00', '2023-09-14 09:34:58', '2023-09-14 09:34:58'),
(1403, 'TS001275', '264', '20230511C1', '5738.00', '9640.00', '2023-09-14 09:34:58', '2023-09-14 09:34:58'),
(1404, 'TS001276', '265', '20230511C1', '2634.00', '9640.00', '2023-09-14 09:34:58', '2023-09-14 09:34:58'),
(1405, 'TS001277', '248', '20230511C1', '422.00', '13785.00', '2023-09-14 09:34:58', '2023-09-14 09:34:58'),
(1406, 'TS001278', '266', '20230512A1', '1374.00', '12660.00', '2023-09-14 09:41:28', '2023-09-14 09:41:28'),
(1407, 'TS001279', '265', '20230512A1', '8450.00', '9640.00', '2023-09-14 09:41:28', '2023-09-14 09:41:28'),
(1408, 'TS001280', '248', '20230512A1', '64.00', '13785.00', '2023-09-14 09:41:28', '2023-09-14 09:41:28'),
(1409, 'TS001281', '266', '20230512B1', '1792.00', '12660.00', '2023-09-14 09:44:22', '2023-09-14 09:44:22'),
(1410, 'TS001282', '265', '20230512B1', '4916.00', '9640.00', '2023-09-14 09:44:22', '2023-09-14 09:44:22'),
(1411, 'TS001283', '267', '20230512B1', '1629.00', '9640.00', '2023-09-14 09:44:22', '2023-09-14 09:44:22'),
(1412, 'TS001284', '248', '20230512B1', '101.00', '13785.00', '2023-09-14 09:44:22', '2023-09-14 09:44:22'),
(1413, 'TS001285', '266', '20230513C1', '1597.00', '12660.00', '2023-09-14 10:08:51', '2023-09-14 10:08:51'),
(1414, 'TS001286', '267', '20230513C1', '8280.00', '9640.00', '2023-09-14 10:08:52', '2023-09-14 10:08:52'),
(1415, 'TS001287', '248', '20230513C1', '118.00', '13785.00', '2023-09-14 10:08:52', '2023-09-14 10:08:52'),
(1416, 'TS001288', '266', '20230513A1', '1601.00', '12660.00', '2023-09-14 10:13:04', '2023-09-14 10:13:04'),
(1417, 'TS001289', '267', '20230513A1', '6091.00', '9640.00', '2023-09-14 10:13:04', '2023-09-14 10:13:04'),
(1418, 'TS001290', '268', '20230513A1', '1722.00', '9640.00', '2023-09-14 10:13:04', '2023-09-14 10:13:04'),
(1419, 'TS001291', '248', '20230513A1', '206.00', '13785.00', '2023-09-14 10:13:04', '2023-09-14 10:13:04'),
(1420, 'TS001292', '266', '20230514B1', '520.00', '12660.00', '2023-09-14 10:22:11', '2023-09-14 10:22:11'),
(1421, 'TS001293', '270', '20230514B1', '840.00', '12660.00', '2023-09-14 10:22:11', '2023-09-14 10:22:11'),
(1422, 'TS001294', '268', '20230514B1', '8176.00', '9640.00', '2023-09-14 10:22:11', '2023-09-14 10:22:11'),
(1423, 'TS001295', '248', '20230514B1', '134.00', '13785.00', '2023-09-14 10:22:11', '2023-09-14 10:22:11'),
(1424, 'TS001296', '270', '20230514C1', '1212.00', '12660.00', '2023-09-14 10:26:15', '2023-09-14 10:26:15'),
(1425, 'TS001297', '268', '20230514C1', '6102.00', '9640.00', '2023-09-14 10:26:15', '2023-09-14 10:26:15'),
(1426, 'TS001298', '271', '20230514C1', '967.00', '9640.00', '2023-09-14 10:26:15', '2023-09-14 10:26:15'),
(1427, 'TS001299', '248', '20230514C1', '63.00', '13785.00', '2023-09-14 10:26:15', '2023-09-14 10:26:15'),
(1428, 'TS001300', '270', '20230515A1', '1855.00', '12660.00', '2023-09-14 11:56:05', '2023-09-14 11:56:05'),
(1429, 'TS001301', '271', '20230515A1', '7075.00', '9640.00', '2023-09-14 11:56:05', '2023-09-14 11:56:05'),
(1430, 'TS001302', '248', '20230515A1', '59.00', '13785.00', '2023-09-14 11:56:05', '2023-09-14 11:56:05'),
(1431, 'TS001303', '270', '20230515B1', '4093.00', '12660.00', '2023-09-14 12:00:11', '2023-09-14 12:00:11'),
(1432, 'TS001304', '272', '20230515B1', '463.00', '12660.00', '2023-09-14 12:00:11', '2023-09-14 12:00:11'),
(1433, 'TS001305', '271', '20230515B1', '2203.00', '9640.00', '2023-09-14 12:00:11', '2023-09-14 12:00:11'),
(1434, 'TS001306', '248', '20230515B1', '269.00', '13785.00', '2023-09-14 12:00:11', '2023-09-14 12:00:11'),
(1441, 'TS001307', '272', '20230916C151', '1962.00', '12660.00', '2023-09-15 03:19:59', '2023-09-15 03:19:59'),
(1442, 'TS001308', '271', '20230916C151', '8222.00', '9640.00', '2023-09-15 03:19:59', '2023-09-15 03:19:59'),
(1443, 'TS001309', '248', '20230916C151', '166.00', '13785.00', '2023-09-15 03:19:59', '2023-09-15 03:19:59'),
(1447, 'TS001310', '272', '20230516A1', '1591.00', '12660.00', '2023-09-15 03:27:46', '2023-09-15 03:27:46'),
(1448, 'TS001311', '271', '20230516A1', '7977.00', '9640.00', '2023-09-15 03:27:46', '2023-09-15 03:27:46'),
(1449, 'TS001312', '248', '20230516A1', '207.00', '13785.00', '2023-09-15 03:27:46', '2023-09-15 03:27:46'),
(1450, 'TS001313', '272', '20230517B1', '1464.00', '12660.00', '2023-09-15 03:37:39', '2023-09-15 03:37:39'),
(1451, 'TS001314', '271', '20230517B1', '7247.00', '9640.00', '2023-09-15 03:37:39', '2023-09-15 03:37:39'),
(1452, 'TS001315', '248', '20230517B1', '173.00', '13785.00', '2023-09-15 03:37:39', '2023-09-15 03:37:39'),
(1453, 'TS001316', '272', '20230517C1', '1655.00', '12660.00', '2023-09-15 03:40:47', '2023-09-15 03:40:47'),
(1454, 'TS001317', '271', '20230517C1', '6309.00', '9640.00', '2023-09-15 03:40:47', '2023-09-15 03:40:47'),
(1455, 'TS001318', '273', '20230517C1', '1143.00', '9640.00', '2023-09-15 03:40:47', '2023-09-15 03:40:47'),
(1456, 'TS001319', '248', '20230517C1', '170.00', '13785.00', '2023-09-15 03:40:47', '2023-09-15 03:40:47'),
(1457, 'TS001320', '272', '20230518A1', '865.00', '12660.00', '2023-09-15 04:01:24', '2023-09-15 04:01:24'),
(1458, 'TS001321', '275', '20230518A1', '714.00', '12660.00', '2023-09-15 04:01:24', '2023-09-15 04:01:24'),
(1459, 'TS001322', '273', '20230518A1', '8122.00', '9640.00', '2023-09-15 04:01:24', '2023-09-15 04:01:24'),
(1460, 'TS001323', '248', '20230518A1', '76.00', '13785.00', '2023-09-15 04:01:25', '2023-09-15 04:01:25'),
(1461, 'TS001324', '275', '20230518B1', '1431.00', '12660.00', '2023-09-15 04:16:21', '2023-09-15 04:16:21'),
(1462, 'TS001325', '273', '20230518B1', '6735.00', '9640.00', '2023-09-15 04:16:21', '2023-09-15 04:16:21'),
(1463, 'TS001326', '274', '20230518B1', '874.00', '9640.00', '2023-09-15 04:16:21', '2023-09-15 04:16:21'),
(1464, 'TS001327', '248', '20230518B1', '63.00', '13785.00', '2023-09-15 04:16:21', '2023-09-15 04:16:21'),
(1465, 'TS001328', '269', '20230518B1', '118.00', '13085.00', '2023-09-15 04:16:21', '2023-09-15 04:16:21'),
(1466, 'TS001329', '275', '20230519C1', '1277.00', '12660.00', '2023-09-15 04:19:11', '2023-09-15 04:19:11'),
(1467, 'TS001330', '274', '20230519C1', '7754.00', '9640.00', '2023-09-15 04:19:11', '2023-09-15 04:19:11'),
(1468, 'TS001331', '269', '20230519C1', '238.00', '13085.00', '2023-09-15 04:19:11', '2023-09-15 04:19:11'),
(1469, 'TS001332', '275', '20230519A1', '1488.00', '12660.00', '2023-09-15 04:22:23', '2023-09-15 04:22:23'),
(1470, 'TS001333', '274', '20230519A1', '7372.00', '9640.00', '2023-09-15 04:22:23', '2023-09-15 04:22:23'),
(1471, 'TS001334', '276', '20230519A1', '50.00', '9640.00', '2023-09-15 04:22:23', '2023-09-15 04:22:23'),
(1472, 'TS001335', '269', '20230519A1', '364.00', '13085.00', '2023-09-15 04:22:23', '2023-09-15 04:22:23'),
(1473, 'TS001336', '275', '20230520B1', '2136.00', '12660.00', '2023-09-15 04:27:56', '2023-09-15 04:27:56'),
(1474, 'TS001337', '276', '20230520B1', '7918.00', '9640.00', '2023-09-15 04:27:56', '2023-09-15 04:27:56'),
(1475, 'TS001338', '269', '20230520B1', '234.00', '13085.00', '2023-09-15 04:27:56', '2023-09-15 04:27:56'),
(1476, 'TS001339', '275', '20230520C1', '954.00', '12660.00', '2023-09-15 04:35:03', '2023-09-15 04:35:03'),
(1477, 'TS001340', '277', '20230520C1', '862.00', '12660.00', '2023-09-15 04:35:03', '2023-09-15 04:35:03'),
(1478, 'TS001341', '276', '20230520C1', '7666.00', '9640.00', '2023-09-15 04:35:03', '2023-09-15 04:35:03'),
(1479, 'TS001342', '269', '20230520C1', '406.00', '13085.00', '2023-09-15 04:35:03', '2023-09-15 04:35:03'),
(1480, 'TS001343', '277', '20230521A1', '1781.00', '12660.00', '2023-09-15 04:38:31', '2023-09-15 04:38:31'),
(1481, 'TS001344', '276', '20230521A1', '7880.00', '9640.00', '2023-09-15 04:38:31', '2023-09-15 04:38:31'),
(1482, 'TS001345', '269', '20230521A1', '107.00', '13085.00', '2023-09-15 04:38:31', '2023-09-15 04:38:31'),
(1483, 'TS001346', '277', '20230521B1', '1502.00', '12660.00', '2023-09-15 04:42:20', '2023-09-15 04:42:20'),
(1484, 'TS001347', '276', '20230521B1', '7501.00', '9640.00', '2023-09-15 04:42:20', '2023-09-15 04:42:20'),
(1485, 'TS001348', '269', '20230521B1', '217.00', '13085.00', '2023-09-15 04:42:20', '2023-09-15 04:42:20'),
(1486, 'TS001349', '277', '20230522C1', '1779.00', '12660.00', '2023-09-15 04:45:09', '2023-09-15 04:45:09'),
(1487, 'TS001350', '276', '20230522C1', '985.00', '9640.00', '2023-09-15 04:45:09', '2023-09-15 04:45:09'),
(1488, 'TS001351', '278', '20230522C1', '6532.00', '9640.00', '2023-09-15 04:45:09', '2023-09-15 04:45:09'),
(1489, 'TS001352', '269', '20230522C1', '145.00', '13085.00', '2023-09-15 04:45:09', '2023-09-15 04:45:09'),
(1490, 'TS001353', '277', '20230522A1', '1622.00', '12660.00', '2023-09-15 04:49:16', '2023-09-15 04:49:16'),
(1491, 'TS001354', '278', '20230522A1', '7521.00', '9640.00', '2023-09-15 04:49:16', '2023-09-15 04:49:16'),
(1492, 'TS001355', '269', '20230522A1', '383.00', '13085.00', '2023-09-15 04:49:16', '2023-09-15 04:49:16'),
(1493, 'TS001356', '277', '20230523B1', '454.00', '12660.00', '2023-09-15 04:53:20', '2023-09-15 04:53:20'),
(1494, 'TS001357', '279', '20230523B1', '1510.00', '12660.00', '2023-09-15 04:53:20', '2023-09-15 04:53:20'),
(1495, 'TS001358', '278', '20230523B1', '7944.00', '9640.00', '2023-09-15 04:53:20', '2023-09-15 04:53:20'),
(1496, 'TS001359', '269', '20230523B1', '62.00', '13085.00', '2023-09-15 04:53:20', '2023-09-15 04:53:20'),
(1497, 'TS001360', '279', '20230523C1', '1520.00', '12660.00', '2023-09-15 04:56:43', '2023-09-15 04:56:43'),
(1498, 'TS001361', '278', '20230523C1', '7579.00', '9640.00', '2023-09-15 04:56:43', '2023-09-15 04:56:43'),
(1499, 'TS001362', '269', '20230523C1', '179.00', '13085.00', '2023-09-15 04:56:43', '2023-09-15 04:56:43'),
(1500, 'TS001363', '279', '20230524A1', '1618.00', '12660.00', '2023-09-15 05:11:52', '2023-09-15 05:11:52'),
(1501, 'TS001364', '278', '20230524A1', '7387.00', '9640.00', '2023-09-15 05:11:52', '2023-09-15 05:11:52'),
(1502, 'TS001365', '269', '20230524A1', '179.00', '13085.00', '2023-09-15 05:11:52', '2023-09-15 05:11:52'),
(1503, 'TS001366', '279', '20230524B1', '1469.00', '12660.00', '2023-09-15 05:14:57', '2023-09-15 05:14:57'),
(1504, 'TS001367', '278', '20230524B1', '3037.00', '9640.00', '2023-09-15 05:14:57', '2023-09-15 05:14:57'),
(1505, 'TS001368', '280', '20230524B1', '3567.00', '9640.00', '2023-09-15 05:14:57', '2023-09-15 05:14:57'),
(1506, 'TS001369', '269', '20230524B1', '191.00', '13085.00', '2023-09-15 05:14:57', '2023-09-15 05:14:57'),
(1507, 'TS001370', '279', '20230525C1', '1457.00', '12660.00', '2023-09-15 05:17:52', '2023-09-15 05:17:52'),
(1508, 'TS001371', '280', '20230525C1', '8279.00', '9640.00', '2023-09-15 05:17:52', '2023-09-15 05:17:52'),
(1509, 'TS001372', '269', '20230525C1', '146.00', '13085.00', '2023-09-15 05:17:52', '2023-09-15 05:17:52'),
(1510, 'TS001373', '279', '20230525A1', '426.00', '12660.00', '2023-09-15 05:20:57', '2023-09-15 05:20:57'),
(1511, 'TS001374', '282', '20230525A1', '1712.00', '12660.00', '2023-09-15 05:20:57', '2023-09-15 05:20:57'),
(1512, 'TS001375', '280', '20230525A1', '4154.00', '9640.00', '2023-09-15 05:20:57', '2023-09-15 05:20:57'),
(1513, 'TS001376', '281', '20230525A1', '3119.00', '9640.00', '2023-09-15 05:20:57', '2023-09-15 05:20:57'),
(1514, 'TS001377', '269', '20230525A1', '282.00', '13085.00', '2023-09-15 05:20:57', '2023-09-15 05:20:57'),
(1515, 'TS001378', '282', '20230526B1', '1633.00', '12660.00', '2023-09-15 05:25:03', '2023-09-15 05:25:03'),
(1516, 'TS001379', '281', '20230526B1', '7168.00', '9640.00', '2023-09-15 05:25:03', '2023-09-15 05:25:03'),
(1517, 'TS001380', '269', '20230526B1', '243.00', '13085.00', '2023-09-15 05:25:03', '2023-09-15 05:25:03'),
(1518, 'TS001381', '282', '20230526C1', '1598.00', '12660.00', '2023-09-15 05:28:09', '2023-09-15 05:28:09'),
(1519, 'TS001382', '281', '20230526C1', '5713.00', '9640.00', '2023-09-15 05:28:09', '2023-09-15 05:28:09'),
(1520, 'TS001383', '283', '20230526C1', '2214.00', '9640.00', '2023-09-15 05:28:09', '2023-09-15 05:28:09'),
(1521, 'TS001384', '269', '20230526C1', '270.00', '13085.00', '2023-09-15 05:28:09', '2023-09-15 05:28:09'),
(1522, 'TS001385', '282', '20230527A1', '1023.00', '12660.00', '2023-09-15 05:34:24', '2023-09-15 05:34:24'),
(1523, 'TS001386', '283', '20230527A1', '8606.00', '9640.00', '2023-09-15 05:34:24', '2023-09-15 05:34:24'),
(1524, 'TS001387', '269', '20230527A1', '163.00', '13085.00', '2023-09-15 05:34:24', '2023-09-15 05:34:24'),
(1525, 'TS001388', '282', '20230527B1', '1877.00', '12660.00', '2023-09-15 05:37:41', '2023-09-15 05:37:41'),
(1526, 'TS001389', '283', '20230527B1', '5180.00', '9640.00', '2023-09-15 05:37:41', '2023-09-15 05:37:41'),
(1527, 'TS001390', '285', '20230527B1', '2094.00', '9640.00', '2023-09-15 05:37:41', '2023-09-15 05:37:41'),
(1528, 'TS001391', '269', '20230527B1', '73.00', '13085.00', '2023-09-15 05:37:41', '2023-09-15 05:37:41'),
(1529, 'TS001392', '284', '20230527B1', '207.00', '13085.00', '2023-09-15 05:37:41', '2023-09-15 05:37:41'),
(1530, 'TS001393', '282', '20230528C1', '157.00', '12660.00', '2023-09-15 05:44:04', '2023-09-15 05:44:04'),
(1531, 'TS001394', '286', '20230528C1', '1238.00', '12660.00', '2023-09-15 05:44:04', '2023-09-15 05:44:04'),
(1532, 'TS001395', '285', '20230528C1', '7981.00', '9640.00', '2023-09-15 05:44:04', '2023-09-15 05:44:04'),
(1533, 'TS001396', '284', '20230528C1', '186.00', '13085.00', '2023-09-15 05:44:04', '2023-09-15 05:44:04'),
(1534, 'TS001397', '286', '20230528A1', '1212.00', '12660.00', '2023-09-15 05:52:32', '2023-09-15 05:52:32'),
(1535, 'TS001398', '285', '20230528A1', '5925.00', '9640.00', '2023-09-15 05:52:32', '2023-09-15 05:52:32'),
(1536, 'TS001399', '287', '20230528A1', '1402.00', '9640.00', '2023-09-15 05:52:32', '2023-09-15 05:52:32'),
(1537, 'TS001400', '284', '20230528A1', '153.00', '13085.00', '2023-09-15 05:52:32', '2023-09-15 05:52:32'),
(1538, 'TS001401', '286', '20230529B1', '1782.00', '12660.00', '2023-09-15 05:56:07', '2023-09-15 05:56:07'),
(1539, 'TS001402', '287', '20230529B1', '7164.00', '9640.00', '2023-09-15 05:56:07', '2023-09-15 05:56:07'),
(1540, 'TS001403', '284', '20230529B1', '200.00', '13085.00', '2023-09-15 05:56:07', '2023-09-15 05:56:07'),
(1541, 'TS001404', '286', '20230529C1', '2006.00', '12660.00', '2023-09-15 05:59:19', '2023-09-15 05:59:19'),
(1542, 'TS001405', '287', '20230529C1', '7887.00', '9640.00', '2023-09-15 05:59:19', '2023-09-15 05:59:19'),
(1543, 'TS001406', '284', '20230529C1', '277.00', '13085.00', '2023-09-15 05:59:19', '2023-09-15 05:59:19'),
(1544, 'TS001407', '286', '20230530A1', '1523.00', '12660.00', '2023-09-15 06:03:16', '2023-09-15 06:03:16'),
(1545, 'TS001408', '287', '20230530A1', '8632.00', '9640.00', '2023-09-15 06:03:16', '2023-09-15 06:03:16'),
(1546, 'TS001409', '284', '20230530A1', '143.00', '13085.00', '2023-09-15 06:03:16', '2023-09-15 06:03:16'),
(1547, 'TS001410', '286', '20230530B1', '239.00', '12660.00', '2023-09-15 06:13:41', '2023-09-15 06:13:41'),
(1548, 'TS001411', '288', '20230530B1', '1190.00', '12660.00', '2023-09-15 06:13:41', '2023-09-15 06:13:41'),
(1549, 'TS001412', '287', '20230530B1', '7816.00', '9640.00', '2023-09-15 06:13:41', '2023-09-15 06:13:41'),
(1550, 'TS001413', '284', '20230530B1', '456.00', '13085.00', '2023-09-15 06:13:41', '2023-09-15 06:13:41'),
(1551, 'TS001414', '288', '20230531C1', '1844.00', '12660.00', '2023-09-15 06:20:03', '2023-09-15 06:20:03'),
(1552, 'TS001415', '287', '20230531C1', '7099.00', '9640.00', '2023-09-15 06:20:03', '2023-09-15 06:20:03'),
(1553, 'TS001416', '289', '20230531C1', '710.00', '9640.00', '2023-09-15 06:20:03', '2023-09-15 06:20:03'),
(1554, 'TS001417', '284', '20230531C1', '245.00', '13085.00', '2023-09-15 06:20:03', '2023-09-15 06:20:03'),
(1555, 'TS001418', '288', '20230531A1', '1916.00', '12660.00', '2023-09-15 06:24:34', '2023-09-15 06:24:34'),
(1556, 'TS001419', '289', '20230531A1', '7001.00', '9640.00', '2023-09-15 06:24:34', '2023-09-15 06:24:34'),
(1557, 'TS001420', '284', '20230531A1', '767.00', '13085.00', '2023-09-15 06:24:34', '2023-09-15 06:24:34'),
(1558, 'TS001421', '288', '20230531B1', '1208.00', '12660.00', '2023-09-15 06:28:02', '2023-09-15 06:28:02'),
(1559, 'TS001422', '289', '20230531B1', '6335.00', '9640.00', '2023-09-15 06:28:02', '2023-09-15 06:28:02'),
(1560, 'TS001423', '284', '20230531B1', '86.00', '13085.00', '2023-09-15 06:28:02', '2023-09-15 06:28:02');

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
-- Indexes for table `setup_dealer`
--
ALTER TABLE `setup_dealer`
  ADD PRIMARY KEY (`dealer_id`);

--
-- Indexes for table `tblbarang`
--
ALTER TABLE `tblbarang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kdBarang` (`kdBarang`);

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
-- Indexes for table `tbljasa`
--
ALTER TABLE `tbljasa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kdBarang` (`kdJasa`);

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
-- Indexes for table `tblpenjualan_detail_jasa`
--
ALTER TABLE `tblpenjualan_detail_jasa`
  ADD PRIMARY KEY (`idDetailPenjualan`);

--
-- Indexes for table `tblpersediaan`
--
ALTER TABLE `tblpersediaan`
  ADD PRIMARY KEY (`idPersediaan`),
  ADD UNIQUE KEY `kdPersediaan_UNIQUE` (`kdPersediaan`),
  ADD UNIQUE KEY `kdPersediaan` (`kdPersediaan`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_ledger`
--
ALTER TABLE `general_ledger`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `gl`
--
ALTER TABLE `gl`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gl_detail`
--
ALTER TABLE `gl_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `gl_lr`
--
ALTER TABLE `gl_lr`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `rekening_anggaran`
--
ALTER TABLE `rekening_anggaran`
  MODIFY `id_rekening` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setup_dealer`
--
ALTER TABLE `setup_dealer`
  MODIFY `dealer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbarang`
--
ALTER TABLE `tblbarang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id_biaya` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblheader_aplusan`
--
ALTER TABLE `tblheader_aplusan`
  MODIFY `id_aplusan` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinventaris`
--
ALTER TABLE `tblinventaris`
  MODIFY `id_inventaris` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tblinventaris_pengadaan`
--
ALTER TABLE `tblinventaris_pengadaan`
  MODIFY `id_pengadaan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblinventaris_pengadaan_detail`
--
ALTER TABLE `tblinventaris_pengadaan_detail`
  MODIFY `id_pengadaan_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblinventaris_penyusutan`
--
ALTER TABLE `tblinventaris_penyusutan`
  MODIFY `id_penyusutan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinventaris_penyusutan_detail`
--
ALTER TABLE `tblinventaris_penyusutan_detail`
  MODIFY `id_penyusutan_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbljasa`
--
ALTER TABLE `tbljasa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblkartu_stok`
--
ALTER TABLE `tblkartu_stok`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblkategori`
--
ALTER TABLE `tblkategori`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblkupon`
--
ALTER TABLE `tblkupon`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllinkaja`
--
ALTER TABLE `tbllinkaja`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblpembelian`
--
ALTER TABLE `tblpembelian`
  MODIFY `idPembelian` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpembelian_detail`
--
ALTER TABLE `tblpembelian_detail`
  MODIFY `idPembelianDetail` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpenjualan`
--
ALTER TABLE `tblpenjualan`
  MODIFY `idPenjualan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblpenjualankupon`
--
ALTER TABLE `tblpenjualankupon`
  MODIFY `idPenjualanKupon` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpenjualan_detail`
--
ALTER TABLE `tblpenjualan_detail`
  MODIFY `idDetailPenjualan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tblpenjualan_detail_jasa`
--
ALTER TABLE `tblpenjualan_detail_jasa`
  MODIFY `idDetailPenjualan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblpersediaan`
--
ALTER TABLE `tblpersediaan`
  MODIFY `idPersediaan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblperubahan_hargabbm`
--
ALTER TABLE `tblperubahan_hargabbm`
  MODIFY `id_perubahan` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpobbm`
--
ALTER TABLE `tblpobbm`
  MODIFY `idPo` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpobbm_detail`
--
ALTER TABLE `tblpobbm_detail`
  MODIFY `idPoDetail` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprofit`
--
ALTER TABLE `tblprofit`
  MODIFY `id_profit` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstokbbm_hpp`
--
ALTER TABLE `tblstokbbm_hpp`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstok_fifo`
--
ALTER TABLE `tblstok_fifo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltera_detail`
--
ALTER TABLE `tbltera_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblterimabbm`
--
ALTER TABLE `tblterimabbm`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblterimabbm_detail`
--
ALTER TABLE `tblterimabbm_detail`
  MODIFY `id_detail` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltransaksi_nosel`
--
ALTER TABLE `tbltransaksi_nosel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltransaksi_stok`
--
ALTER TABLE `tbltransaksi_stok`
  MODIFY `id_trans` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1561;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
