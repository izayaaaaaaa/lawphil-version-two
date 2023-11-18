-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 12:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawdb`
--
-- --------------------------------------------------------
--
-- Table structure for table `laws`
--
CREATE TABLE
  `laws` (
    `id` int (11) NOT NULL,
    `title` varchar(255) NOT NULL,
    `category` varchar(255) DEFAULT NULL,
    `content` longtext NOT NULL,
    `subcategory` varchar(255) DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `laws`
--
INSERT INTO
  `laws` (
    `id`,
    `title`,
    `category`,
    `content`,
    `subcategory`
  )
VALUES
  (
    2,
    'Law 2',
    'Statutes',
    'Content of Law 2',
    'DummyCategory'
  ),
  (
    3,
    'Law 3',
    'Executive Issuances',
    '<p>Content of Law 3 three</p>',
    'DummyCategory'
  ),
  (
    4,
    'Law 4',
    'Judicial Issuances',
    'Content of Law 4',
    'DummyCategory'
  ),
  (
    5,
    'Law 5',
    'Other Judicial Issuances',
    'Content of Law 5',
    'DummyCategory'
  ),
  (
    6,
    'Law 6',
    'Other Issuances',
    'Content of Law 6',
    'DummyCategory'
  ),
  (
    7,
    'Law 7',
    'Jurisprudence',
    'Content of Law 7',
    'DummyCategory'
  ),
  (
    8,
    'Law 8',
    'International Legal Resources',
    'Content of Law 8',
    'DummyCategory'
  ),
  (
    9,
    'Law 9',
    'AUSL Exclusive',
    'Content of Law 9',
    'DummyCategory'
  ),
  (
    10,
    'The Law Governing the Constitutional Commision of 1986',
    'Constitutions',
    'Content of Law 10',
    'Other Past Constitutions and Organic Acts'
  ),
  (
    11,
    'Law 11',
    'Statutes',
    'Content of Law 11',
    'DummyCategory'
  ),
  (
    12,
    'Law 12',
    'Executive Issuances',
    'Content of Law 12',
    'DummyCategory'
  ),
  (
    13,
    'Law 13',
    'Judicial Issuances',
    'Content of Law 13',
    'DummyCategory'
  ),
  (
    14,
    'Law 14',
    'Other Judicial Issuances',
    'Content of Law 14',
    'DummyCategory'
  ),
  (
    15,
    'Law 15',
    'Other Issuances',
    'Content of Law 15',
    'DummyCategory'
  ),
  (
    16,
    'Law 16',
    'Jurisprudence',
    'Content of Law 16',
    'DummyCategory'
  ),
  (
    17,
    'Law 17',
    'International Legal Resources',
    'Content of Law 17',
    'DummyCategory'
  ),
  (
    18,
    'Law 18',
    'AUSL Exclusive',
    'Content of Law 18',
    'DummyCategory'
  ),
  (
    19,
    '1973 Constitution of the Republic of the Philippines',
    'Constitutions',
    'Content of Law 19',
    'Philippine Constitution'
  ),
  (
    20,
    'Law 20',
    'Statutes',
    'Content of Law 20',
    'DummyCategory'
  ),
  (
    21,
    'Law 21',
    'Executive Issuances',
    'Content of Law 21',
    'DummyCategory'
  ),
  (
    22,
    'Law 22',
    'Judicial Issuances',
    'Content of Law 22',
    'DummyCategory'
  ),
  (
    23,
    'Law 23',
    'Other Judicial Issuances',
    'Content of Law 23',
    'DummyCategory'
  ),
  (
    24,
    'Law 24',
    'Other Issuances',
    'Content of Law 24',
    'DummyCategory'
  ),
  (
    25,
    'Law 25',
    'Jurisprudence',
    'Content of Law 25',
    'DummyCategory'
  ),
  (
    26,
    'Law 26',
    'International Legal Resources',
    'Content of Law 26',
    'DummyCategory'
  ),
  (
    27,
    'Law 27',
    'AUSL Exclusive',
    'Content of Law 27',
    'DummyCategory'
  ),
  (
    28,
    '1943 Constitution of the Republic of the Philippines',
    'Constitutions',
    'Content of Law 28',
    'Other Past Constitutions and Organic Acts'
  ),
  (
    29,
    'Law 29',
    'Statutes',
    'Content of Law 29',
    'DummyCategory'
  ),
  (
    30,
    'Law 30',
    'Executive Issuances',
    'Content of Law 30',
    'DummyCategory'
  ),
  (
    31,
    'Law 31',
    'Judicial Issuances',
    'Content of Law 31',
    'DummyCategory'
  ),
  (
    32,
    'Law 32',
    'Other Judicial Issuances',
    'Content of Law 32',
    'DummyCategory'
  ),
  (
    33,
    'Law 33',
    'Other Issuances',
    'Content of Law 33',
    'DummyCategory'
  ),
  (
    34,
    'Law 34',
    'Jurisprudence',
    'Content of Law 34',
    'DummyCategory'
  ),
  (
    35,
    'Law 35',
    'International Legal Resources',
    'Content of Law 35',
    'DummyCategory'
  ),
  (
    36,
    'Law 36',
    'AUSL Exclusive',
    'Content of Law 36',
    'DummyCategory'
  ),
  (
    37,
    '1935 Constitution of the Republic of the Philippines',
    'Constitutions',
    'Content of Law 37',
    'Philippine Constitution'
  ),
  (
    38,
    'Law 38',
    'Statutes',
    'Content of Law 38',
    'DummyCategory'
  ),
  (
    39,
    'Law 39',
    'Executive Issuances',
    'Content of Law 39',
    'DummyCategory'
  ),
  (
    40,
    'Law 40',
    'Judicial Issuances',
    'Content of Law 40',
    'DummyCategory'
  ),
  (
    41,
    'Law 41',
    'Other Judicial Issuances',
    'Content of Law 41',
    'DummyCategory'
  ),
  (
    42,
    'Law 42',
    'Other Issuances',
    'Content of Law 42',
    'DummyCategory'
  ),
  (
    43,
    'Law 43',
    'Jurisprudence',
    'Content of Law 43',
    'DummyCategory'
  ),
  (
    44,
    'Law 44',
    'International Legal Resources',
    'Content of Law 44',
    'DummyCategory'
  ),
  (
    45,
    'Law 45',
    'AUSL Exclusive',
    'Content of Law 45',
    'DummyCategory'
  ),
  (
    46,
    '1899\nConstitution of the Republic of the Philippines\n(Malolos Convention)',
    'Constitutions',
    'Content of Law 46',
    'Other Past Constitutions and Organic Acts'
  ),
  (
    47,
    'Law 47',
    'Statutes',
    'Content of Law 47',
    'DummyCategory'
  ),
  (
    48,
    'Law 48',
    'Executive Issuances',
    'Content of Law 48',
    'DummyCategory'
  ),
  (
    49,
    'Law 49',
    'Judicial Issuances',
    'Content of Law 49',
    'DummyCategory'
  ),
  (
    50,
    'Law 50',
    'Other Judicial Issuances',
    'Content of Law 50',
    'DummyCategory'
  ),
  (
    51,
    'Law 51',
    'Statutes',
    'Content of Law 51',
    'DummyCategory'
  ),
  (
    52,
    'Law 52',
    'Statutes',
    'Content of Law 52',
    'DummyCategory'
  ),
  (
    53,
    'Law 53',
    'Executive Issuances',
    'Content of Law 53',
    'DummyCategory'
  ),
  (
    54,
    'Law 54',
    'Judicial Issuances',
    'Content of Law 54',
    'DummyCategory'
  ),
  (
    55,
    'Law 55',
    'Other Judicial Issuances',
    'Content of Law 55',
    'DummyCategory'
  ),
  (
    56,
    'Law 56',
    'Other Issuances',
    'Content of Law 56',
    'DummyCategory'
  ),
  (
    57,
    'Law 57',
    'Jurisprudence',
    'Content of Law 57',
    'DummyCategory'
  ),
  (
    58,
    'Law 58',
    'International Legal Resources',
    'Content of Law 58',
    'DummyCategory'
  ),
  (
    59,
    'Law 59',
    'AUSL Exclusive',
    'Content of Law 59',
    'DummyCategory'
  ),
  (
    60,
    'Law 60',
    'Statutes',
    'Content of Law 60',
    'DummyCategory'
  ),
  (
    61,
    'Law 61',
    'Statutes',
    'Content of Law 61',
    'DummyCategory'
  ),
  (
    62,
    'Law 62',
    'Executive Issuances',
    'Content of Law 62',
    'DummyCategory'
  ),
  (
    63,
    'Law 63',
    'Judicial Issuances',
    'Content of Law 63',
    'DummyCategory'
  ),
  (
    64,
    'Law 64',
    'Other Judicial Issuances',
    'Content of Law 64',
    'DummyCategory'
  ),
  (
    65,
    'Law 65',
    'Other Issuances',
    'Content of Law 65',
    'DummyCategory'
  ),
  (
    66,
    'Law 66',
    'Jurisprudence',
    'Content of Law 66',
    'DummyCategory'
  ),
  (
    67,
    'Law 67',
    'International Legal Resources',
    'Content of Law 67',
    'DummyCategory'
  ),
  (
    68,
    'Law 68',
    'AUSL Exclusive',
    'Content of Law 68',
    'DummyCategory'
  ),
  (
    69,
    'Law 69',
    'Statutes',
    'Content of Law 69',
    'DummyCategory'
  ),
  (
    70,
    'Law 70',
    'Statutes',
    'Content of Law 70',
    'DummyCategory'
  ),
  (
    71,
    'Law 71',
    'Executive Issuances',
    'Content of Law 71',
    'DummyCategory'
  ),
  (
    72,
    'Law 72',
    'Judicial Issuances',
    'Content of Law 72',
    'DummyCategory'
  ),
  (
    73,
    'Law 73',
    'Other Judicial Issuances',
    'Content of Law 73',
    'DummyCategory'
  ),
  (
    74,
    'Law 74',
    'Other Issuances',
    'Content of Law 74',
    'DummyCategory'
  ),
  (
    75,
    'Law 75',
    'Jurisprudence',
    'Content of Law 75',
    'DummyCategory'
  ),
  (
    76,
    'Law 76',
    'International Legal Resources',
    'Content of Law 76',
    'DummyCategory'
  ),
  (
    77,
    'Law 77',
    'AUSL Exclusive',
    'Content of Law 77',
    'DummyCategory'
  ),
  (
    78,
    'Law 78',
    'Statutes',
    'Content of Law 78',
    'DummyCategory'
  ),
  (
    79,
    'Law 79',
    'Statutes',
    'Content of Law 79',
    'DummyCategory'
  ),
  (
    80,
    'Law 80',
    'Executive Issuances',
    'Content of Law 80',
    'DummyCategory'
  ),
  (
    81,
    'Law 81',
    'Judicial Issuances',
    'Content of Law 81',
    'DummyCategory'
  ),
  (
    82,
    'Law 82',
    'Other Judicial Issuances',
    'Content of Law 82',
    'DummyCategory'
  ),
  (
    83,
    'Law 83',
    'Other Issuances',
    'Content of Law 83',
    'DummyCategory'
  ),
  (
    84,
    'Law 84',
    'Jurisprudence',
    'Content of Law 84',
    'DummyCategory'
  ),
  (
    85,
    'Law 85',
    'International Legal Resources',
    'Content of Law 85',
    'DummyCategory'
  ),
  (
    86,
    'Law 86',
    'AUSL Exclusive',
    'Content of Law 86',
    'DummyCategory'
  ),
  (
    87,
    'Law 87',
    'Statutes',
    'Content of Law 87',
    'DummyCategory'
  ),
  (
    88,
    'Law 88',
    'Statutes',
    'Content of Law 88',
    'DummyCategory'
  ),
  (
    89,
    'Law 89',
    'Executive Issuances',
    'Content of Law 89',
    'DummyCategory'
  ),
  (
    90,
    'Law 90',
    'Judicial Issuances',
    'Content of Law 90',
    'DummyCategory'
  ),
  (
    91,
    'Law 91',
    'Other Judicial Issuances',
    'Content of Law 91',
    'DummyCategory'
  ),
  (
    92,
    'Law 92',
    'Other Issuances',
    'Content of Law 92',
    'DummyCategory'
  ),
  (
    93,
    'Law 93',
    'Jurisprudence',
    'Content of Law 93',
    'DummyCategory'
  ),
  (
    94,
    'Law 94',
    'International Legal Resources',
    'Content of Law 94',
    'DummyCategory'
  ),
  (
    95,
    'Law 95',
    'AUSL Exclusive',
    'Content of Law 95',
    'DummyCategory'
  ),
  (
    96,
    'Law 96',
    'Statutes',
    'Content of Law 96',
    'DummyCategory'
  ),
  (
    97,
    'Law 97',
    'Statutes',
    'Content of Law 97',
    'DummyCategory'
  ),
  (
    98,
    'Law 98',
    'Executive Issuances',
    'Content of Law 98',
    'DummyCategory'
  ),
  (
    99,
    'Law 99',
    'Judicial Issuances',
    'Content of Law 99',
    'DummyCategory'
  ),
  (
    100,
    'Law 100',
    'Other Judicial Issuances',
    'Content of Law 100',
    'DummyCategory'
  ),
  (
    101,
    'Law 101',
    'Other Issuances',
    'Content of Law 101',
    'DummyCategory'
  ),
  (
    102,
    'Law 102',
    'Jurisprudence',
    'Content of Law 102',
    'DummyCategory'
  ),
  (
    103,
    'Law 103',
    'International Legal Resources',
    'Content of Law 103',
    'DummyCategory'
  ),
  (
    104,
    'Law 104',
    'AUSL Exclusive',
    'Content of Law 104',
    'DummyCategory'
  ),
  (
    105,
    'Law 105',
    'Statutes',
    'Content of Law 105',
    'DummyCategory'
  ),
  (
    106,
    'Law 106',
    'Statutes',
    'Content of Law 106',
    'DummyCategory'
  ),
  (
    107,
    'Law 107',
    'Executive Issuances',
    'Content of Law 107',
    'DummyCategory'
  ),
  (
    108,
    'Law 108',
    'Judicial Issuances',
    'Content of Law 108',
    'DummyCategory'
  ),
  (
    109,
    'Law 109',
    'Other Judicial Issuances',
    'Content of Law 109',
    'DummyCategory'
  ),
  (
    110,
    'Law 110',
    'Other Issuances',
    'Content of Law 110',
    'DummyCategory'
  ),
  (
    111,
    'Law 111',
    'Jurisprudence',
    'Content of Law 111',
    'DummyCategory'
  ),
  (
    112,
    'Law 112',
    'International Legal Resources',
    'Content of Law 112',
    'DummyCategory'
  ),
  (
    113,
    'Law 113',
    'AUSL Exclusive',
    'Content of Law 113',
    'DummyCategory'
  ),
  (
    114,
    'Law 114',
    'Statutes',
    'Content of Law 114',
    'DummyCategory'
  ),
  (
    115,
    'Law 115',
    'Statutes',
    'Content of Law 115',
    'DummyCategory'
  ),
  (
    116,
    'Law 116',
    'Executive Issuances',
    'Content of Law 116',
    'DummyCategory'
  ),
  (
    117,
    'Law 117',
    'Judicial Issuances',
    'Content of Law 117',
    'DummyCategory'
  ),
  (
    118,
    'Law 118',
    'Other Judicial Issuances',
    'Content of Law 118',
    'DummyCategory'
  ),
  (
    119,
    'Law 119',
    'Other Issuances',
    'Content of Law 119',
    'DummyCategory'
  ),
  (
    120,
    'Law 120',
    'Jurisprudence',
    'Content of Law 120',
    'DummyCategory'
  ),
  (
    121,
    'Law 121',
    'Statutes',
    'Content of Law 121',
    'DummyCategory'
  ),
  (
    122,
    'Law 122',
    'Executive Issuances',
    'Content of Law 122',
    'DummyCategory'
  ),
  (
    123,
    'Law 123',
    'Judicial Issuances',
    'Content of Law 123',
    'DummyCategory'
  ),
  (
    124,
    'Law 124',
    'Other Judicial Issuances',
    'Content of Law 124',
    'DummyCategory'
  ),
  (
    125,
    'Law 125',
    'Other Issuances',
    'Content of Law 125',
    'DummyCategory'
  ),
  (
    126,
    'Law 126',
    'Jurisprudence',
    'Content of Law 126',
    'DummyCategory'
  ),
  (
    127,
    'Law 127',
    'International Legal Resources',
    'Content of Law 127',
    'DummyCategory'
  ),
  (
    128,
    'Law 128',
    'AUSL Exclusive',
    'Content of Law 128',
    'DummyCategory'
  ),
  (
    129,
    'Law 129',
    'Statutes',
    'Content of Law 129',
    'DummyCategory'
  ),
  (
    130,
    'Law 130',
    'Statutes',
    'Content of Law 130',
    'DummyCategory'
  ),
  (
    131,
    'Law 131',
    'Executive Issuances',
    'Content of Law 131',
    'DummyCategory'
  ),
  (
    132,
    'Law 132',
    'Judicial Issuances',
    'Content of Law 132',
    'DummyCategory'
  ),
  (
    133,
    'Law 133',
    'Other Judicial Issuances',
    'Content of Law 133',
    'DummyCategory'
  ),
  (
    134,
    'Law 134',
    'Other Issuances',
    'Content of Law 134',
    'DummyCategory'
  ),
  (
    135,
    'Law 135',
    'Jurisprudence',
    'Content of Law 135',
    'DummyCategory'
  ),
  (
    136,
    'Law 136',
    'International Legal Resources',
    'Content of Law 136',
    'DummyCategory'
  ),
  (
    137,
    'Law 137',
    'AUSL Exclusive',
    'Content of Law 137',
    'DummyCategory'
  ),
  (
    138,
    'Law 138',
    'Statutes',
    'Content of Law 138',
    'DummyCategory'
  ),
  (
    139,
    'Law 139',
    'Statutes',
    'Content of Law 139',
    'DummyCategory'
  ),
  (
    140,
    'Law 140',
    'Executive Issuances',
    'Content of Law 140',
    'DummyCategory'
  ),
  (
    141,
    'Law 141',
    'Judicial Issuances',
    'Content of Law 141',
    'DummyCategory'
  ),
  (
    142,
    'Law 142',
    'Other Judicial Issuances',
    'Content of Law 142',
    'DummyCategory'
  ),
  (
    143,
    'Law 143',
    'Other Issuances',
    'Content of Law 143',
    'DummyCategory'
  ),
  (
    144,
    'Law 144',
    'Jurisprudence',
    'Content of Law 144',
    'DummyCategory'
  ),
  (
    145,
    'Law 145',
    'International Legal Resources',
    'Content of Law 145',
    'DummyCategory'
  ),
  (
    146,
    'Law 146',
    'AUSL Exclusive',
    'Content of Law 146',
    'DummyCategory'
  ),
  (
    147,
    'Law 147',
    'Statutes',
    'Content of Law 147',
    'DummyCategory'
  ),
  (
    148,
    'Law 148',
    'Statutes',
    'Content of Law 148',
    'DummyCategory'
  ),
  (
    149,
    'Law 149',
    'Executive Issuances',
    'Content of Law 149',
    'DummyCategory'
  ),
  (
    150,
    'Law 150',
    'Judicial Issuances',
    'Content of Law 150',
    'DummyCategory'
  ),
  (
    151,
    'Law 151',
    'Other Judicial Issuances',
    'Content of Law 151',
    'DummyCategory'
  ),
  (
    152,
    'Law 152',
    'Other Issuances',
    'Content of Law 152',
    'DummyCategory'
  ),
  (
    153,
    'Law 153',
    'Jurisprudence',
    'Content of Law 153',
    'DummyCategory'
  ),
  (
    154,
    'Law 154',
    'International Legal Resources',
    'Content of Law 154',
    'DummyCategory'
  ),
  (
    155,
    'Law 155',
    'AUSL Exclusive',
    'Content of Law 155',
    'DummyCategory'
  ),
  (
    156,
    'Law 156',
    'Statutes',
    'Content of Law 156',
    'DummyCategory'
  ),
  (
    157,
    'Law 157',
    'Statutes',
    'Content of Law 157',
    'DummyCategory'
  ),
  (
    158,
    'Law 158',
    'Executive Issuances',
    'Content of Law 158',
    'DummyCategory'
  ),
  (
    159,
    'Law 159',
    'Judicial Issuances',
    'Content of Law 159',
    'DummyCategory'
  ),
  (
    160,
    'Law 160',
    'Other Judicial Issuances',
    'Content of Law 160',
    'DummyCategory'
  ),
  (
    161,
    'Law 161',
    'Other Issuances',
    'Content of Law 161',
    'DummyCategory'
  ),
  (
    162,
    'Law 162',
    'Jurisprudence',
    'Content of Law 162',
    'DummyCategory'
  ),
  (
    163,
    'Law 163',
    'International Legal Resources',
    'Content of Law 163',
    'DummyCategory'
  ),
  (
    164,
    'Law 164',
    'AUSL Exclusive',
    'Content of Law 164',
    'DummyCategory'
  ),
  (
    165,
    'Law 165',
    'Statutes',
    'Content of Law 165',
    'DummyCategory'
  ),
  (
    166,
    'Law 166',
    'Statutes',
    'Content of Law 166',
    'DummyCategory'
  ),
  (
    167,
    'Law 167',
    'Executive Issuances',
    'Content of Law 167',
    'DummyCategory'
  ),
  (
    168,
    'Law 168',
    'Judicial Issuances',
    'Content of Law 168',
    'DummyCategory'
  ),
  (
    169,
    'Law 169',
    'Other Judicial Issuances',
    'Content of Law 169',
    'DummyCategory'
  ),
  (
    170,
    'Law 170',
    'Other Issuances',
    'Content of Law 170',
    'DummyCategory'
  ),
  (
    171,
    'Law 171',
    'Jurisprudence',
    'Content of Law 171',
    'DummyCategory'
  ),
  (
    172,
    'Law 172',
    'International Legal Resources',
    'Content of Law 172',
    'DummyCategory'
  ),
  (
    173,
    'Law 173',
    'AUSL Exclusive',
    'Content of Law 173',
    'DummyCategory'
  ),
  (
    174,
    'Law 174',
    'Statutes',
    'Content of Law 174',
    'DummyCategory'
  ),
  (
    175,
    'Law 175',
    'Statutes',
    'Content of Law 175',
    'DummyCategory'
  ),
  (
    176,
    'Law 176',
    'Executive Issuances',
    'Content of Law 176',
    'DummyCategory'
  ),
  (
    177,
    'Law 177',
    'Judicial Issuances',
    'Content of Law 177',
    'DummyCategory'
  ),
  (
    178,
    'Law 178',
    'Other Judicial Issuances',
    'Content of Law 178',
    'DummyCategory'
  ),
  (
    179,
    'Law 179',
    'Other Issuances',
    'Content of Law 179',
    'DummyCategory'
  ),
  (
    180,
    'Law 180',
    'Jurisprudence',
    'Content of Law 180',
    'DummyCategory'
  ),
  (
    181,
    'Law 181',
    'International Legal Resources',
    'Content of Law 181',
    'DummyCategory'
  ),
  (
    182,
    'Law 182',
    'AUSL Exclusive',
    'Content of Law 182',
    'DummyCategory'
  ),
  (
    183,
    'Law 183',
    'Statutes',
    'Content of Law 183',
    'DummyCategory'
  ),
  (
    184,
    'Law 184',
    'Statutes',
    'Content of Law 184',
    'DummyCategory'
  ),
  (
    185,
    'Law 185',
    'Executive Issuances',
    'Content of Law 185',
    'DummyCategory'
  ),
  (
    186,
    'Law 186',
    'Judicial Issuances',
    'Content of Law 186',
    'DummyCategory'
  ),
  (
    187,
    'Law 187',
    'Other Judicial Issuances',
    'Content of Law 187',
    'DummyCategory'
  ),
  (
    188,
    'Law 188',
    'Other Issuances',
    'Content of Law 188',
    'DummyCategory'
  ),
  (
    189,
    'Law 189',
    'Jurisprudence',
    'Content of Law 189',
    'DummyCategory'
  ),
  (
    190,
    'Law 190',
    'International Legal Resources',
    'Content of Law 190',
    'DummyCategory'
  ),
  (
    191,
    'Law 191',
    'AUSL Exclusive',
    'Content of Law 191',
    'DummyCategory'
  ),
  (
    192,
    'Law 192',
    'Statutes',
    'Content of Law 192',
    'DummyCategory'
  ),
  (
    193,
    'Law 193',
    'Statutes',
    'Content of Law 193',
    'DummyCategory'
  ),
  (
    194,
    'Law 194',
    'Executive Issuances',
    'Content of Law 194',
    'DummyCategory'
  ),
  (
    195,
    'Law 195',
    'Judicial Issuances',
    'Content of Law 195',
    'DummyCategory'
  ),
  (
    196,
    'Law 196',
    'Other Judicial Issuances',
    'Content of Law 196',
    'DummyCategory'
  ),
  (
    197,
    'Law 197',
    'Other Issuances',
    'Content of Law 197',
    'DummyCategory'
  ),
  (
    198,
    'Law 198',
    'Jurisprudence',
    'Content of Law 198',
    'DummyCategory'
  ),
  (
    199,
    'Law 199',
    'International Legal Resources',
    'Content of Law 199',
    'DummyCategory'
  ),
  (
    200,
    'Law 200',
    'AUSL Exclusive',
    'Content of Law 200',
    'DummyCategory'
  ),
  (
    201,
    '1916 Philippine Autonomy Act',
    'Constitutions',
    'Content of Law 201',
    'Other Past Constitutions and Organic Acts'
  ),
  (
    202,
    '1902 Philippine Organic Act',
    'Constitutions',
    'Content of Law 202',
    'Other Past Constitutions and Organic Acts'
  );

-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE
  `users` (
    `id` int (11) NOT NULL,
    `username` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `is_admin` tinyint (1) NOT NULL DEFAULT 0
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `users`
--
INSERT INTO
  `users` (`id`, `username`, `email`, `password`, `is_admin`)
VALUES
  (
    1,
    'user1',
    'user1@example.com',
    '$2y$10$BrATVIad9XlTYREKXyw6ruRwa8LtjqpepzO/Oq30KL5L1C97QNCUS',
    0
  ),
  (
    2,
    'user2',
    'user2@example.com',
    '$2y$10$NiEUCgj4i3ZK9uIoYkS0MuptPfV8RWykkYIAjzBsuhdbqbo2JwtDu',
    1
  ),
  (
    3,
    'user3',
    'user3@example.com',
    '$2y$10$a.fBLb7S2EqU98BQJAyAS.dnci1D2Zp/o1cRVEJa/PRLVDDNQhXBa',
    0
  ),
  (
    4,
    'user4',
    'user4@example.com',
    '$2y$10$sNzwOT8LpMGMkjvPVCdeUut6eZNVXubo5b1thxJBqMgfjGdU2ZM0a',
    0
  ),
  (
    5,
    'user5',
    'user5@example.com',
    '$2y$10$.CupOwTt9DF5tRij9SiB8uJQD6Q8iCfPGvaBUMcjXV5iiCeZHt2a2',
    0
  ),
  (
    6,
    'user6',
    'user6@example.com',
    '$2y$10$/Xn0.QTMIHQ31sX29GbMduDiZTu28sIQbCKM6FGzT2gfhNyRfE/1O',
    0
  ),
  (
    7,
    'user7',
    'user7@example.com',
    '$2y$10$HfgXkQylj9xhth6b8MXyy.FkQZgSjLw2NhpOLG38Z0LeQvDmgQMTu',
    0
  ),
  (
    8,
    'user8',
    'user8@example.com',
    '$2y$10$0eq9BYDKQfn5/dR0bHJcr.CHKqAoT/kydIshwfOIoMCVa/1VqbOeq',
    0
  ),
  (
    9,
    'user9',
    'user9@example.com',
    '$2y$10$HH3/CGzrEVtbIfwKea37O.D9gOh7qNzLQhnAprEylnHUO.8g6u60i',
    0
  ),
  (
    10,
    'user10',
    'user10@example.com',
    '$2y$10$hrIJmxPOhzZusPG509BFoeCGfbx8w/UHpJ2soN5mdYRXkPu2EzF0i',
    0
  ),
  (
    11,
    'user11',
    'user11@example.com',
    '$2y$10$CHGlXiNV.Jitz5kIx3DNWe6CFu/3W/cTiLZ/NYUsY9AGAeZcAlUie',
    0
  ),
  (
    12,
    'user12',
    'user12@example.com',
    '$2y$10$e42/Fz0OeK9IWNZny07y6epB0UTGBrYaOoGuT/5AuISaoY/LPB0Yi',
    0
  ),
  (
    13,
    'user13',
    'user13@example.com',
    '$2y$10$Chbu6Vvk/3P7TEdE1ruSVuUSEo4vIDIqyOSRg7bcfq1ta/eqBPxDi',
    0
  ),
  (
    14,
    'user14',
    'user14@example.com',
    '$2y$10$ENKxChE8wJjdtEHO1gHkL.jJ4Hf.0L427uD3vZv69Knc0p.4Vj2ii',
    0
  ),
  (
    15,
    'user15',
    'user15@example.com',
    '$2y$10$juR5RfTaPG1SQ.1Yt5chk.KRasTdkl3xrx2CIivSmD3xsUXFpQMmy',
    0
  ),
  (
    16,
    'user16',
    'user16@example.com',
    '$2y$10$SuA8Q6fwCsOm9JofnlFPcuQtxtB9fpDqyL2jugyD5zDILoil1iMaO',
    0
  ),
  (
    17,
    'user17',
    'user17@example.com',
    '$2y$10$xeVMwUw5lM5gT9ecibyB1OmcsJyvatJAaGv87YF7YRrz/YuKa0/uO',
    0
  ),
  (
    18,
    'user18',
    'user18@example.com',
    '$2y$10$NvVSwyi3oKiPX9ED1376heQNtz3hLUeb1GWWWBvzZTD4L0N3Xmn.S',
    0
  ),
  (
    19,
    'user19',
    'user19@example.com',
    '$2y$10$ctPFe/MSEKvOwJVW5VTnYOkBo60StcBqZJLr.4qy7FJ7025DvbsOy',
    0
  ),
  (
    20,
    'user20',
    'user20@example.com',
    '$2y$10$dZgkgi9d3Tb7jsD0UAa85eaknlb2splHPTZL4yDucfzvgng3NTAJK',
    0
  ),
  (
    21,
    'user21',
    'user21@example.com',
    '$2y$10$aAxc/J5qWrw95qeer/o8xeFoiy/6f3cYsz9R0UPZ7TfR20DwSgoIS',
    0
  ),
  (
    22,
    'user22',
    'user22@example.com',
    '$2y$10$iflciq5y4jkefeWyquD1EOnyy/pUu3VPvP7CtSNsfv3dfCbUZn/BS',
    0
  ),
  (
    23,
    'user23',
    'user23@example.com',
    '$2y$10$WdIvf35l95TbdHBdvFQ/p.sphbgDOccEAkt4qsp/I3Gsm1JhOgb7q',
    0
  ),
  (
    24,
    'user24',
    'user24@example.com',
    '$2y$10$Q8xssSwsn0E0NtGK0vUy9OhjNTujh3umCzrEBQtS8EeoAVeUUorQW',
    0
  ),
  (
    25,
    'user25',
    'user25@example.com',
    '$2y$10$ln/7CJpioqqg/pEJF6YCbOsKhaSY/ghnsMtbYh3WM1rLE.mq0ztOe',
    0
  ),
  (
    26,
    'test',
    'test@email.com',
    '$2y$10$v154E/CkE2UN/rYFVw9qOeB3AkSoAZlUWDQPLt/dS2JEfh7Vn4zJ2',
    0
  );

--
-- Indexes for dumped tables
--
--
-- Indexes for table `laws`
--
ALTER TABLE `laws` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `laws`
--
ALTER TABLE `laws` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 203;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 27;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;