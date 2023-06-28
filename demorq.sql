-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 10:57 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demorq`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `activity` varchar(50) DEFAULT NULL,
  `update` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `userId`, `activity`, `update`, `updated`, `updatedBy`, `companyId`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'NewVendor', 'New Vendor \'Lokesh Reddy\' is added', '2023-06-22 15:26:09', 'lokesh', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ar_calls_histories`
--

CREATE TABLE `ar_calls_histories` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `isTdsAr` int(11) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  `purchaseOrderId` int(11) DEFAULT NULL,
  `purchaseItemId` int(11) DEFAULT NULL,
  `purchaseItemDeliveryId` int(11) DEFAULT NULL,
  `skuCatId` int(11) DEFAULT NULL,
  `skuId` int(11) DEFAULT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `assetServiceProviderId` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` datetime DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT '',
  `modelName` varchar(50) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asset_items`
--

CREATE TABLE `asset_items` (
  `id` int(11) NOT NULL,
  `assetId` int(11) DEFAULT NULL,
  `currentBuildingId` int(11) DEFAULT NULL,
  `tagNo` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `warrentyNo` varchar(100) DEFAULT NULL,
  `warrentyFile` varchar(100) DEFAULT NULL,
  `taggedBy` varchar(100) DEFAULT NULL,
  `taggedOn` datetime DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_assignments`
--

CREATE TABLE `asset_item_assignments` (
  `id` int(11) NOT NULL,
  `assetItemId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `cabinId` int(11) DEFAULT NULL,
  `deskId` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `assignedBy` varchar(30) DEFAULT NULL,
  `assignedOn` datetime DEFAULT NULL,
  `deassignedBy` varchar(50) DEFAULT NULL,
  `deassignedOn` datetime DEFAULT NULL,
  `assetMovementId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_movements`
--

CREATE TABLE `asset_item_movements` (
  `id` int(11) NOT NULL,
  `assetItemId` int(11) DEFAULT NULL,
  `purpose` varchar(20) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `storeId` int(11) DEFAULT NULL,
  `assetServiceProviderId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `pdfId` int(11) DEFAULT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asset_service_providers`
--

CREATE TABLE `asset_service_providers` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asset_stores`
--

CREATE TABLE `asset_stores` (
  `id` int(11) NOT NULL,
  `locationId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `managerId` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asset_warrenties`
--

CREATE TABLE `asset_warrenties` (
  `id` int(11) NOT NULL,
  `assetId` int(11) DEFAULT NULL,
  `purchasedDate` datetime DEFAULT NULL,
  `warrentyPeriod` int(11) DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bills_queue`
--

CREATE TABLE `bills_queue` (
  `id` int(11) NOT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `gstFileId` int(11) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `billDate` date DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `billDueDate` date DEFAULT NULL,
  `serviceProviderText` varchar(100) DEFAULT NULL,
  `billType` varchar(20) DEFAULT NULL,
  `paymentType` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `paidOn` datetime DEFAULT NULL,
  `paidBy` varchar(50) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `noVendor` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `pettyCashAccountId` int(11) DEFAULT NULL,
  `debitCardAccountId` int(11) DEFAULT NULL,
  `prepaid` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bills_queues`
--

CREATE TABLE `bills_queues` (
  `id` int(11) NOT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `gstFileId` int(11) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `billDate` date DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `billDueDate` date DEFAULT NULL,
  `serviceProviderText` varchar(100) DEFAULT NULL,
  `billType` varchar(20) DEFAULT NULL,
  `paymentType` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `paidOn` datetime DEFAULT NULL,
  `paidBy` varchar(50) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `noVendor` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `pettyCashAccountId` int(11) DEFAULT NULL,
  `debitCardAccountId` int(11) DEFAULT NULL,
  `prepaid` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill_queue_gsts`
--

CREATE TABLE `bill_queue_gsts` (
  `id` int(11) NOT NULL,
  `billId` int(11) DEFAULT NULL,
  `slab` int(11) NOT NULL,
  `gst` double(11,2) DEFAULT NULL,
  `tds` double(11,2) DEFAULT NULL,
  `igst` double(11,2) DEFAULT NULL,
  `cgst` double(11,2) DEFAULT NULL,
  `sgst` double(11,2) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booked_desks`
--

CREATE TABLE `booked_desks` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `facilitySetId` int(11) DEFAULT NULL,
  `deskId` int(11) DEFAULT NULL,
  `contractId` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `ended` date DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `clientId` int(11) DEFAULT NULL,
  `locationId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `exitRequestId` int(11) DEFAULT NULL,
  `offices` varchar(200) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `refNo` varchar(20) DEFAULT NULL,
  `reserved` datetime DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `ended` datetime DEFAULT NULL,
  `sqftArea` int(11) DEFAULT NULL,
  `desks` int(11) DEFAULT NULL,
  `cabins` int(11) DEFAULT NULL,
  `itLedgerAdded` int(11) DEFAULT NULL,
  `itLedgerSettled` int(11) DEFAULT NULL,
  `contractId` int(11) DEFAULT NULL,
  `invoiced` double(12,2) DEFAULT NULL,
  `paid` double(12,2) DEFAULT NULL,
  `due` double(12,2) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking_mails`
--

CREATE TABLE `booking_mails` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `mailId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `floors` int(11) DEFAULT NULL,
  `locationId` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `webUrl` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `isServiceable` int(11) DEFAULT 0,
  `lat` double(9,6) DEFAULT NULL,
  `lng` double(9,6) DEFAULT NULL,
  `avgDeskPrice` double(7,2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `allowedDeskSizes` varchar(200) DEFAULT NULL,
  `buildupArea` int(11) DEFAULT NULL,
  `carpetArea` int(11) DEFAULT NULL,
  `sba` int(11) DEFAULT NULL,
  `chargeableArea` int(11) DEFAULT NULL,
  `rentFreeDays` int(11) DEFAULT NULL,
  `expectedLive` datetime DEFAULT NULL,
  `handover` datetime DEFAULT NULL,
  `lastDate` datetime DEFAULT NULL,
  `sqftPrice` double(8,2) DEFAULT NULL,
  `agreementId` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `name`, `size`, `floors`, `locationId`, `street`, `landmark`, `address`, `image`, `webUrl`, `description`, `active`, `isServiceable`, `lat`, `lng`, `avgDeskPrice`, `status`, `allowedDeskSizes`, `buildupArea`, `carpetArea`, `sba`, `chargeableArea`, `rentFreeDays`, `expectedLive`, `handover`, `lastDate`, `sqftPrice`, `agreementId`, `companyId`, `createdAt`, `updatedAt`) VALUES
(1, 'Tech Park', 'undefinedxundefined', NULL, 1, 'HSR', 'Block 4', 'Block 4', NULL, NULL, 'Block 4', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Tech Park', 'undefinedxundefined', NULL, 1, 'HSR', 'Block 4', 'Block 4', NULL, NULL, 'INFO', 1, 0, 1.000000, 1.000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Tech Park', 'undefinedxundefined', NULL, 1, 'HSR', 'Block 4', 'Block 4', NULL, NULL, NULL, 1, 0, 1.000000, 1.000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tech Park', 'undefinedxundefined', NULL, NULL, 'HSR', 'Block 4', 'Block 4', NULL, NULL, NULL, 1, 0, 1.000000, 1.000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hyderabad', 'undefinedxundefined', NULL, NULL, 'HSR', 'Block 4', 'Block 4', NULL, NULL, NULL, 1, 0, 1.000000, 2.000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `building_amcs`
--

CREATE TABLE `building_amcs` (
  `id` int(11) NOT NULL,
  `amcItemId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `responsibility` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_amc_items`
--

CREATE TABLE `building_amc_items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_contacts`
--

CREATE TABLE `building_contacts` (
  `id` int(11) NOT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `purposes` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_contract_terms`
--

CREATE TABLE `building_contract_terms` (
  `id` int(11) NOT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `term` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_images`
--

CREATE TABLE `building_images` (
  `id` int(11) NOT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_properties`
--

CREATE TABLE `building_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `floors` int(11) DEFAULT NULL,
  `locationId` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `lat` double(9,6) DEFAULT NULL,
  `lng` double(9,6) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `quarter` varchar(20) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `sqftAreaImage` varchar(100) DEFAULT NULL,
  `buildupArea` int(11) DEFAULT NULL,
  `carpetArea` int(11) DEFAULT NULL,
  `shortlisted` int(11) DEFAULT NULL,
  `expectedLive` datetime DEFAULT NULL,
  `handover` datetime DEFAULT NULL,
  `sqftPrice` double(8,2) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_property_contacts`
--

CREATE TABLE `building_property_contacts` (
  `id` int(11) NOT NULL,
  `propertyId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `purposes` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_property_contracts`
--

CREATE TABLE `building_property_contracts` (
  `id` int(11) NOT NULL,
  `propertyId` int(11) DEFAULT NULL,
  `expectedSqftPrice` int(11) DEFAULT NULL,
  `expectedRent` int(11) DEFAULT NULL,
  `expectedDeposit` int(11) DEFAULT NULL,
  `expectedMaintenancePrice` int(11) DEFAULT NULL,
  `expectedHandover` datetime DEFAULT NULL,
  `negotiableSqftPrice` int(11) DEFAULT NULL,
  `negotiableRent` int(11) DEFAULT NULL,
  `negotiableDeposit` int(11) DEFAULT NULL,
  `negotiableHandover` datetime DEFAULT NULL,
  `negotiableMaintenancePrice` int(11) DEFAULT NULL,
  `finalSqftPrice` int(11) DEFAULT NULL,
  `finalRent` int(11) DEFAULT NULL,
  `finalDeposit` int(11) DEFAULT NULL,
  `finalMaintenancePrice` int(11) DEFAULT NULL,
  `finalHandover` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `initiatedBy` varchar(50) DEFAULT NULL,
  `closedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_property_contract_negotiations`
--

CREATE TABLE `building_property_contract_negotiations` (
  `id` int(11) NOT NULL,
  `propertyId` int(11) DEFAULT NULL,
  `propertyContractId` int(11) DEFAULT NULL,
  `carpetAreaPricing` int(11) DEFAULT NULL,
  `expectedSqftPrice` double(5,2) DEFAULT NULL,
  `expectedMaintenancePrice` double(9,2) DEFAULT NULL,
  `expectedRent` double(9,2) DEFAULT NULL,
  `expectedDeposit` double(9,2) DEFAULT NULL,
  `expectedHandover` datetime DEFAULT NULL,
  `expectedRentFree` int(11) DEFAULT NULL,
  `negotiatedSqftPrice` double(5,2) DEFAULT NULL,
  `negotiatedRent` double(9,2) DEFAULT NULL,
  `negotiatedDeposit` double(9,2) DEFAULT NULL,
  `negotiatedMaintenancePrice` double(9,2) DEFAULT NULL,
  `negotiatedHandover` datetime DEFAULT NULL,
  `negotiatedRentFree` int(11) DEFAULT NULL,
  `targetedSqftPrice` double(5,2) DEFAULT NULL,
  `targetedRent` double(9,2) DEFAULT NULL,
  `targetedDeposit` double(9,2) DEFAULT NULL,
  `targetedHandover` datetime DEFAULT NULL,
  `targetedRentFree` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_property_images`
--

CREATE TABLE `building_property_images` (
  `id` int(11) NOT NULL,
  `propertyId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_services`
--

CREATE TABLE `building_services` (
  `id` int(11) NOT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `serviceCode` varchar(10) DEFAULT NULL,
  `serviceNotes` text DEFAULT NULL,
  `clientNotes` text DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building_service_assignees`
--

CREATE TABLE `building_service_assignees` (
  `id` int(11) NOT NULL,
  `buildingServiceId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_terms`
--

CREATE TABLE `business_terms` (
  `id` int(11) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `acronym` varchar(50) DEFAULT NULL,
  `term` varchar(200) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cabins`
--

CREATE TABLE `cabins` (
  `id` int(11) NOT NULL,
  `officeId` int(11) DEFAULT NULL,
  `floorId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `deskType` varchar(100) DEFAULT NULL,
  `deskSize` varchar(100) DEFAULT NULL,
  `totalArea` int(11) DEFAULT NULL,
  `usedArea` int(11) DEFAULT NULL,
  `deskc` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabins`
--

INSERT INTO `cabins` (`id`, `officeId`, `floorId`, `name`, `deskType`, `deskSize`, `totalArea`, `usedArea`, `deskc`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 1, NULL, 'Tech Park', 'FixedDesk', 'Luxury', 1, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` int(11) NOT NULL,
  `leadId` int(11) DEFAULT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `from` varchar(20) DEFAULT NULL,
  `to` varchar(20) DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `ended` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `countryId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `locationc` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `countryId`, `name`, `active`, `locationc`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Bangalore', 1, NULL, '2023-06-22 11:30:37', '2023-06-22 11:30:37'),
(2, 1, 'Hyderabad', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Mumbai', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `leadId` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `companyRegistrationId` int(11) DEFAULT NULL,
  `gstRegistrationId` int(11) DEFAULT NULL,
  `gstNo` varchar(50) DEFAULT NULL,
  `panNo` varchar(50) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `panCardId` int(11) DEFAULT NULL,
  `benificiaryName` varchar(100) DEFAULT NULL,
  `accountNumber` varchar(50) DEFAULT NULL,
  `ifscCode` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updateBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `client_employees`
--

CREATE TABLE `client_employees` (
  `id` int(11) NOT NULL,
  `clientId` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `contactPurposes` varchar(200) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `hasAccess` int(11) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tradeName` varchar(200) DEFAULT NULL,
  `shortName` varchar(5) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `erpDomain` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `squareLogo` varchar(200) DEFAULT NULL,
  `gstNo` varchar(50) DEFAULT NULL,
  `panNo` varchar(50) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `branchName` varchar(100) DEFAULT NULL,
  `ifscCode` varchar(20) DEFAULT NULL,
  `accountNumber` varchar(30) DEFAULT NULL,
  `accountName` varchar(100) DEFAULT NULL,
  `supportPhone` varchar(100) DEFAULT NULL,
  `supportEmail` varchar(100) DEFAULT NULL,
  `primaryColor` varchar(10) DEFAULT NULL,
  `accentColor` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tradeName` varchar(200) DEFAULT NULL,
  `shortName` varchar(5) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `erpDomain` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `squareLogo` varchar(200) DEFAULT NULL,
  `gstNo` varchar(50) DEFAULT NULL,
  `panNo` varchar(50) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `branchName` varchar(100) DEFAULT NULL,
  `ifscCode` varchar(20) DEFAULT NULL,
  `accountNumber` varchar(30) DEFAULT NULL,
  `accountName` varchar(100) DEFAULT NULL,
  `supportPhone` varchar(100) DEFAULT NULL,
  `supportEmail` varchar(100) DEFAULT NULL,
  `primaryColor` varchar(10) DEFAULT NULL,
  `accentColor` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `tradeName`, `shortName`, `address`, `city`, `state`, `phone`, `email`, `erpDomain`, `website`, `logo`, `squareLogo`, `gstNo`, `panNo`, `cin`, `stateCode`, `active`, `bankName`, `branchName`, `ifscCode`, `accountNumber`, `accountName`, `supportPhone`, `supportEmail`, `primaryColor`, `accentColor`, `date`, `updated`, `updatedBy`, `modules`, `createdAt`, `updatedAt`) VALUES
(1, 'ABC', 'ABC', 'ABC', 'ABC', NULL, NULL, NULL, 'ABC@gmail.com', 'ABC.com', 'ABC.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22 11:08:59', '2023-06-22 11:08:59', NULL, NULL, '2023-06-22 11:08:59', '2023-06-22 11:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `company_contacts`
--

CREATE TABLE `company_contacts` (
  `id` int(11) NOT NULL,
  `companyId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `contactPurposes` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `deskType` varchar(50) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `officeType` varchar(50) DEFAULT NULL,
  `invoiceServiceType` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `term` varchar(20) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `effectiveDate` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `deskPrice` int(11) DEFAULT NULL,
  `additionalRent` int(11) DEFAULT NULL,
  `additionalDesks` int(11) DEFAULT NULL,
  `desks` int(11) DEFAULT NULL,
  `isSqftRent` int(11) DEFAULT NULL,
  `sqFt` int(11) DEFAULT NULL,
  `sqFtPrice` int(11) DEFAULT NULL,
  `security` int(11) DEFAULT NULL,
  `token` int(11) DEFAULT NULL,
  `contractPeriod` int(11) DEFAULT NULL,
  `lockIn` int(11) DEFAULT NULL,
  `lockInPenaltyType` varchar(20) DEFAULT NULL,
  `lockInPenalty` int(11) DEFAULT NULL,
  `noticePeriod` int(11) DEFAULT NULL,
  `noticePeriodViolationType` varchar(20) DEFAULT NULL,
  `noticePeriodViolation` int(11) DEFAULT NULL,
  `freeCredits` int(11) DEFAULT NULL,
  `agreementAccepted` int(11) DEFAULT NULL,
  `approvedOn` datetime DEFAULT NULL,
  `approvedBy` varchar(20) DEFAULT NULL,
  `confirmedOn` datetime DEFAULT NULL,
  `confirmedBy` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `agreementId` int(11) DEFAULT NULL,
  `signedAgreementId` int(11) DEFAULT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `tokenSD` int(11) DEFAULT NULL,
  `rentFreePeriod` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contract_additional_invoices`
--

CREATE TABLE `contract_additional_invoices` (
  `id` int(11) NOT NULL,
  `contractId` int(11) DEFAULT NULL,
  `invoiceServiceId` int(11) DEFAULT NULL,
  `item` text DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contract_terms`
--

CREATE TABLE `contract_terms` (
  `id` int(11) NOT NULL,
  `contractId` int(11) DEFAULT NULL,
  `term` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `citiec` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `citiec`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 'India', NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'UAE', NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'CA', NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `credits_entries`
--

CREATE TABLE `credits_entries` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `invoiceId` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `addedBy` varchar(100) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `credits_useds`
--

CREATE TABLE `credits_useds` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `resourceBookingId` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `usedOn` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `debit_card_accounts`
--

CREATE TABLE `debit_card_accounts` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `cardId` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `addedBy` varchar(15) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(15) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `debit_card_account_users`
--

CREATE TABLE `debit_card_account_users` (
  `id` int(11) NOT NULL,
  `debitCardAccountId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `addedBy` varchar(15) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(15) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `desks`
--

CREATE TABLE `desks` (
  `id` int(11) NOT NULL,
  `cabinId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desks`
--

INSERT INTO `desks` (`id`, `cabinId`, `name`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Tech Park_1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Tech Park_2', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Tech Park_3', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(11) NOT NULL,
  `file` varchar(20) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exit_acrs`
--

CREATE TABLE `exit_acrs` (
  `id` int(11) NOT NULL,
  `exitRequestId` int(11) DEFAULT NULL,
  `damage` text DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exit_comments`
--

CREATE TABLE `exit_comments` (
  `id` int(11) NOT NULL,
  `exitRequestId` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exit_deductions`
--

CREATE TABLE `exit_deductions` (
  `id` int(11) NOT NULL,
  `exitRequestId` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exit_requests`
--

CREATE TABLE `exit_requests` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `requestedDate` datetime DEFAULT NULL,
  `exitDate` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `fcpStatus` varchar(20) DEFAULT NULL,
  `rejectedMessage` text DEFAULT NULL,
  `lastFcpSent` datetime DEFAULT NULL,
  `fcpDeclinedOn` datetime DEFAULT NULL,
  `refund` int(11) DEFAULT NULL,
  `refundDate` datetime DEFAULT NULL,
  `utr` varchar(100) DEFAULT NULL,
  `tdsRefund` int(11) DEFAULT NULL,
  `tdsRefundDate` datetime DEFAULT NULL,
  `tdsRefundUtr` varchar(100) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `exitCharge` double DEFAULT NULL,
  `earlyExitCharge` double DEFAULT NULL,
  `noticePeriodPenalty` double DEFAULT NULL,
  `assetDamages` double DEFAULT NULL,
  `otherDeductions` double DEFAULT NULL,
  `tdsLiability` double DEFAULT NULL,
  `deregistrationLiability` double DEFAULT NULL,
  `tdsPenalty` double DEFAULT NULL,
  `monthlyInvoices` double DEFAULT NULL,
  `security` double DEFAULT NULL,
  `otherPayments` double DEFAULT NULL,
  `totalPaid` double DEFAULT NULL,
  `due` double DEFAULT NULL,
  `expectedAmount` double DEFAULT NULL,
  `finalStatementId` int(11) DEFAULT NULL,
  `exitFormId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `external_systems`
--

CREATE TABLE `external_systems` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `service` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `config` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `external_systems`
--

INSERT INTO `external_systems` (`id`, `name`, `type`, `service`, `active`, `config`, `updated`, `updatedBy`, `companyId`, `createdAt`, `updatedAt`) VALUES
(1, 'SMS', 'SMSGateway', NULL, 1, '{}', '2023-06-27 18:15:55', 'system', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 'wi-fi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `facility_sets`
--

CREATE TABLE `facility_sets` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facility_sets`
--

INSERT INTO `facility_sets` (`id`, `name`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 'wi-fi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `facility_set_facilities`
--

CREATE TABLE `facility_set_facilities` (
  `id` int(11) NOT NULL,
  `facilityId` int(11) DEFAULT NULL,
  `setId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facility_set_facilities`
--

INSERT INTO `facility_set_facilities` (`id`, `facilityId`, `setId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `cabinc` int(11) DEFAULT NULL,
  `desks` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `help_notes`
--

CREATE TABLE `help_notes` (
  `id` int(11) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `file` varchar(30) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `api` varchar(100) DEFAULT NULL,
  `postData` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `invoiceServiceId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `refNo` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `isCancelled` int(11) DEFAULT NULL,
  `penalty` int(11) DEFAULT NULL,
  `taxableAmount` int(11) DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `tds` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `due` int(11) NOT NULL DEFAULT 0,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `cancelledReason` text DEFAULT NULL,
  `proformaId` int(11) DEFAULT NULL,
  `pdfId` int(11) DEFAULT NULL,
  `isLiability` int(11) DEFAULT NULL,
  `isLiabilityCleared` int(11) DEFAULT NULL,
  `isTdsCleared` int(11) DEFAULT NULL,
  `tdsPaid` int(11) NOT NULL DEFAULT 0,
  `tdsForm` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoiceId` int(11) DEFAULT NULL,
  `invoiceServiceId` int(11) DEFAULT NULL,
  `item` text DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double(9,2) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `tds` double(9,2) NOT NULL DEFAULT 0.00,
  `cgst` double(9,2) DEFAULT NULL,
  `sgst` double(9,2) DEFAULT NULL,
  `igst` double(9,2) DEFAULT NULL,
  `total` double(9,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_services`
--

CREATE TABLE `invoice_services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `sacCode` varchar(100) DEFAULT NULL,
  `hasGst` int(11) DEFAULT NULL,
  `inclusive` int(11) DEFAULT NULL,
  `isLiability` int(11) DEFAULT NULL,
  `tds` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `deskType` varchar(20) DEFAULT NULL,
  `desks` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `assignedTo` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `source` varchar(10) DEFAULT NULL,
  `attribute` varchar(10) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `nextCall` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `lat` double(9,6) DEFAULT NULL,
  `lng` double(9,6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lead_comments`
--

CREATE TABLE `lead_comments` (
  `id` int(11) NOT NULL,
  `leadId` int(11) DEFAULT NULL,
  `leadPropositionId` int(11) DEFAULT NULL,
  `visitId` int(11) DEFAULT NULL,
  `callId` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `by` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lead_mails`
--

CREATE TABLE `lead_mails` (
  `id` int(11) NOT NULL,
  `leadId` int(11) DEFAULT NULL,
  `mailId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lead_propositions`
--

CREATE TABLE `lead_propositions` (
  `id` int(11) NOT NULL,
  `leadId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `desksAvailable` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `distance` double(9,6) DEFAULT NULL,
  `price` double(9,2) DEFAULT NULL,
  `visitId` int(11) DEFAULT NULL,
  `contractId` int(11) DEFAULT NULL,
  `isInterested` text DEFAULT NULL,
  `by` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `lat` double(9,6) DEFAULT NULL,
  `lng` double(9,6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `active`, `cityId`, `lat`, `lng`, `createdAt`, `updatedAt`) VALUES
(1, 'HSR', 1, 1, NULL, NULL, '2023-06-22 11:32:17', '2023-06-22 11:32:17'),
(2, 'White Field', 1, 1, 1.000000, 2.000000, '2023-06-22 19:13:03', '2023-06-22 19:13:03'),
(3, 'Tech Park2', 1, 1, 1.000000, 2.000000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'G', 1, 2, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `subject` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `receivers` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `by` varchar(20) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mi_data`
--

CREATE TABLE `mi_data` (
  `id` int(11) NOT NULL,
  `competitor` varchar(100) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `lat` double(9,6) DEFAULT NULL,
  `lng` double(9,6) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `hotDeskPrice` int(11) DEFAULT NULL,
  `fixedDeskPrice` int(11) DEFAULT NULL,
  `privateOfficePrice` int(11) DEFAULT NULL,
  `sqFtSpace` int(11) DEFAULT NULL,
  `sqFtPrice` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `receivers` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `by` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification_receivers`
--

CREATE TABLE `notification_receivers` (
  `id` int(11) NOT NULL,
  `notificationId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `sentOn` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `deskTypes` varchar(255) DEFAULT NULL,
  `desks` int(11) DEFAULT 0,
  `cabinc` int(11) DEFAULT 0,
  `floorc` int(11) DEFAULT 0,
  `active` int(11) DEFAULT NULL,
  `bestPrice` double(9,2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `allowedDeskSizes` varchar(200) DEFAULT NULL,
  `carpetArea` int(11) DEFAULT NULL,
  `chargeableArea` int(11) DEFAULT NULL,
  `expectedLive` datetime DEFAULT NULL,
  `rentStarted` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `floor`, `buildingId`, `deskTypes`, `desks`, `cabinc`, `floorc`, `active`, `bestPrice`, `status`, `allowedDeskSizes`, `carpetArea`, `chargeableArea`, `expectedLive`, `rentStarted`, `companyId`, `createdAt`, `updatedAt`) VALUES
(1, 'Tech Park', NULL, 1, 'FixedDesk,PrivateOffice,EnterpriseOffice,FlexiDesk', 0, 0, 0, 1, NULL, 'Live', 'Minimal,Luxury,Standard,VeryMinimal,Custom,SuperLuxury', 1, 1, '2023-06-07 00:00:00', '2023-06-13 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `office_pricings`
--

CREATE TABLE `office_pricings` (
  `id` int(11) NOT NULL,
  `officeId` int(11) DEFAULT NULL,
  `facilitySetId` int(11) DEFAULT NULL,
  `deskType` varchar(20) DEFAULT NULL,
  `minPerson` int(11) DEFAULT NULL,
  `maxPerson` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opex_bills`
--

CREATE TABLE `opex_bills` (
  `id` int(11) NOT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `opexPaymentId` int(11) DEFAULT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `payoutPaymentId` int(11) DEFAULT NULL,
  `pettyCashAccountId` int(11) DEFAULT NULL,
  `debitCardAccountId` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `billDate` date DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `billDueDate` date DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `serviceProviderText` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `indexNo` varchar(30) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `approvalRequired` int(11) DEFAULT NULL,
  `paidOn` datetime DEFAULT NULL,
  `paidBy` varchar(50) DEFAULT NULL,
  `utr` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `isPrepaid` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opex_categories`
--

CREATE TABLE `opex_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `recurring` int(11) DEFAULT NULL,
  `office` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(200) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opex_recurring_payments`
--

CREATE TABLE `opex_recurring_payments` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `benificiaryId` int(11) DEFAULT NULL,
  `minCharge` double(9,2) DEFAULT NULL,
  `maxCharge` double(9,2) DEFAULT NULL,
  `effectiveFrom` date DEFAULT NULL,
  `effectiveTo` date DEFAULT NULL,
  `autoPay` int(11) DEFAULT NULL,
  `isStopped` int(11) DEFAULT NULL,
  `isAdvancePayment` int(11) DEFAULT NULL,
  `invoiceStartDay` int(11) DEFAULT NULL,
  `invoiceDay` int(11) DEFAULT NULL,
  `invoiceDueDay` int(11) DEFAULT NULL,
  `invoiceFrequency` int(11) DEFAULT NULL,
  `remindBeforeDays` int(11) DEFAULT NULL,
  `amountType` varchar(10) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `tds` int(11) DEFAULT NULL,
  `refNo` varchar(50) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `bankAccountNumber` varchar(50) DEFAULT NULL,
  `bankIfscCode` varchar(50) DEFAULT NULL,
  `bankAccountName` varchar(100) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `bankBranch` varchar(100) DEFAULT NULL,
  `portalUrl` varchar(200) DEFAULT NULL,
  `portalAccountId` varchar(100) DEFAULT NULL,
  `portalUserName` varchar(100) DEFAULT NULL,
  `portalPassword` varchar(100) DEFAULT NULL,
  `additionalPaymentInfo` varchar(100) DEFAULT NULL,
  `contactName` varchar(100) DEFAULT NULL,
  `contactPhone` varchar(15) DEFAULT NULL,
  `contactEmail` varchar(100) DEFAULT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `approvedOn` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `by` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `vendorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opex_types`
--

CREATE TABLE `opex_types` (
  `id` int(11) NOT NULL,
  `catId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(200) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `otp_passwords`
--

CREATE TABLE `otp_passwords` (
  `id` int(11) NOT NULL,
  `context` varchar(20) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `isUsed` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `validTill` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp_passwords`
--

INSERT INTO `otp_passwords` (`id`, `context`, `hash`, `isUsed`, `email`, `phone`, `date`, `validTill`, `companyId`, `createdAt`, `updatedAt`) VALUES
(1, 'Login', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvdHAiOjQxOTk5NiwicGhvbmUiOiI5MDAwMDIxOTA5IiwiaWF0IjoxNjg3ODY2NDU2fQ.ZUgtz9x9ZhHhOysN3lbwg93XiAa_wNTGm9JAyyxFhNU', 0, '', '9000021909', '2023-06-27 17:17:36', '2023-06-27 17:32:36', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Login', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvdHAiOjE3OTc0MywicGhvbmUiOiI5MDAwMDIxOTA5IiwiaWF0IjoxNjg3ODY2NTc3fQ.7k6vonr3Htc3RC2gav5Bqem1JYaljCuWU3DLzhmGp8o', 0, '', '9000021909', '2023-06-27 17:19:37', '2023-06-27 17:34:37', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Login', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvdHAiOjY5ODMyNiwicGhvbmUiOiI5MDAwMDIxOTA5IiwiaWF0IjoxNjg3ODY2NzM3fQ.9b19BFwwoakqpJOMk5lsrmtvmov4HUYjMCOMq-hDJv4', 0, '', '9000021909', '2023-06-27 17:22:17', '2023-06-27 17:37:17', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payin_entries`
--

CREATE TABLE `payin_entries` (
  `id` int(11) NOT NULL,
  `bankAccountId` int(11) DEFAULT NULL,
  `linkedId` int(11) DEFAULT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `invoiceServiceId` int(11) DEFAULT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT '',
  `utr` varchar(100) DEFAULT NULL,
  `narration` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `chequeNo` varchar(50) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT '',
  `pgOrderId` varchar(50) DEFAULT '',
  `pgSettlementId` varchar(50) DEFAULT '',
  `receivedDate` datetime DEFAULT NULL,
  `creditedDate` datetime DEFAULT NULL,
  `nonRevenue` int(11) DEFAULT NULL,
  `linked` int(11) DEFAULT NULL,
  `attributed` int(11) DEFAULT NULL,
  `suspense` int(11) DEFAULT NULL,
  `transactionAmount` double(9,2) DEFAULT NULL,
  `dueAmount` double(9,2) DEFAULT NULL,
  `settledAmount` double(9,2) DEFAULT NULL,
  `pgCharges` double(9,2) DEFAULT NULL,
  `pgTaxes` double(9,2) DEFAULT NULL,
  `additionalRevenue` double(9,2) DEFAULT NULL,
  `writeOff` double(9,2) DEFAULT NULL,
  `noInvoice` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT '',
  `linkedOn` datetime DEFAULT NULL,
  `linkedBy` varchar(50) DEFAULT '',
  `attributedOn` datetime DEFAULT NULL,
  `attributedBy` varchar(50) DEFAULT '',
  `reason` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `utr` varchar(100) DEFAULT NULL,
  `paidBy` varchar(20) DEFAULT NULL,
  `cancelled` int(11) DEFAULT NULL,
  `cancelledBy` varchar(20) DEFAULT NULL,
  `cancelledReason` varchar(20) DEFAULT NULL,
  `cancelledDate` datetime DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payout_benificiaries`
--

CREATE TABLE `payout_benificiaries` (
  `id` int(11) NOT NULL,
  `accountNumber` varchar(30) DEFAULT NULL,
  `ifscCode` varchar(30) DEFAULT NULL,
  `benificiaryId` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `clientId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payout_entries`
--

CREATE TABLE `payout_entries` (
  `id` int(11) NOT NULL,
  `linkedId` int(11) DEFAULT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `narration` text DEFAULT NULL,
  `info` text DEFAULT NULL,
  `paidBy` varchar(50) DEFAULT NULL,
  `paidOn` datetime DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `utr` varchar(50) DEFAULT NULL,
  `payoutPaymentId` int(11) DEFAULT NULL,
  `pettyCashAccountId` int(11) DEFAULT NULL,
  `debitCardAccountId` int(11) DEFAULT NULL,
  `toPayoutGateway` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `issuedOn` datetime DEFAULT NULL,
  `chequeNo` varchar(30) DEFAULT NULL,
  `nonExpense` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `linked` int(11) DEFAULT NULL,
  `attributed` int(11) DEFAULT NULL,
  `suspense` int(11) DEFAULT NULL,
  `noBill` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payout_payments`
--

CREATE TABLE `payout_payments` (
  `id` int(11) NOT NULL,
  `payoutBenificiaryId` int(11) DEFAULT NULL,
  `pettyCashAccountId` int(11) DEFAULT NULL,
  `debitCardAccountId` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `approvedOn` datetime DEFAULT NULL,
  `paidBy` varchar(50) DEFAULT NULL,
  `paidOn` datetime DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `rejectedMessage` text DEFAULT NULL,
  `paymentStatus` varchar(20) DEFAULT NULL,
  `response` varchar(100) DEFAULT NULL,
  `transferId` varchar(50) DEFAULT NULL,
  `paymentRefId` varchar(50) DEFAULT NULL,
  `utr` varchar(50) DEFAULT NULL,
  `exitRequestId` int(11) DEFAULT NULL,
  `purchaseOrderId` int(11) DEFAULT NULL,
  `providerBillId` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `linked` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `issuedOn` datetime DEFAULT NULL,
  `chequeNo` varchar(30) DEFAULT NULL,
  `futurePayoutDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_accounts`
--

CREATE TABLE `petty_cash_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `addedBy` varchar(15) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(15) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_account_users`
--

CREATE TABLE `petty_cash_account_users` (
  `id` int(11) NOT NULL,
  `pettyCashAccountId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `addedBy` varchar(15) DEFAULT NULL,
  `addedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(15) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pg_transactions`
--

CREATE TABLE `pg_transactions` (
  `id` int(11) NOT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `pgOrderId` varchar(50) DEFAULT NULL,
  `pgSystemId` int(11) DEFAULT NULL,
  `pgProvider` varchar(50) DEFAULT NULL,
  `pgCharge` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `transactionData` text DEFAULT NULL,
  `payinEntryId` int(11) DEFAULT NULL,
  `taxes` double DEFAULT NULL,
  `pgChargeAmount` double DEFAULT NULL,
  `bookingAmount` double DEFAULT NULL,
  `settledAmount` double DEFAULT NULL,
  `additionalRevenue` double DEFAULT NULL,
  `writeOff` double DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pg_transaction_requests`
--

CREATE TABLE `pg_transaction_requests` (
  `id` int(11) NOT NULL,
  `pgTransactionId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `header` text DEFAULT NULL,
  `postData` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pg_transaction_responses`
--

CREATE TABLE `pg_transaction_responses` (
  `id` int(11) NOT NULL,
  `pgTransactionId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `price_contracts`
--

CREATE TABLE `price_contracts` (
  `id` int(11) NOT NULL,
  `priceId` int(11) DEFAULT NULL,
  `contractId` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `mailId` int(11) DEFAULT NULL,
  `mailSent` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `price_quotes`
--

CREATE TABLE `price_quotes` (
  `id` int(11) NOT NULL,
  `quoteId` int(11) DEFAULT NULL,
  `facilitySetId` int(11) DEFAULT NULL,
  `facilities` text DEFAULT NULL,
  `deskType` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `lockIn` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `proposition_quotes`
--

CREATE TABLE `proposition_quotes` (
  `id` int(11) NOT NULL,
  `propositionId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `mailId` int(11) DEFAULT NULL,
  `mailSent` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ref_sequences`
--

CREATE TABLE `ref_sequences` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `context` varchar(20) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `officeId` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subUnits` int(11) DEFAULT NULL,
  `style` text DEFAULT NULL,
  `subUnitType` text DEFAULT NULL,
  `facilities` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `userGuideId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `officeId`, `type`, `name`, `subUnits`, `style`, `subUnitType`, `facilities`, `description`, `price`, `status`, `userGuideId`, `updated`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'MeetingRoom', 'Tech Park', 9, 'Formal', 'RestBack', '52InchTV', '9', 10000, 1, NULL, '2023-06-27 18:12:58', 'system', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `resource_bookings`
--

CREATE TABLE `resource_bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `refNo` varchar(20) DEFAULT NULL,
  `resourceId` int(11) DEFAULT NULL,
  `parentBookingId` int(11) DEFAULT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `clientId` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resource_images`
--

CREATE TABLE `resource_images` (
  `id` int(11) NOT NULL,
  `resourceId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enum` varchar(20) DEFAULT NULL,
  `json` text DEFAULT NULL,
  `isGeoSpecific` int(11) DEFAULT NULL,
  `isSupport` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `enum`, `json`, `isGeoSpecific`, `isSupport`, `companyId`, `active`, `updated`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', NULL, '{\"admin\":{\"enable\":true},\"dashboards\":{\"enable\":true},\"workbenches\":{\"enable\":true},\"bookings\":{\"enable\":true},\"leads\":{\"enable\":true},\"accounts\":{\"enable\":true},\"purchases\":{\"enable\":true},\"support\":{\"enable\":true},\"assets\":{\"enable\":true}}', 1, 1, 1, 1, '2023-06-27 17:45:54', 'sam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Bookings', NULL, '{\"admin\":{},\"dashboards\":{},\"workbenches\":{},\"bookings\":{\"enable\":true},\"leads\":{},\"accounts\":{},\"purchases\":{},\"support\":{},\"assets\":{}}', NULL, NULL, 1, 1, '2023-06-27 17:45:47', 'sam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Support', NULL, '{\"admin\":{},\"dashboards\":{},\"workbenches\":{},\"bookings\":{},\"leads\":{},\"accounts\":{},\"purchases\":{},\"support\":{\"enable\":true},\"assets\":{}}', NULL, NULL, 1, 1, '2023-06-27 17:50:36', 'sam', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `assignedTo` int(11) DEFAULT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `selfcare_links`
--

CREATE TABLE `selfcare_links` (
  `id` int(11) NOT NULL,
  `linkId` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `context` varchar(20) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `expiry` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selfcare_links`
--

INSERT INTO `selfcare_links` (`id`, `linkId`, `url`, `context`, `data`, `created`, `expiry`, `companyId`, `createdAt`, `updatedAt`) VALUES
(1, '96ab4d88-493c-433a-891f-4029115825b0', 'http://selfcare.coworkops.in/#/selfcare/vendor-verification/96ab4d88-493c-433a-891f-4029115825b0', 'VendorVerification', '{\"vendorId\":1}', '2023-06-22 15:26:09', NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `id` int(11) NOT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `serviceId` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `panId` int(11) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `gstId` int(11) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL,
  `cinId` int(11) DEFAULT NULL,
  `addressProofId` int(11) DEFAULT NULL,
  `hasContact` int(11) DEFAULT NULL,
  `hasGst` int(11) DEFAULT NULL,
  `hasTds` int(11) DEFAULT NULL,
  `isPaymentHolded` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `additionalPaymentInfo` text DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `itLedgerAdded` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_bank_accounts`
--

CREATE TABLE `service_provider_bank_accounts` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `payoutBenificiaryId` int(11) DEFAULT NULL,
  `accountNumber` varchar(20) DEFAULT NULL,
  `ifscCode` varchar(20) DEFAULT NULL,
  `accountHolderName` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_bills`
--

CREATE TABLE `service_provider_bills` (
  `id` int(11) NOT NULL,
  `servicePaymentId` int(11) DEFAULT NULL,
  `payoutPaymentId` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `billDate` date DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `billDueDate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `invoiceId` int(11) DEFAULT NULL,
  `approvalRequired` int(11) DEFAULT NULL,
  `paidOn` datetime DEFAULT NULL,
  `paidBy` varchar(50) DEFAULT NULL,
  `utr` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_contacts`
--

CREATE TABLE `service_provider_contacts` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_payments`
--

CREATE TABLE `service_provider_payments` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `serviceId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `benificiaryId` int(11) DEFAULT NULL,
  `minCharge` double(9,2) DEFAULT NULL,
  `maxCharge` double(9,2) DEFAULT NULL,
  `effectiveFrom` date DEFAULT NULL,
  `effectiveTo` date DEFAULT NULL,
  `autoPay` int(11) DEFAULT NULL,
  `isStopped` int(11) DEFAULT NULL,
  `isAdvancePayment` int(11) DEFAULT NULL,
  `invoiceStartDay` int(11) DEFAULT NULL,
  `invoiceDay` int(11) DEFAULT NULL,
  `invoiceDueDay` int(11) DEFAULT NULL,
  `invoiceFrequency` int(11) DEFAULT NULL,
  `remindBeforeDays` int(11) DEFAULT NULL,
  `amountType` varchar(10) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `tds` int(11) DEFAULT NULL,
  `refNo` varchar(50) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `bankAccountNumber` varchar(50) DEFAULT NULL,
  `bankIfscCode` varchar(50) DEFAULT NULL,
  `bankAccountName` varchar(100) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `bankBranch` varchar(100) DEFAULT NULL,
  `portalUrl` varchar(200) DEFAULT NULL,
  `portalUserName` varchar(100) DEFAULT NULL,
  `portalPassword` varchar(100) DEFAULT NULL,
  `contactName` varchar(100) DEFAULT NULL,
  `contactPhone` varchar(15) DEFAULT NULL,
  `contactEmail` varchar(100) DEFAULT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `approvedOn` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `by` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `opexTypeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_portals`
--

CREATE TABLE `service_provider_portals` (
  `id` int(11) NOT NULL,
  `serviceProviderId` int(11) DEFAULT NULL,
  `webUrl` varchar(100) DEFAULT NULL,
  `accountId` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_services`
--

CREATE TABLE `service_provider_services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `skus`
--

CREATE TABLE `skus` (
  `id` int(11) NOT NULL,
  `catId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `gst` double(4,2) DEFAULT NULL,
  `tds` double(4,2) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `isService` int(11) DEFAULT NULL,
  `isAsset` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sku_categories`
--

CREATE TABLE `sku_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sku_types`
--

CREATE TABLE `sku_types` (
  `id` int(11) NOT NULL,
  `catId` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sku_units`
--

CREATE TABLE `sku_units` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `smses`
--

CREATE TABLE `smses` (
  `id` int(11) NOT NULL,
  `sms` text DEFAULT NULL,
  `receivers` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` int(11) NOT NULL,
  `system` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `apiKey` varchar(100) DEFAULT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `clientEmployeeId` int(11) DEFAULT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `cabinId` int(11) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `subCategory` varchar(20) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `refNo` varchar(20) DEFAULT NULL,
  `issue` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `attended` datetime DEFAULT NULL,
  `expectedAttended` datetime DEFAULT NULL,
  `resolved` datetime DEFAULT NULL,
  `expectedResolved` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `expectedClosed` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `assignedTo` int(11) DEFAULT NULL,
  `contextId` int(11) DEFAULT NULL,
  `priorityId` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `lastMsgId` int(11) DEFAULT NULL,
  `setAside` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_assignment_histories`
--

CREATE TABLE `ticket_assignment_histories` (
  `id` int(11) NOT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_attachments`
--

CREATE TABLE `ticket_attachments` (
  `id` int(11) NOT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `docId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_categories`
--

CREATE TABLE `ticket_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_categories`
--

INSERT INTO `ticket_categories` (`id`, `name`, `active`, `updated`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
(1, 'Tech Park', '1', '2023-06-26 00:36:33', 'lokesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_contexts`
--

CREATE TABLE `ticket_contexts` (
  `id` int(11) NOT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `priorityId` int(11) DEFAULT NULL,
  `context` varchar(200) DEFAULT NULL,
  `supportLevel` varchar(20) DEFAULT NULL,
  `assigneeType` varchar(20) DEFAULT NULL,
  `active` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_expenses`
--

CREATE TABLE `ticket_expenses` (
  `id` int(11) NOT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `messageId` int(11) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `budget` double(9,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `approvedBudget` double(9,2) DEFAULT NULL,
  `declinedMessage` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `by` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_mails`
--

CREATE TABLE `ticket_mails` (
  `id` int(11) NOT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `mailId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(11) NOT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `docId` int(11) DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `to` varchar(20) DEFAULT NULL,
  `from` varchar(20) DEFAULT NULL,
  `by` varchar(100) DEFAULT NULL,
  `read` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `fromUserId` int(11) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_priorities`
--

CREATE TABLE `ticket_priorities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `attendIn` int(11) DEFAULT NULL,
  `attendInType` varchar(10) DEFAULT NULL,
  `resolveIn` int(11) DEFAULT NULL,
  `resolveInType` varchar(10) DEFAULT NULL,
  `closeIn` int(11) DEFAULT NULL,
  `closeInType` varchar(10) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_status_histories`
--

CREATE TABLE `ticket_status_histories` (
  `id` int(11) NOT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_sub_categories`
--

CREATE TABLE `ticket_sub_categories` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_sub_categories`
--

INSERT INTO `ticket_sub_categories` (`id`, `categoryId`, `name`, `active`, `updated`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Sub Tech Park', '1', '2023-06-26 00:36:57', 'lokesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `urn_payments`
--

CREATE TABLE `urn_payments` (
  `id` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `urn` varchar(100) DEFAULT NULL,
  `submitedDate` date DEFAULT NULL,
  `verifiedDate` date DEFAULT NULL,
  `verifiedBy` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `roles` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `webPushId` varchar(32) DEFAULT NULL,
  `mobilePushId` varchar(32) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `roles`, `active`, `added`, `updated`, `updatedBy`, `webPushId`, `mobilePushId`, `companyId`, `createdAt`, `updatedAt`) VALUES
(1, 'Lokesh Reddy', 'lokesh', 'Lokesh@erp12', 'lokesh@erp.com', '9000021909', 'admin', 1, '2023-06-22 11:03:00', '2023-06-27 17:01:42', 'lokesh', NULL, NULL, 1, '2023-06-22 11:03:00', '2023-06-22 11:03:00'),
(4, 'Lokesh 2', 'lokesh.2', 'Lokesh@erp12', 'lokesh2@erp.com', '9000021901', 'Support', 1, '2023-06-22 14:53:16', '2023-06-27 17:52:33', 'sam', NULL, NULL, 1, NULL, NULL),
(5, 'Tech Park', 'tech.p', 'Lokesh@erp12', 'lokesh3@erp.com', '9000021902', 'Support', 1, '2023-06-22 22:28:25', '2023-06-27 17:52:24', 'sam', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `toUser` int(11) DEFAULT NULL,
  `module` varchar(20) DEFAULT NULL,
  `ticketId` int(11) DEFAULT NULL,
  `messageId` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `from` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `read` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `webPushId` varchar(32) DEFAULT NULL,
  `mobilePushId` varchar(32) DEFAULT NULL,
  `whatsappNo` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `cityIds` varchar(100) DEFAULT NULL,
  `locationIds` varchar(100) DEFAULT NULL,
  `buildingIds` varchar(100) DEFAULT NULL,
  `supportLevel` varchar(20) DEFAULT NULL,
  `assigneeTypes` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `userId`, `roleId`, `cityIds`, `locationIds`, `buildingIds`, `supportLevel`, `assigneeTypes`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2023-06-27 10:24:04', '2023-06-27 10:24:04'),
(2, 5, 4, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 4, 4, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `companyId` int(11) DEFAULT NULL,
  `vendorType` varchar(20) DEFAULT NULL,
  `refNo` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `hasGst` int(11) DEFAULT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL,
  `msme` varchar(50) DEFAULT NULL,
  `panId` int(11) DEFAULT NULL,
  `gstId` int(11) DEFAULT NULL,
  `cinId` int(11) DEFAULT NULL,
  `msmeId` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `verifiedBy` varchar(20) DEFAULT NULL,
  `verifiedOn` datetime DEFAULT NULL,
  `referredBy` varchar(20) DEFAULT NULL,
  `referredOn` datetime DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  `isServiceVendor` int(11) DEFAULT NULL,
  `itLedgerAdded` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `companyId`, `vendorType`, `refNo`, `name`, `address`, `date`, `hasGst`, `pan`, `gst`, `cin`, `msme`, `panId`, `gstId`, `cinId`, `msmeId`, `status`, `active`, `cityId`, `verified`, `verifiedBy`, `verifiedOn`, `referredBy`, `referredOn`, `paymentMode`, `isServiceVendor`, `itLedgerAdded`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Proprietorship', 'VEN-ABC-100001', 'Lokesh Reddy', 'Hyderabad', '2023-06-22 15:26:09', NULL, '1234', NULL, NULL, '1234', NULL, NULL, NULL, NULL, 'New', 1, NULL, NULL, NULL, NULL, 'lokesh', '2023-06-22 15:26:09', 'BankTransfer', NULL, NULL, 'info', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_bank_accounts`
--

CREATE TABLE `vendor_bank_accounts` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `benificiaryName` varchar(100) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `accountNumber` varchar(50) DEFAULT NULL,
  `ifscCode` varchar(50) DEFAULT NULL,
  `bankBranch` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_contacts`
--

CREATE TABLE `vendor_contacts` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `isMainContact` int(11) DEFAULT NULL,
  `idProofId` int(11) DEFAULT NULL,
  `addressProofId` int(11) DEFAULT NULL,
  `relationshipManagement` int(11) DEFAULT NULL,
  `salesManagement` int(11) DEFAULT NULL,
  `projectManager` int(11) DEFAULT NULL,
  `siteManager` int(11) DEFAULT NULL,
  `siteExecutive` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_contacts`
--

INSERT INTO `vendor_contacts` (`id`, `vendorId`, `title`, `name`, `phone`, `email`, `designation`, `isMainContact`, `idProofId`, `addressProofId`, `relationshipManagement`, `salesManagement`, `projectManager`, `siteManager`, `siteExecutive`, `active`, `verified`, `date`, `updated`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Mr', 'Lokesh', '9000021909', 'lokesh@gmail.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_gst_compliance_terms`
--

CREATE TABLE `vendor_gst_compliance_terms` (
  `id` int(11) NOT NULL,
  `term` varchar(200) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dateFrom` datetime DEFAULT NULL,
  `dateTo` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `archieved` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payment_terms`
--

CREATE TABLE `vendor_payment_terms` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tagName` varchar(100) DEFAULT NULL,
  `onAdvance` int(11) DEFAULT NULL,
  `onDelivery` int(11) DEFAULT NULL,
  `inProgress` int(11) DEFAULT NULL,
  `inProgressStages` text DEFAULT NULL,
  `onFinish` int(11) DEFAULT NULL,
  `afterFinish` int(11) DEFAULT NULL,
  `afterFinishStages` text DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_projects`
--

CREATE TABLE `vendor_projects` (
  `id` int(11) NOT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `refNo` varchar(20) DEFAULT NULL,
  `purpose` varchar(20) DEFAULT NULL,
  `subPurpose` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `estimatedBudget` double(9,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `proposedBy` varchar(50) DEFAULT NULL,
  `proposedUserId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `budgetAmount` double(15,2) DEFAULT NULL,
  `paidAmount` double(15,2) DEFAULT NULL,
  `approvedAmount` double(15,2) DEFAULT NULL,
  `releasedAmount` double(15,2) DEFAULT NULL,
  `draftAmount` double(15,2) DEFAULT NULL,
  `dueAmount` double(15,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_items`
--

CREATE TABLE `vendor_purchase_items` (
  `id` int(11) NOT NULL,
  `purchaseOrderId` int(11) DEFAULT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `skuId` int(11) DEFAULT NULL,
  `paymentTermId` int(11) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `delivered` int(11) DEFAULT NULL,
  `isPrepaid` int(11) DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `unitPrice` double(9,2) DEFAULT NULL,
  `taxableAmount` double(9,2) DEFAULT NULL,
  `gst` double(9,2) DEFAULT NULL,
  `tds` double(9,2) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `additionalChargesNote` text DEFAULT NULL,
  `additionalCharges` double(9,2) DEFAULT NULL,
  `deliveryCharges` double(9,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `itemType` varchar(10) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_item_deliveries`
--

CREATE TABLE `vendor_purchase_item_deliveries` (
  `id` int(11) NOT NULL,
  `purchaseItemId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `receivedBy` varchar(50) DEFAULT NULL,
  `deliveredOn` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_item_statuses`
--

CREATE TABLE `vendor_purchase_item_statuses` (
  `id` int(11) NOT NULL,
  `purchaseItemId` int(11) DEFAULT NULL,
  `mileStoneId` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_item_status_images`
--

CREATE TABLE `vendor_purchase_item_status_images` (
  `id` int(11) NOT NULL,
  `vendorPurchaseItemStatusId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_orders`
--

CREATE TABLE `vendor_purchase_orders` (
  `id` int(11) NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `deliveryStoreId` int(11) DEFAULT NULL,
  `workOrderId` int(11) DEFAULT NULL,
  `vendorBankAccountId` int(11) DEFAULT NULL,
  `opexPaymentId` int(11) DEFAULT NULL,
  `executive` int(11) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `paidAmount` double(11,2) DEFAULT NULL,
  `approvedAmount` double(11,2) DEFAULT NULL,
  `releasedAmount` double(11,2) DEFAULT NULL,
  `draftAmount` double(11,2) DEFAULT NULL,
  `dueAmount` double(11,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pdfId` int(11) DEFAULT NULL,
  `proformaInvoiceId` int(11) DEFAULT NULL,
  `taxInvoiceId` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `refNo` varchar(30) DEFAULT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `startedOn` datetime DEFAULT NULL,
  `startedBy` varchar(30) DEFAULT NULL,
  `closedOn` datetime DEFAULT NULL,
  `closedBy` varchar(30) DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `editHistory` text DEFAULT NULL,
  `additionalChargesNote` text DEFAULT NULL,
  `deletedReason` text DEFAULT NULL,
  `additionalCharges` double(9,2) DEFAULT NULL,
  `deliveryCharges` double(9,2) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `isOpex` int(11) DEFAULT NULL,
  `isBill` int(11) DEFAULT NULL,
  `hasAdvancePayment` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `officeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_order_invoices`
--

CREATE TABLE `vendor_purchase_order_invoices` (
  `id` int(11) NOT NULL,
  `purchaseOrderId` int(11) DEFAULT NULL,
  `gstFileId` int(11) DEFAULT NULL,
  `docId` int(11) DEFAULT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `invoiceDate` datetime DEFAULT NULL,
  `invoiceDueDate` datetime DEFAULT NULL,
  `billNo` varchar(20) DEFAULT NULL,
  `invoiceNo` varchar(50) DEFAULT NULL,
  `taxableAmount` double(11,2) DEFAULT NULL,
  `gst` double(11,2) DEFAULT NULL,
  `tds` double(11,2) DEFAULT NULL,
  `igst` double(11,2) DEFAULT NULL,
  `cgst` double(11,2) DEFAULT NULL,
  `sgst` double(11,2) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `gstVerificationStatus` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_order_invoice_gsts`
--

CREATE TABLE `vendor_purchase_order_invoice_gsts` (
  `id` int(11) NOT NULL,
  `purchaseOrderInvoiceId` int(11) DEFAULT NULL,
  `slab` int(11) DEFAULT NULL,
  `isVerification` int(11) DEFAULT NULL,
  `gst` double(11,2) DEFAULT NULL,
  `tds` double(11,2) DEFAULT NULL,
  `igst` double(11,2) DEFAULT NULL,
  `cgst` double(11,2) DEFAULT NULL,
  `sgst` double(11,2) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_purchase_order_milestones`
--

CREATE TABLE `vendor_purchase_order_milestones` (
  `id` int(11) NOT NULL,
  `parentMilestoneId` int(11) DEFAULT NULL,
  `purchaseOrderId` int(11) DEFAULT NULL,
  `purchaseItemId` int(11) DEFAULT NULL,
  `tds` double(9,2) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `paymentMode` varchar(10) DEFAULT NULL,
  `payoutId` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `utr` varchar(100) DEFAULT NULL,
  `chequeNumber` varchar(100) DEFAULT NULL,
  `chequeIssueTo` varchar(100) DEFAULT NULL,
  `chequeIssuedDate` datetime DEFAULT NULL,
  `releasedBy` varchar(30) DEFAULT NULL,
  `releasedOn` datetime DEFAULT NULL,
  `approvedBy` varchar(30) DEFAULT NULL,
  `approvedOn` datetime DEFAULT NULL,
  `paidBy` varchar(30) DEFAULT NULL,
  `paidOn` datetime DEFAULT NULL,
  `expectedDate` datetime DEFAULT NULL,
  `actualDate` datetime DEFAULT NULL,
  `debitCardAccountId` int(11) DEFAULT NULL,
  `pettyCashAccountId` int(11) DEFAULT NULL,
  `isPrepaid` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_skus`
--

CREATE TABLE `vendor_skus` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `opexTypeId` int(11) DEFAULT NULL,
  `skuId` int(11) DEFAULT NULL,
  `minPrice` double DEFAULT NULL,
  `maxPrice` double DEFAULT NULL,
  `imgId` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `rejectedMessage` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_sku_pricings`
--

CREATE TABLE `vendor_sku_pricings` (
  `id` int(11) NOT NULL,
  `vendorSkuId` int(11) DEFAULT NULL,
  `paymentTermId` int(11) DEFAULT NULL,
  `minQty` int(11) DEFAULT NULL,
  `maxQty` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `price` double(9,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_tds_compliance_terms`
--

CREATE TABLE `vendor_tds_compliance_terms` (
  `id` int(11) NOT NULL,
  `term` varchar(200) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dateFrom` datetime DEFAULT NULL,
  `dateTo` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `archieved` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_tds_deductions`
--

CREATE TABLE `vendor_tds_deductions` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `milestoneId` int(11) DEFAULT NULL,
  `tdsDeducted` double(9,2) DEFAULT NULL,
  `tdsPercent` double(9,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_tds_payments`
--

CREATE TABLE `vendor_tds_payments` (
  `id` int(11) NOT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `complianceTermId` int(11) DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `tdsFileId` int(11) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_work_items`
--

CREATE TABLE `vendor_work_items` (
  `id` int(11) NOT NULL,
  `workOrderId` int(11) DEFAULT NULL,
  `skuId` int(11) DEFAULT NULL,
  `paymentTermId` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `unitPrice` double(9,2) DEFAULT NULL,
  `cost` double(9,2) DEFAULT NULL,
  `gst` double(9,2) DEFAULT NULL,
  `totalAmount` double(9,2) DEFAULT NULL,
  `totalDiscount` double(9,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `declinedComments` text DEFAULT NULL,
  `vendorAcceptanceStatus` varchar(20) DEFAULT NULL,
  `vendorRejectedReason` varchar(30) DEFAULT NULL,
  `vendorRejectedComments` text DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_work_orders`
--

CREATE TABLE `vendor_work_orders` (
  `id` int(11) NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  `vendorId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `deliveryStoreId` int(11) DEFAULT NULL,
  `paymentTermId` int(11) DEFAULT NULL,
  `refNo` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `proposedBy` varchar(30) DEFAULT NULL,
  `proposedOn` datetime DEFAULT NULL,
  `approvedBy` varchar(30) DEFAULT NULL,
  `approvedOn` datetime DEFAULT NULL,
  `vendorAcceptedOn` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `budget` double(9,2) DEFAULT NULL,
  `manager` varchar(30) DEFAULT NULL,
  `executive` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL,
  `isOpex` int(11) DEFAULT NULL,
  `additionalChargesNote` text DEFAULT NULL,
  `expectedDates` text DEFAULT NULL,
  `additionalCharges` double(9,2) DEFAULT NULL,
  `deliveryCharges` double(9,2) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `leadId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `assignedTo` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedBy` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vm_subscriptions`
--

CREATE TABLE `vm_subscriptions` (
  `id` int(11) NOT NULL,
  `clientId` int(11) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `desktopSubscription` text DEFAULT NULL,
  `androidSubscription` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vm_visitors`
--

CREATE TABLE `vm_visitors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `comingFrom` varchar(100) DEFAULT NULL,
  `registeredOn` datetime DEFAULT NULL,
  `lastVisit` datetime DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `clientId` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vm_visits`
--

CREATE TABLE `vm_visits` (
  `id` int(11) NOT NULL,
  `visitorId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visiteeName` varchar(200) DEFAULT NULL,
  `visiteePhone` varchar(20) DEFAULT NULL,
  `visiteeDesignation` varchar(50) DEFAULT NULL,
  `visiteeCompany` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `subscriptionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ar_calls_histories`
--
ALTER TABLE `ar_calls_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectId` (`projectId`),
  ADD KEY `purchaseOrderId` (`purchaseOrderId`),
  ADD KEY `purchaseItemId` (`purchaseItemId`),
  ADD KEY `purchaseItemDeliveryId` (`purchaseItemDeliveryId`),
  ADD KEY `skuCatId` (`skuCatId`),
  ADD KEY `skuId` (`skuId`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `assetServiceProviderId` (`assetServiceProviderId`);

--
-- Indexes for table `asset_items`
--
ALTER TABLE `asset_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetId` (`assetId`);

--
-- Indexes for table `asset_item_assignments`
--
ALTER TABLE `asset_item_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetItemId` (`assetItemId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `cabinId` (`cabinId`),
  ADD KEY `deskId` (`deskId`),
  ADD KEY `assetMovementId` (`assetMovementId`);

--
-- Indexes for table `asset_item_movements`
--
ALTER TABLE `asset_item_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetItemId` (`assetItemId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `storeId` (`storeId`),
  ADD KEY `assetServiceProviderId` (`assetServiceProviderId`),
  ADD KEY `pdfId` (`pdfId`);

--
-- Indexes for table `asset_service_providers`
--
ALTER TABLE `asset_service_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorId` (`vendorId`);

--
-- Indexes for table `asset_stores`
--
ALTER TABLE `asset_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`),
  ADD KEY `managerId` (`managerId`);

--
-- Indexes for table `asset_warrenties`
--
ALTER TABLE `asset_warrenties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetId` (`assetId`);

--
-- Indexes for table `bills_queue`
--
ALTER TABLE `bills_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills_queues`
--
ALTER TABLE `bills_queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opexTypeId` (`opexTypeId`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `gstFileId` (`gstFileId`),
  ADD KEY `projectId` (`projectId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `serviceProviderId` (`serviceProviderId`),
  ADD KEY `imageId` (`imageId`);

--
-- Indexes for table `bill_queue_gsts`
--
ALTER TABLE `bill_queue_gsts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billId` (`billId`);

--
-- Indexes for table `booked_desks`
--
ALTER TABLE `booked_desks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `facilitySetId` (`facilitySetId`),
  ADD KEY `deskId` (`deskId`),
  ADD KEY `contractId` (`contractId`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientId` (`clientId`),
  ADD KEY `locationId` (`locationId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `exitRequestId` (`exitRequestId`),
  ADD KEY `contractId` (`contractId`);

--
-- Indexes for table `booking_mails`
--
ALTER TABLE `booking_mails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_mails_mailId_bookingId_unique` (`bookingId`,`mailId`),
  ADD KEY `mailId` (`mailId`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`),
  ADD KEY `agreementId` (`agreementId`);

--
-- Indexes for table `building_amcs`
--
ALTER TABLE `building_amcs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amcItemId` (`amcItemId`),
  ADD KEY `buildingId` (`buildingId`);

--
-- Indexes for table `building_amc_items`
--
ALTER TABLE `building_amc_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `building_contacts`
--
ALTER TABLE `building_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildingId` (`buildingId`);

--
-- Indexes for table `building_contract_terms`
--
ALTER TABLE `building_contract_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildingId` (`buildingId`);

--
-- Indexes for table `building_images`
--
ALTER TABLE `building_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `building_images_imageId_buildingId_unique` (`buildingId`,`imageId`),
  ADD KEY `imageId` (`imageId`);

--
-- Indexes for table `building_properties`
--
ALTER TABLE `building_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`);

--
-- Indexes for table `building_property_contacts`
--
ALTER TABLE `building_property_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propertyId` (`propertyId`);

--
-- Indexes for table `building_property_contracts`
--
ALTER TABLE `building_property_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propertyId` (`propertyId`);

--
-- Indexes for table `building_property_contract_negotiations`
--
ALTER TABLE `building_property_contract_negotiations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propertyId` (`propertyId`),
  ADD KEY `propertyContractId` (`propertyContractId`);

--
-- Indexes for table `building_property_images`
--
ALTER TABLE `building_property_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `building_property_images_imageId_propertyId_unique` (`propertyId`,`imageId`),
  ADD KEY `imageId` (`imageId`);

--
-- Indexes for table `building_services`
--
ALTER TABLE `building_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildingId` (`buildingId`);

--
-- Indexes for table `building_service_assignees`
--
ALTER TABLE `building_service_assignees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildingServiceId` (`buildingServiceId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `business_terms`
--
ALTER TABLE `business_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabins`
--
ALTER TABLE `cabins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `floorId` (`floorId`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leadId` (`leadId`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `ticketId` (`ticketId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryId` (`countryId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyRegistrationId` (`companyRegistrationId`),
  ADD KEY `gstRegistrationId` (`gstRegistrationId`),
  ADD KEY `panCardId` (`panCardId`);

--
-- Indexes for table `client_employees`
--
ALTER TABLE `client_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientId` (`clientId`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_contacts`
--
ALTER TABLE `company_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agreementId` (`agreementId`),
  ADD KEY `signedAgreementId` (`signedAgreementId`),
  ADD KEY `bookingId` (`bookingId`);

--
-- Indexes for table `contract_additional_invoices`
--
ALTER TABLE `contract_additional_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contractId` (`contractId`),
  ADD KEY `invoiceServiceId` (`invoiceServiceId`);

--
-- Indexes for table `contract_terms`
--
ALTER TABLE `contract_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contractId` (`contractId`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits_entries`
--
ALTER TABLE `credits_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `invoiceId` (`invoiceId`);

--
-- Indexes for table `credits_useds`
--
ALTER TABLE `credits_useds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `resourceBookingId` (`resourceBookingId`);

--
-- Indexes for table `debit_card_accounts`
--
ALTER TABLE `debit_card_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceProviderId` (`serviceProviderId`);

--
-- Indexes for table `debit_card_account_users`
--
ALTER TABLE `debit_card_account_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `debitCardAccountId` (`debitCardAccountId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `desks`
--
ALTER TABLE `desks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabinId` (`cabinId`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exit_acrs`
--
ALTER TABLE `exit_acrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exitRequestId` (`exitRequestId`);

--
-- Indexes for table `exit_comments`
--
ALTER TABLE `exit_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exitRequestId` (`exitRequestId`);

--
-- Indexes for table `exit_deductions`
--
ALTER TABLE `exit_deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exitRequestId` (`exitRequestId`);

--
-- Indexes for table `exit_requests`
--
ALTER TABLE `exit_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `finalStatementId` (`finalStatementId`),
  ADD KEY `exitFormId` (`exitFormId`);

--
-- Indexes for table `external_systems`
--
ALTER TABLE `external_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility_sets`
--
ALTER TABLE `facility_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility_set_facilities`
--
ALTER TABLE `facility_set_facilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facility_set_facilities_facilityId_setId_unique` (`facilityId`,`setId`),
  ADD KEY `setId` (`setId`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `officeId` (`officeId`);

--
-- Indexes for table `help_notes`
--
ALTER TABLE `help_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `invoiceServiceId` (`invoiceServiceId`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `proformaId` (`proformaId`),
  ADD KEY `pdfId` (`pdfId`),
  ADD KEY `tdsForm` (`tdsForm`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceId` (`invoiceId`),
  ADD KEY `invoiceServiceId` (`invoiceServiceId`);

--
-- Indexes for table `invoice_services`
--
ALTER TABLE `invoice_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignedTo` (`assignedTo`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `lead_comments`
--
ALTER TABLE `lead_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leadId` (`leadId`),
  ADD KEY `leadPropositionId` (`leadPropositionId`),
  ADD KEY `visitId` (`visitId`),
  ADD KEY `callId` (`callId`);

--
-- Indexes for table `lead_mails`
--
ALTER TABLE `lead_mails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lead_mails_mailId_leadId_unique` (`leadId`,`mailId`),
  ADD KEY `mailId` (`mailId`);

--
-- Indexes for table `lead_propositions`
--
ALTER TABLE `lead_propositions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leadId` (`leadId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `visitId` (`visitId`),
  ADD KEY `contractId` (`contractId`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityId` (`cityId`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mi_data`
--
ALTER TABLE `mi_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityId` (`cityId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_receivers`
--
ALTER TABLE `notification_receivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notificationId` (`notificationId`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildingId` (`buildingId`);

--
-- Indexes for table `office_pricings`
--
ALTER TABLE `office_pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `facilitySetId` (`facilitySetId`);

--
-- Indexes for table `opex_bills`
--
ALTER TABLE `opex_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opexTypeId` (`opexTypeId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `opexPaymentId` (`opexPaymentId`),
  ADD KEY `serviceProviderId` (`serviceProviderId`),
  ADD KEY `payoutPaymentId` (`payoutPaymentId`),
  ADD KEY `imageId` (`imageId`);

--
-- Indexes for table `opex_categories`
--
ALTER TABLE `opex_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opex_recurring_payments`
--
ALTER TABLE `opex_recurring_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceProviderId` (`serviceProviderId`),
  ADD KEY `opexTypeId` (`opexTypeId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `benificiaryId` (`benificiaryId`),
  ADD KEY `vendorId` (`vendorId`);

--
-- Indexes for table `opex_types`
--
ALTER TABLE `opex_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`),
  ADD KEY `typeId` (`typeId`);

--
-- Indexes for table `otp_passwords`
--
ALTER TABLE `otp_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payin_entries`
--
ALTER TABLE `payin_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linkedId` (`linkedId`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `invoiceServiceId` (`invoiceServiceId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`);

--
-- Indexes for table `payout_benificiaries`
--
ALTER TABLE `payout_benificiaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientId` (`clientId`);

--
-- Indexes for table `payout_entries`
--
ALTER TABLE `payout_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linkedId` (`linkedId`),
  ADD KEY `opexTypeId` (`opexTypeId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `payoutPaymentId` (`payoutPaymentId`),
  ADD KEY `pettyCashAccountId` (`pettyCashAccountId`),
  ADD KEY `debitCardAccountId` (`debitCardAccountId`);

--
-- Indexes for table `payout_payments`
--
ALTER TABLE `payout_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payoutBenificiaryId` (`payoutBenificiaryId`),
  ADD KEY `exitRequestId` (`exitRequestId`),
  ADD KEY `purchaseOrderId` (`purchaseOrderId`),
  ADD KEY `providerBillId` (`providerBillId`);

--
-- Indexes for table `petty_cash_accounts`
--
ALTER TABLE `petty_cash_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash_account_users`
--
ALTER TABLE `petty_cash_account_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pettyCashAccountId` (`pettyCashAccountId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `pg_transactions`
--
ALTER TABLE `pg_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `payinEntryId` (`payinEntryId`);

--
-- Indexes for table `pg_transaction_requests`
--
ALTER TABLE `pg_transaction_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pgTransactionId` (`pgTransactionId`);

--
-- Indexes for table `pg_transaction_responses`
--
ALTER TABLE `pg_transaction_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pgTransactionId` (`pgTransactionId`);

--
-- Indexes for table `price_contracts`
--
ALTER TABLE `price_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price_contracts_contractId_priceId_unique` (`priceId`,`contractId`),
  ADD KEY `contractId` (`contractId`);

--
-- Indexes for table `price_quotes`
--
ALTER TABLE `price_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quoteId` (`quoteId`),
  ADD KEY `facilitySetId` (`facilitySetId`);

--
-- Indexes for table `proposition_quotes`
--
ALTER TABLE `proposition_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propositionId` (`propositionId`),
  ADD KEY `officeId` (`officeId`);

--
-- Indexes for table `ref_sequences`
--
ALTER TABLE `ref_sequences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `userGuideId` (`userGuideId`);

--
-- Indexes for table `resource_bookings`
--
ALTER TABLE `resource_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resourceId` (`resourceId`),
  ADD KEY `parentBookingId` (`parentBookingId`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `clientId` (`clientId`);

--
-- Indexes for table `resource_images`
--
ALTER TABLE `resource_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `resource_images_imageId_resourceId_unique` (`resourceId`,`imageId`),
  ADD KEY `imageId` (`imageId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `assignedTo` (`assignedTo`);

--
-- Indexes for table `selfcare_links`
--
ALTER TABLE `selfcare_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opexTypeId` (`opexTypeId`),
  ADD KEY `serviceId` (`serviceId`);

--
-- Indexes for table `service_provider_bank_accounts`
--
ALTER TABLE `service_provider_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceProviderId` (`serviceProviderId`);

--
-- Indexes for table `service_provider_bills`
--
ALTER TABLE `service_provider_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicePaymentId` (`servicePaymentId`),
  ADD KEY `payoutPaymentId` (`payoutPaymentId`);

--
-- Indexes for table `service_provider_contacts`
--
ALTER TABLE `service_provider_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceProviderId` (`serviceProviderId`);

--
-- Indexes for table `service_provider_payments`
--
ALTER TABLE `service_provider_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceProviderId` (`serviceProviderId`),
  ADD KEY `serviceId` (`serviceId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `benificiaryId` (`benificiaryId`),
  ADD KEY `opexTypeId` (`opexTypeId`);

--
-- Indexes for table `service_provider_portals`
--
ALTER TABLE `service_provider_portals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceProviderId` (`serviceProviderId`);

--
-- Indexes for table `service_provider_services`
--
ALTER TABLE `service_provider_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skus`
--
ALTER TABLE `skus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`),
  ADD KEY `typeId` (`typeId`);

--
-- Indexes for table `sku_categories`
--
ALTER TABLE `sku_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sku_types`
--
ALTER TABLE `sku_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `sku_units`
--
ALTER TABLE `sku_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smses`
--
ALTER TABLE `smses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientEmployeeId` (`clientEmployeeId`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `cabinId` (`cabinId`),
  ADD KEY `assignedTo` (`assignedTo`),
  ADD KEY `contextId` (`contextId`),
  ADD KEY `priorityId` (`priorityId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `lastMsgId` (`lastMsgId`);

--
-- Indexes for table `ticket_assignment_histories`
--
ALTER TABLE `ticket_assignment_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketId` (`ticketId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_attachments_docId_ticketId_unique` (`ticketId`,`docId`),
  ADD KEY `docId` (`docId`);

--
-- Indexes for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_contexts`
--
ALTER TABLE `ticket_contexts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subCategoryId` (`subCategoryId`),
  ADD KEY `priorityId` (`priorityId`);

--
-- Indexes for table `ticket_expenses`
--
ALTER TABLE `ticket_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketId` (`ticketId`),
  ADD KEY `messageId` (`messageId`);

--
-- Indexes for table `ticket_mails`
--
ALTER TABLE `ticket_mails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_mails_mailId_ticketId_unique` (`ticketId`,`mailId`),
  ADD KEY `mailId` (`mailId`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketId` (`ticketId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `fromUserId` (`fromUserId`);

--
-- Indexes for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_status_histories`
--
ALTER TABLE `ticket_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketId` (`ticketId`);

--
-- Indexes for table `ticket_sub_categories`
--
ALTER TABLE `ticket_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `urn_payments`
--
ALTER TABLE `urn_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toUser` (`toUser`),
  ADD KEY `ticketId` (`ticketId`),
  ADD KEY `messageId` (`messageId`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_roleId_userId_unique` (`userId`,`roleId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityId` (`cityId`);

--
-- Indexes for table `vendor_bank_accounts`
--
ALTER TABLE `vendor_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorId` (`vendorId`);

--
-- Indexes for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `idProofId` (`idProofId`),
  ADD KEY `addressProofId` (`addressProofId`);

--
-- Indexes for table `vendor_gst_compliance_terms`
--
ALTER TABLE `vendor_gst_compliance_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_payment_terms`
--
ALTER TABLE `vendor_payment_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorId` (`vendorId`);

--
-- Indexes for table `vendor_projects`
--
ALTER TABLE `vendor_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `proposedUserId` (`proposedUserId`);

--
-- Indexes for table `vendor_purchase_items`
--
ALTER TABLE `vendor_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseOrderId` (`purchaseOrderId`),
  ADD KEY `opexTypeId` (`opexTypeId`),
  ADD KEY `skuId` (`skuId`),
  ADD KEY `paymentTermId` (`paymentTermId`);

--
-- Indexes for table `vendor_purchase_item_deliveries`
--
ALTER TABLE `vendor_purchase_item_deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseItemId` (`purchaseItemId`);

--
-- Indexes for table `vendor_purchase_item_statuses`
--
ALTER TABLE `vendor_purchase_item_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseItemId` (`purchaseItemId`),
  ADD KEY `mileStoneId` (`mileStoneId`);

--
-- Indexes for table `vendor_purchase_item_status_images`
--
ALTER TABLE `vendor_purchase_item_status_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorPurchaseItemStatusId` (`vendorPurchaseItemStatusId`),
  ADD KEY `imageId` (`imageId`);

--
-- Indexes for table `vendor_purchase_orders`
--
ALTER TABLE `vendor_purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectId` (`projectId`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `deliveryStoreId` (`deliveryStoreId`),
  ADD KEY `workOrderId` (`workOrderId`),
  ADD KEY `vendorBankAccountId` (`vendorBankAccountId`),
  ADD KEY `opexPaymentId` (`opexPaymentId`),
  ADD KEY `executive` (`executive`),
  ADD KEY `manager` (`manager`),
  ADD KEY `pdfId` (`pdfId`),
  ADD KEY `taxInvoiceId` (`taxInvoiceId`),
  ADD KEY `officeId` (`officeId`);

--
-- Indexes for table `vendor_purchase_order_invoices`
--
ALTER TABLE `vendor_purchase_order_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseOrderId` (`purchaseOrderId`),
  ADD KEY `gstFileId` (`gstFileId`),
  ADD KEY `docId` (`docId`);

--
-- Indexes for table `vendor_purchase_order_invoice_gsts`
--
ALTER TABLE `vendor_purchase_order_invoice_gsts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseOrderInvoiceId` (`purchaseOrderInvoiceId`);

--
-- Indexes for table `vendor_purchase_order_milestones`
--
ALTER TABLE `vendor_purchase_order_milestones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentMilestoneId` (`parentMilestoneId`),
  ADD KEY `purchaseOrderId` (`purchaseOrderId`),
  ADD KEY `purchaseItemId` (`purchaseItemId`),
  ADD KEY `payoutId` (`payoutId`);

--
-- Indexes for table `vendor_skus`
--
ALTER TABLE `vendor_skus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `opexTypeId` (`opexTypeId`),
  ADD KEY `skuId` (`skuId`);

--
-- Indexes for table `vendor_sku_pricings`
--
ALTER TABLE `vendor_sku_pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorSkuId` (`vendorSkuId`),
  ADD KEY `paymentTermId` (`paymentTermId`);

--
-- Indexes for table `vendor_tds_compliance_terms`
--
ALTER TABLE `vendor_tds_compliance_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_tds_deductions`
--
ALTER TABLE `vendor_tds_deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `milestoneId` (`milestoneId`);

--
-- Indexes for table `vendor_tds_payments`
--
ALTER TABLE `vendor_tds_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `complianceTermId` (`complianceTermId`),
  ADD KEY `tdsFileId` (`tdsFileId`);

--
-- Indexes for table `vendor_work_items`
--
ALTER TABLE `vendor_work_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workOrderId` (`workOrderId`),
  ADD KEY `skuId` (`skuId`),
  ADD KEY `paymentTermId` (`paymentTermId`);

--
-- Indexes for table `vendor_work_orders`
--
ALTER TABLE `vendor_work_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectId` (`projectId`),
  ADD KEY `vendorId` (`vendorId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `deliveryStoreId` (`deliveryStoreId`),
  ADD KEY `paymentTermId` (`paymentTermId`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leadId` (`leadId`),
  ADD KEY `officeId` (`officeId`),
  ADD KEY `assignedTo` (`assignedTo`);

--
-- Indexes for table `vm_subscriptions`
--
ALTER TABLE `vm_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientId` (`clientId`);

--
-- Indexes for table `vm_visitors`
--
ALTER TABLE `vm_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imageId` (`imageId`);

--
-- Indexes for table `vm_visits`
--
ALTER TABLE `vm_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitorId` (`visitorId`),
  ADD KEY `subscriptionId` (`subscriptionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ar_calls_histories`
--
ALTER TABLE `ar_calls_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_items`
--
ALTER TABLE `asset_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_item_assignments`
--
ALTER TABLE `asset_item_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_item_movements`
--
ALTER TABLE `asset_item_movements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_service_providers`
--
ALTER TABLE `asset_service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_stores`
--
ALTER TABLE `asset_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_warrenties`
--
ALTER TABLE `asset_warrenties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills_queue`
--
ALTER TABLE `bills_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills_queues`
--
ALTER TABLE `bills_queues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_queue_gsts`
--
ALTER TABLE `bill_queue_gsts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booked_desks`
--
ALTER TABLE `booked_desks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_mails`
--
ALTER TABLE `booking_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `building_amcs`
--
ALTER TABLE `building_amcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_amc_items`
--
ALTER TABLE `building_amc_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_contacts`
--
ALTER TABLE `building_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_contract_terms`
--
ALTER TABLE `building_contract_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_images`
--
ALTER TABLE `building_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_properties`
--
ALTER TABLE `building_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_property_contacts`
--
ALTER TABLE `building_property_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_property_contracts`
--
ALTER TABLE `building_property_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_property_contract_negotiations`
--
ALTER TABLE `building_property_contract_negotiations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_property_images`
--
ALTER TABLE `building_property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_services`
--
ALTER TABLE `building_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building_service_assignees`
--
ALTER TABLE `building_service_assignees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_terms`
--
ALTER TABLE `business_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cabins`
--
ALTER TABLE `cabins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_employees`
--
ALTER TABLE `client_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_contacts`
--
ALTER TABLE `company_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_additional_invoices`
--
ALTER TABLE `contract_additional_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_terms`
--
ALTER TABLE `contract_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credits_entries`
--
ALTER TABLE `credits_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credits_useds`
--
ALTER TABLE `credits_useds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debit_card_accounts`
--
ALTER TABLE `debit_card_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debit_card_account_users`
--
ALTER TABLE `debit_card_account_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `desks`
--
ALTER TABLE `desks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exit_acrs`
--
ALTER TABLE `exit_acrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exit_comments`
--
ALTER TABLE `exit_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exit_deductions`
--
ALTER TABLE `exit_deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exit_requests`
--
ALTER TABLE `exit_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `external_systems`
--
ALTER TABLE `external_systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facility_sets`
--
ALTER TABLE `facility_sets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facility_set_facilities`
--
ALTER TABLE `facility_set_facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_notes`
--
ALTER TABLE `help_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_services`
--
ALTER TABLE `invoice_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_comments`
--
ALTER TABLE `lead_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_mails`
--
ALTER TABLE `lead_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_propositions`
--
ALTER TABLE `lead_propositions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mi_data`
--
ALTER TABLE `mi_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_receivers`
--
ALTER TABLE `notification_receivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `office_pricings`
--
ALTER TABLE `office_pricings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opex_bills`
--
ALTER TABLE `opex_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opex_categories`
--
ALTER TABLE `opex_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opex_recurring_payments`
--
ALTER TABLE `opex_recurring_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opex_types`
--
ALTER TABLE `opex_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_passwords`
--
ALTER TABLE `otp_passwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payin_entries`
--
ALTER TABLE `payin_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_benificiaries`
--
ALTER TABLE `payout_benificiaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_entries`
--
ALTER TABLE `payout_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_payments`
--
ALTER TABLE `payout_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petty_cash_accounts`
--
ALTER TABLE `petty_cash_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petty_cash_account_users`
--
ALTER TABLE `petty_cash_account_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pg_transactions`
--
ALTER TABLE `pg_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pg_transaction_requests`
--
ALTER TABLE `pg_transaction_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pg_transaction_responses`
--
ALTER TABLE `pg_transaction_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_contracts`
--
ALTER TABLE `price_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_quotes`
--
ALTER TABLE `price_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposition_quotes`
--
ALTER TABLE `proposition_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_sequences`
--
ALTER TABLE `ref_sequences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resource_bookings`
--
ALTER TABLE `resource_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resource_images`
--
ALTER TABLE `resource_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selfcare_links`
--
ALTER TABLE `selfcare_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_bank_accounts`
--
ALTER TABLE `service_provider_bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_bills`
--
ALTER TABLE `service_provider_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_contacts`
--
ALTER TABLE `service_provider_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_payments`
--
ALTER TABLE `service_provider_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_portals`
--
ALTER TABLE `service_provider_portals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_services`
--
ALTER TABLE `service_provider_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skus`
--
ALTER TABLE `skus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sku_categories`
--
ALTER TABLE `sku_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sku_types`
--
ALTER TABLE `sku_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sku_units`
--
ALTER TABLE `sku_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_assignment_histories`
--
ALTER TABLE `ticket_assignment_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_contexts`
--
ALTER TABLE `ticket_contexts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_expenses`
--
ALTER TABLE `ticket_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_mails`
--
ALTER TABLE `ticket_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_status_histories`
--
ALTER TABLE `ticket_status_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_sub_categories`
--
ALTER TABLE `ticket_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `urn_payments`
--
ALTER TABLE `urn_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor_bank_accounts`
--
ALTER TABLE `vendor_bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor_gst_compliance_terms`
--
ALTER TABLE `vendor_gst_compliance_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_payment_terms`
--
ALTER TABLE `vendor_payment_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_projects`
--
ALTER TABLE `vendor_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_items`
--
ALTER TABLE `vendor_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_item_deliveries`
--
ALTER TABLE `vendor_purchase_item_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_item_statuses`
--
ALTER TABLE `vendor_purchase_item_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_item_status_images`
--
ALTER TABLE `vendor_purchase_item_status_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_orders`
--
ALTER TABLE `vendor_purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_order_invoices`
--
ALTER TABLE `vendor_purchase_order_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_order_invoice_gsts`
--
ALTER TABLE `vendor_purchase_order_invoice_gsts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_purchase_order_milestones`
--
ALTER TABLE `vendor_purchase_order_milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_skus`
--
ALTER TABLE `vendor_skus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_sku_pricings`
--
ALTER TABLE `vendor_sku_pricings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_tds_compliance_terms`
--
ALTER TABLE `vendor_tds_compliance_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_tds_deductions`
--
ALTER TABLE `vendor_tds_deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_tds_payments`
--
ALTER TABLE `vendor_tds_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_work_items`
--
ALTER TABLE `vendor_work_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_work_orders`
--
ALTER TABLE `vendor_work_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vm_subscriptions`
--
ALTER TABLE `vm_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vm_visitors`
--
ALTER TABLE `vm_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vm_visits`
--
ALTER TABLE `vm_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ar_calls_histories`
--
ALTER TABLE `ar_calls_histories`
  ADD CONSTRAINT `ar_calls_histories_ibfk_1` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_10` FOREIGN KEY (`purchaseOrderId`) REFERENCES `vendor_purchase_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `assets_ibfk_11` FOREIGN KEY (`purchaseItemId`) REFERENCES `vendor_purchase_items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `assets_ibfk_12` FOREIGN KEY (`purchaseItemDeliveryId`) REFERENCES `vendor_purchase_item_deliveries` (`id`),
  ADD CONSTRAINT `assets_ibfk_13` FOREIGN KEY (`skuCatId`) REFERENCES `sku_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `assets_ibfk_14` FOREIGN KEY (`skuId`) REFERENCES `skus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `assets_ibfk_15` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `assets_ibfk_16` FOREIGN KEY (`assetServiceProviderId`) REFERENCES `asset_service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `assets_ibfk_9` FOREIGN KEY (`projectId`) REFERENCES `vendor_projects` (`id`);

--
-- Constraints for table `asset_items`
--
ALTER TABLE `asset_items`
  ADD CONSTRAINT `asset_items_ibfk_1` FOREIGN KEY (`assetId`) REFERENCES `assets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `asset_item_assignments`
--
ALTER TABLE `asset_item_assignments`
  ADD CONSTRAINT `asset_item_assignments_ibfk_10` FOREIGN KEY (`cabinId`) REFERENCES `cabins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_assignments_ibfk_11` FOREIGN KEY (`deskId`) REFERENCES `desks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_assignments_ibfk_12` FOREIGN KEY (`assetMovementId`) REFERENCES `asset_item_movements` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_assignments_ibfk_7` FOREIGN KEY (`assetItemId`) REFERENCES `asset_items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_assignments_ibfk_8` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_assignments_ibfk_9` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `asset_item_movements`
--
ALTER TABLE `asset_item_movements`
  ADD CONSTRAINT `asset_item_movements_ibfk_10` FOREIGN KEY (`pdfId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_movements_ibfk_6` FOREIGN KEY (`assetItemId`) REFERENCES `asset_items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_movements_ibfk_7` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_movements_ibfk_8` FOREIGN KEY (`storeId`) REFERENCES `asset_stores` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_item_movements_ibfk_9` FOREIGN KEY (`assetServiceProviderId`) REFERENCES `asset_service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `asset_service_providers`
--
ALTER TABLE `asset_service_providers`
  ADD CONSTRAINT `asset_service_providers_ibfk_1` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `asset_stores`
--
ALTER TABLE `asset_stores`
  ADD CONSTRAINT `asset_stores_ibfk_3` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `asset_stores_ibfk_4` FOREIGN KEY (`managerId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `asset_warrenties`
--
ALTER TABLE `asset_warrenties`
  ADD CONSTRAINT `asset_warrenties_ibfk_1` FOREIGN KEY (`assetId`) REFERENCES `assets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `bills_queues`
--
ALTER TABLE `bills_queues`
  ADD CONSTRAINT `bills_queues_ibfk_10` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bills_queues_ibfk_11` FOREIGN KEY (`gstFileId`) REFERENCES `bill_queue_gsts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bills_queues_ibfk_12` FOREIGN KEY (`projectId`) REFERENCES `vendor_projects` (`id`),
  ADD CONSTRAINT `bills_queues_ibfk_13` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bills_queues_ibfk_14` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bills_queues_ibfk_15` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bills_queues_ibfk_16` FOREIGN KEY (`imageId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bills_queues_ibfk_9` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `bill_queue_gsts`
--
ALTER TABLE `bill_queue_gsts`
  ADD CONSTRAINT `bill_queue_gsts_ibfk_1` FOREIGN KEY (`billId`) REFERENCES `bills_queue` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `booked_desks`
--
ALTER TABLE `booked_desks`
  ADD CONSTRAINT `booked_desks_ibfk_5` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booked_desks_ibfk_6` FOREIGN KEY (`facilitySetId`) REFERENCES `facility_sets` (`id`),
  ADD CONSTRAINT `booked_desks_ibfk_7` FOREIGN KEY (`deskId`) REFERENCES `desks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booked_desks_ibfk_8` FOREIGN KEY (`contractId`) REFERENCES `contracts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_10` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_11` FOREIGN KEY (`exitRequestId`) REFERENCES `exit_requests` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_12` FOREIGN KEY (`contractId`) REFERENCES `contracts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_7` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_8` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `bookings_ibfk_9` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `booking_mails`
--
ALTER TABLE `booking_mails`
  ADD CONSTRAINT `booking_mails_ibfk_3` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_mails_ibfk_4` FOREIGN KEY (`mailId`) REFERENCES `mails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `buildings_ibfk_3` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `buildings_ibfk_4` FOREIGN KEY (`agreementId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_amcs`
--
ALTER TABLE `building_amcs`
  ADD CONSTRAINT `building_amcs_ibfk_3` FOREIGN KEY (`amcItemId`) REFERENCES `building_amc_items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `building_amcs_ibfk_4` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_contacts`
--
ALTER TABLE `building_contacts`
  ADD CONSTRAINT `building_contacts_ibfk_1` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_contract_terms`
--
ALTER TABLE `building_contract_terms`
  ADD CONSTRAINT `building_contract_terms_ibfk_1` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_images`
--
ALTER TABLE `building_images`
  ADD CONSTRAINT `building_images_ibfk_3` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `building_images_ibfk_4` FOREIGN KEY (`imageId`) REFERENCES `docs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `building_properties`
--
ALTER TABLE `building_properties`
  ADD CONSTRAINT `building_properties_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_property_contacts`
--
ALTER TABLE `building_property_contacts`
  ADD CONSTRAINT `building_property_contacts_ibfk_1` FOREIGN KEY (`propertyId`) REFERENCES `building_properties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_property_contracts`
--
ALTER TABLE `building_property_contracts`
  ADD CONSTRAINT `building_property_contracts_ibfk_1` FOREIGN KEY (`propertyId`) REFERENCES `building_properties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_property_contract_negotiations`
--
ALTER TABLE `building_property_contract_negotiations`
  ADD CONSTRAINT `building_property_contract_negotiations_ibfk_3` FOREIGN KEY (`propertyId`) REFERENCES `building_properties` (`id`),
  ADD CONSTRAINT `building_property_contract_negotiations_ibfk_4` FOREIGN KEY (`propertyContractId`) REFERENCES `building_property_contracts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_property_images`
--
ALTER TABLE `building_property_images`
  ADD CONSTRAINT `building_property_images_ibfk_3` FOREIGN KEY (`propertyId`) REFERENCES `building_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `building_property_images_ibfk_4` FOREIGN KEY (`imageId`) REFERENCES `docs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `building_services`
--
ALTER TABLE `building_services`
  ADD CONSTRAINT `building_services_ibfk_1` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `building_service_assignees`
--
ALTER TABLE `building_service_assignees`
  ADD CONSTRAINT `building_service_assignees_ibfk_3` FOREIGN KEY (`buildingServiceId`) REFERENCES `building_services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `building_service_assignees_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `cabins`
--
ALTER TABLE `cabins`
  ADD CONSTRAINT `cabins_ibfk_3` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cabins_ibfk_4` FOREIGN KEY (`floorId`) REFERENCES `floors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_ibfk_4` FOREIGN KEY (`leadId`) REFERENCES `leads` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `calls_ibfk_5` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`),
  ADD CONSTRAINT `calls_ibfk_6` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`countryId`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`companyRegistrationId`) REFERENCES `docs` (`id`),
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`gstRegistrationId`) REFERENCES `docs` (`id`),
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`panCardId`) REFERENCES `docs` (`id`);

--
-- Constraints for table `client_employees`
--
ALTER TABLE `client_employees`
  ADD CONSTRAINT `client_employees_ibfk_3` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `client_employees_ibfk_4` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `company_contacts`
--
ALTER TABLE `company_contacts`
  ADD CONSTRAINT `company_contacts_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_4` FOREIGN KEY (`agreementId`) REFERENCES `docs` (`id`),
  ADD CONSTRAINT `contracts_ibfk_5` FOREIGN KEY (`signedAgreementId`) REFERENCES `docs` (`id`),
  ADD CONSTRAINT `contracts_ibfk_6` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `contract_additional_invoices`
--
ALTER TABLE `contract_additional_invoices`
  ADD CONSTRAINT `contract_additional_invoices_ibfk_3` FOREIGN KEY (`contractId`) REFERENCES `contracts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_additional_invoices_ibfk_4` FOREIGN KEY (`invoiceServiceId`) REFERENCES `invoice_services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `contract_terms`
--
ALTER TABLE `contract_terms`
  ADD CONSTRAINT `contract_terms_ibfk_1` FOREIGN KEY (`contractId`) REFERENCES `contracts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `credits_entries`
--
ALTER TABLE `credits_entries`
  ADD CONSTRAINT `credits_entries_ibfk_3` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `credits_entries_ibfk_4` FOREIGN KEY (`invoiceId`) REFERENCES `invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `credits_useds`
--
ALTER TABLE `credits_useds`
  ADD CONSTRAINT `credits_useds_ibfk_3` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `credits_useds_ibfk_4` FOREIGN KEY (`resourceBookingId`) REFERENCES `resource_bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `debit_card_accounts`
--
ALTER TABLE `debit_card_accounts`
  ADD CONSTRAINT `debit_card_accounts_ibfk_1` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `debit_card_account_users`
--
ALTER TABLE `debit_card_account_users`
  ADD CONSTRAINT `debit_card_account_users_ibfk_3` FOREIGN KEY (`debitCardAccountId`) REFERENCES `debit_card_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `debit_card_account_users_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `desks`
--
ALTER TABLE `desks`
  ADD CONSTRAINT `desks_ibfk_1` FOREIGN KEY (`cabinId`) REFERENCES `cabins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `exit_acrs`
--
ALTER TABLE `exit_acrs`
  ADD CONSTRAINT `exit_acrs_ibfk_1` FOREIGN KEY (`exitRequestId`) REFERENCES `exit_requests` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `exit_comments`
--
ALTER TABLE `exit_comments`
  ADD CONSTRAINT `exit_comments_ibfk_1` FOREIGN KEY (`exitRequestId`) REFERENCES `exit_requests` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `exit_deductions`
--
ALTER TABLE `exit_deductions`
  ADD CONSTRAINT `exit_deductions_ibfk_1` FOREIGN KEY (`exitRequestId`) REFERENCES `exit_requests` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `exit_requests`
--
ALTER TABLE `exit_requests`
  ADD CONSTRAINT `exit_requests_ibfk_4` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `exit_requests_ibfk_5` FOREIGN KEY (`finalStatementId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `exit_requests_ibfk_6` FOREIGN KEY (`exitFormId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `facility_set_facilities`
--
ALTER TABLE `facility_set_facilities`
  ADD CONSTRAINT `facility_set_facilities_ibfk_3` FOREIGN KEY (`facilityId`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facility_set_facilities_ibfk_4` FOREIGN KEY (`setId`) REFERENCES `facility_sets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_ibfk_1` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_10` FOREIGN KEY (`proformaId`) REFERENCES `docs` (`id`),
  ADD CONSTRAINT `invoices_ibfk_11` FOREIGN KEY (`pdfId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_12` FOREIGN KEY (`tdsForm`) REFERENCES `docs` (`id`),
  ADD CONSTRAINT `invoices_ibfk_7` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_8` FOREIGN KEY (`invoiceServiceId`) REFERENCES `invoice_services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_9` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_ibfk_3` FOREIGN KEY (`invoiceId`) REFERENCES `invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_items_ibfk_4` FOREIGN KEY (`invoiceServiceId`) REFERENCES `invoice_services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_ibfk_3` FOREIGN KEY (`assignedTo`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `leads_ibfk_4` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lead_comments`
--
ALTER TABLE `lead_comments`
  ADD CONSTRAINT `lead_comments_ibfk_5` FOREIGN KEY (`leadId`) REFERENCES `leads` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_comments_ibfk_6` FOREIGN KEY (`leadPropositionId`) REFERENCES `lead_propositions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_comments_ibfk_7` FOREIGN KEY (`visitId`) REFERENCES `visits` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_comments_ibfk_8` FOREIGN KEY (`callId`) REFERENCES `calls` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lead_mails`
--
ALTER TABLE `lead_mails`
  ADD CONSTRAINT `lead_mails_ibfk_3` FOREIGN KEY (`leadId`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_mails_ibfk_4` FOREIGN KEY (`mailId`) REFERENCES `mails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lead_propositions`
--
ALTER TABLE `lead_propositions`
  ADD CONSTRAINT `lead_propositions_ibfk_5` FOREIGN KEY (`leadId`) REFERENCES `leads` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_propositions_ibfk_6` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_propositions_ibfk_7` FOREIGN KEY (`visitId`) REFERENCES `visits` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lead_propositions_ibfk_8` FOREIGN KEY (`contractId`) REFERENCES `contracts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mi_data`
--
ALTER TABLE `mi_data`
  ADD CONSTRAINT `mi_data_ibfk_1` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `notification_receivers`
--
ALTER TABLE `notification_receivers`
  ADD CONSTRAINT `notification_receivers_ibfk_1` FOREIGN KEY (`notificationId`) REFERENCES `notifications` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_ibfk_1` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `office_pricings`
--
ALTER TABLE `office_pricings`
  ADD CONSTRAINT `office_pricings_ibfk_3` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `office_pricings_ibfk_4` FOREIGN KEY (`facilitySetId`) REFERENCES `facility_sets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `opex_bills`
--
ALTER TABLE `opex_bills`
  ADD CONSTRAINT `opex_bills_ibfk_10` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_bills_ibfk_11` FOREIGN KEY (`opexPaymentId`) REFERENCES `opex_recurring_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_bills_ibfk_12` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_bills_ibfk_13` FOREIGN KEY (`payoutPaymentId`) REFERENCES `payout_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_bills_ibfk_14` FOREIGN KEY (`imageId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_bills_ibfk_8` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_bills_ibfk_9` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `opex_recurring_payments`
--
ALTER TABLE `opex_recurring_payments`
  ADD CONSTRAINT `opex_recurring_payments_ibfk_10` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_recurring_payments_ibfk_11` FOREIGN KEY (`benificiaryId`) REFERENCES `payout_benificiaries` (`id`),
  ADD CONSTRAINT `opex_recurring_payments_ibfk_12` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_recurring_payments_ibfk_7` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_recurring_payments_ibfk_8` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_recurring_payments_ibfk_9` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `opex_types`
--
ALTER TABLE `opex_types`
  ADD CONSTRAINT `opex_types_ibfk_3` FOREIGN KEY (`catId`) REFERENCES `opex_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `opex_types_ibfk_4` FOREIGN KEY (`typeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payin_entries`
--
ALTER TABLE `payin_entries`
  ADD CONSTRAINT `payin_entries_ibfk_4` FOREIGN KEY (`linkedId`) REFERENCES `payin_entries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payin_entries_ibfk_5` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payin_entries_ibfk_6` FOREIGN KEY (`invoiceServiceId`) REFERENCES `invoice_services` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payout_benificiaries`
--
ALTER TABLE `payout_benificiaries`
  ADD CONSTRAINT `payout_benificiaries_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payout_entries`
--
ALTER TABLE `payout_entries`
  ADD CONSTRAINT `payout_entries_ibfk_10` FOREIGN KEY (`payoutPaymentId`) REFERENCES `payout_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_entries_ibfk_11` FOREIGN KEY (`pettyCashAccountId`) REFERENCES `petty_cash_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_entries_ibfk_12` FOREIGN KEY (`debitCardAccountId`) REFERENCES `debit_card_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_entries_ibfk_7` FOREIGN KEY (`linkedId`) REFERENCES `payout_entries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_entries_ibfk_8` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_entries_ibfk_9` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payout_payments`
--
ALTER TABLE `payout_payments`
  ADD CONSTRAINT `payout_payments_ibfk_5` FOREIGN KEY (`payoutBenificiaryId`) REFERENCES `payout_benificiaries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_payments_ibfk_6` FOREIGN KEY (`exitRequestId`) REFERENCES `exit_requests` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_payments_ibfk_7` FOREIGN KEY (`purchaseOrderId`) REFERENCES `vendor_purchase_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payout_payments_ibfk_8` FOREIGN KEY (`providerBillId`) REFERENCES `service_provider_bills` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `petty_cash_account_users`
--
ALTER TABLE `petty_cash_account_users`
  ADD CONSTRAINT `petty_cash_account_users_ibfk_3` FOREIGN KEY (`pettyCashAccountId`) REFERENCES `petty_cash_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `petty_cash_account_users_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pg_transactions`
--
ALTER TABLE `pg_transactions`
  ADD CONSTRAINT `pg_transactions_ibfk_3` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pg_transactions_ibfk_4` FOREIGN KEY (`payinEntryId`) REFERENCES `payin_entries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pg_transaction_requests`
--
ALTER TABLE `pg_transaction_requests`
  ADD CONSTRAINT `pg_transaction_requests_ibfk_1` FOREIGN KEY (`pgTransactionId`) REFERENCES `pg_transactions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pg_transaction_responses`
--
ALTER TABLE `pg_transaction_responses`
  ADD CONSTRAINT `pg_transaction_responses_ibfk_1` FOREIGN KEY (`pgTransactionId`) REFERENCES `pg_transactions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `price_contracts`
--
ALTER TABLE `price_contracts`
  ADD CONSTRAINT `price_contracts_ibfk_3` FOREIGN KEY (`priceId`) REFERENCES `price_quotes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `price_contracts_ibfk_4` FOREIGN KEY (`contractId`) REFERENCES `contracts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `price_quotes`
--
ALTER TABLE `price_quotes`
  ADD CONSTRAINT `price_quotes_ibfk_3` FOREIGN KEY (`quoteId`) REFERENCES `proposition_quotes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `price_quotes_ibfk_4` FOREIGN KEY (`facilitySetId`) REFERENCES `facility_sets` (`id`);

--
-- Constraints for table `proposition_quotes`
--
ALTER TABLE `proposition_quotes`
  ADD CONSTRAINT `proposition_quotes_ibfk_3` FOREIGN KEY (`propositionId`) REFERENCES `lead_propositions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `proposition_quotes_ibfk_4` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`);

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_3` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `resources_ibfk_4` FOREIGN KEY (`userGuideId`) REFERENCES `docs` (`id`);

--
-- Constraints for table `resource_bookings`
--
ALTER TABLE `resource_bookings`
  ADD CONSTRAINT `resource_bookings_ibfk_5` FOREIGN KEY (`resourceId`) REFERENCES `resources` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `resource_bookings_ibfk_6` FOREIGN KEY (`parentBookingId`) REFERENCES `bookings` (`id`),
  ADD CONSTRAINT `resource_bookings_ibfk_7` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `resource_bookings_ibfk_8` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `resource_images`
--
ALTER TABLE `resource_images`
  ADD CONSTRAINT `resource_images_ibfk_3` FOREIGN KEY (`resourceId`) REFERENCES `resources` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resource_images_ibfk_4` FOREIGN KEY (`imageId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_3` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `schedules_ibfk_4` FOREIGN KEY (`assignedTo`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD CONSTRAINT `service_providers_ibfk_3` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `service_providers_ibfk_4` FOREIGN KEY (`serviceId`) REFERENCES `service_provider_services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `service_provider_bank_accounts`
--
ALTER TABLE `service_provider_bank_accounts`
  ADD CONSTRAINT `service_provider_bank_accounts_ibfk_1` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `service_provider_bills`
--
ALTER TABLE `service_provider_bills`
  ADD CONSTRAINT `service_provider_bills_ibfk_3` FOREIGN KEY (`servicePaymentId`) REFERENCES `service_provider_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `service_provider_bills_ibfk_4` FOREIGN KEY (`payoutPaymentId`) REFERENCES `payout_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `service_provider_contacts`
--
ALTER TABLE `service_provider_contacts`
  ADD CONSTRAINT `service_provider_contacts_ibfk_1` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `service_provider_payments`
--
ALTER TABLE `service_provider_payments`
  ADD CONSTRAINT `service_provider_payments_ibfk_10` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `service_provider_payments_ibfk_11` FOREIGN KEY (`benificiaryId`) REFERENCES `payout_benificiaries` (`id`),
  ADD CONSTRAINT `service_provider_payments_ibfk_12` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `service_provider_payments_ibfk_7` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `service_provider_payments_ibfk_8` FOREIGN KEY (`serviceId`) REFERENCES `service_provider_services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `service_provider_payments_ibfk_9` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `service_provider_portals`
--
ALTER TABLE `service_provider_portals`
  ADD CONSTRAINT `service_provider_portals_ibfk_1` FOREIGN KEY (`serviceProviderId`) REFERENCES `service_providers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `skus`
--
ALTER TABLE `skus`
  ADD CONSTRAINT `skus_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `sku_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `skus_ibfk_2` FOREIGN KEY (`typeId`) REFERENCES `sku_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sku_types`
--
ALTER TABLE `sku_types`
  ADD CONSTRAINT `sku_types_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `sku_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_10` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_11` FOREIGN KEY (`cabinId`) REFERENCES `cabins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_12` FOREIGN KEY (`assignedTo`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_13` FOREIGN KEY (`contextId`) REFERENCES `ticket_contexts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_14` FOREIGN KEY (`priorityId`) REFERENCES `ticket_priorities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_15` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_16` FOREIGN KEY (`lastMsgId`) REFERENCES `ticket_messages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_9` FOREIGN KEY (`clientEmployeeId`) REFERENCES `client_employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ticket_assignment_histories`
--
ALTER TABLE `ticket_assignment_histories`
  ADD CONSTRAINT `ticket_assignment_histories_ibfk_3` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_assignment_histories_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_ibfk_3` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_attachments_ibfk_4` FOREIGN KEY (`docId`) REFERENCES `docs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_contexts`
--
ALTER TABLE `ticket_contexts`
  ADD CONSTRAINT `ticket_contexts_ibfk_3` FOREIGN KEY (`subCategoryId`) REFERENCES `ticket_sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_contexts_ibfk_4` FOREIGN KEY (`priorityId`) REFERENCES `ticket_priorities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ticket_expenses`
--
ALTER TABLE `ticket_expenses`
  ADD CONSTRAINT `ticket_expenses_ibfk_3` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_expenses_ibfk_4` FOREIGN KEY (`messageId`) REFERENCES `ticket_messages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ticket_mails`
--
ALTER TABLE `ticket_mails`
  ADD CONSTRAINT `ticket_mails_ibfk_3` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_mails_ibfk_4` FOREIGN KEY (`mailId`) REFERENCES `mails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD CONSTRAINT `ticket_messages_ibfk_5` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_messages_ibfk_6` FOREIGN KEY (`docId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_messages_ibfk_7` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ticket_messages_ibfk_8` FOREIGN KEY (`fromUserId`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_status_histories`
--
ALTER TABLE `ticket_status_histories`
  ADD CONSTRAINT `ticket_status_histories_ibfk_1` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ticket_sub_categories`
--
ALTER TABLE `ticket_sub_categories`
  ADD CONSTRAINT `ticket_sub_categories_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `ticket_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD CONSTRAINT `user_messages_ibfk_4` FOREIGN KEY (`toUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_messages_ibfk_5` FOREIGN KEY (`ticketId`) REFERENCES `tickets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `user_messages_ibfk_6` FOREIGN KEY (`messageId`) REFERENCES `ticket_messages` (`id`);

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_4` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_bank_accounts`
--
ALTER TABLE `vendor_bank_accounts`
  ADD CONSTRAINT `vendor_bank_accounts_ibfk_1` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  ADD CONSTRAINT `vendor_contacts_ibfk_4` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_contacts_ibfk_5` FOREIGN KEY (`idProofId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_contacts_ibfk_6` FOREIGN KEY (`addressProofId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_payment_terms`
--
ALTER TABLE `vendor_payment_terms`
  ADD CONSTRAINT `vendor_payment_terms_ibfk_1` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_projects`
--
ALTER TABLE `vendor_projects`
  ADD CONSTRAINT `vendor_projects_ibfk_5` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_projects_ibfk_6` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_projects_ibfk_7` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_projects_ibfk_8` FOREIGN KEY (`proposedUserId`) REFERENCES `users` (`id`);

--
-- Constraints for table `vendor_purchase_items`
--
ALTER TABLE `vendor_purchase_items`
  ADD CONSTRAINT `vendor_purchase_items_ibfk_5` FOREIGN KEY (`purchaseOrderId`) REFERENCES `vendor_purchase_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_items_ibfk_6` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_items_ibfk_7` FOREIGN KEY (`skuId`) REFERENCES `skus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_items_ibfk_8` FOREIGN KEY (`paymentTermId`) REFERENCES `vendor_payment_terms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_purchase_item_deliveries`
--
ALTER TABLE `vendor_purchase_item_deliveries`
  ADD CONSTRAINT `vendor_purchase_item_deliveries_ibfk_1` FOREIGN KEY (`purchaseItemId`) REFERENCES `vendor_purchase_items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_purchase_item_statuses`
--
ALTER TABLE `vendor_purchase_item_statuses`
  ADD CONSTRAINT `vendor_purchase_item_statuses_ibfk_3` FOREIGN KEY (`purchaseItemId`) REFERENCES `vendor_purchase_items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_item_statuses_ibfk_4` FOREIGN KEY (`mileStoneId`) REFERENCES `vendor_purchase_order_milestones` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_purchase_item_status_images`
--
ALTER TABLE `vendor_purchase_item_status_images`
  ADD CONSTRAINT `vendor_purchase_item_status_images_ibfk_3` FOREIGN KEY (`vendorPurchaseItemStatusId`) REFERENCES `vendor_purchase_item_statuses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_item_status_images_ibfk_4` FOREIGN KEY (`imageId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_purchase_orders`
--
ALTER TABLE `vendor_purchase_orders`
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_13` FOREIGN KEY (`projectId`) REFERENCES `vendor_projects` (`id`),
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_14` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_15` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_16` FOREIGN KEY (`deliveryStoreId`) REFERENCES `asset_stores` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_17` FOREIGN KEY (`workOrderId`) REFERENCES `vendor_work_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_18` FOREIGN KEY (`vendorBankAccountId`) REFERENCES `vendor_bank_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_19` FOREIGN KEY (`opexPaymentId`) REFERENCES `opex_recurring_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_20` FOREIGN KEY (`executive`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_21` FOREIGN KEY (`manager`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_22` FOREIGN KEY (`pdfId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_23` FOREIGN KEY (`taxInvoiceId`) REFERENCES `vendor_purchase_order_invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_orders_ibfk_24` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_purchase_order_invoices`
--
ALTER TABLE `vendor_purchase_order_invoices`
  ADD CONSTRAINT `vendor_purchase_order_invoices_ibfk_4` FOREIGN KEY (`purchaseOrderId`) REFERENCES `vendor_purchase_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_order_invoices_ibfk_5` FOREIGN KEY (`gstFileId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_order_invoices_ibfk_6` FOREIGN KEY (`docId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_purchase_order_invoice_gsts`
--
ALTER TABLE `vendor_purchase_order_invoice_gsts`
  ADD CONSTRAINT `vendor_purchase_order_invoice_gsts_ibfk_1` FOREIGN KEY (`purchaseOrderInvoiceId`) REFERENCES `vendor_purchase_order_invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_purchase_order_milestones`
--
ALTER TABLE `vendor_purchase_order_milestones`
  ADD CONSTRAINT `vendor_purchase_order_milestones_ibfk_5` FOREIGN KEY (`parentMilestoneId`) REFERENCES `vendor_purchase_order_milestones` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_order_milestones_ibfk_6` FOREIGN KEY (`purchaseOrderId`) REFERENCES `vendor_purchase_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_order_milestones_ibfk_7` FOREIGN KEY (`purchaseItemId`) REFERENCES `vendor_purchase_items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_purchase_order_milestones_ibfk_8` FOREIGN KEY (`payoutId`) REFERENCES `payout_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_skus`
--
ALTER TABLE `vendor_skus`
  ADD CONSTRAINT `vendor_skus_ibfk_4` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_skus_ibfk_5` FOREIGN KEY (`opexTypeId`) REFERENCES `opex_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_skus_ibfk_6` FOREIGN KEY (`skuId`) REFERENCES `skus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_sku_pricings`
--
ALTER TABLE `vendor_sku_pricings`
  ADD CONSTRAINT `vendor_sku_pricings_ibfk_3` FOREIGN KEY (`vendorSkuId`) REFERENCES `vendor_skus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_sku_pricings_ibfk_4` FOREIGN KEY (`paymentTermId`) REFERENCES `vendor_payment_terms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_tds_deductions`
--
ALTER TABLE `vendor_tds_deductions`
  ADD CONSTRAINT `vendor_tds_deductions_ibfk_3` FOREIGN KEY (`vendorId`) REFERENCES `vendor_skus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_tds_deductions_ibfk_4` FOREIGN KEY (`milestoneId`) REFERENCES `vendor_purchase_order_milestones` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_tds_payments`
--
ALTER TABLE `vendor_tds_payments`
  ADD CONSTRAINT `vendor_tds_payments_ibfk_4` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_tds_payments_ibfk_5` FOREIGN KEY (`complianceTermId`) REFERENCES `vendor_tds_compliance_terms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_tds_payments_ibfk_6` FOREIGN KEY (`tdsFileId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vendor_work_items`
--
ALTER TABLE `vendor_work_items`
  ADD CONSTRAINT `vendor_work_items_ibfk_4` FOREIGN KEY (`workOrderId`) REFERENCES `vendor_work_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_work_items_ibfk_5` FOREIGN KEY (`skuId`) REFERENCES `skus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_work_items_ibfk_6` FOREIGN KEY (`paymentTermId`) REFERENCES `vendor_payment_terms` (`id`);

--
-- Constraints for table `vendor_work_orders`
--
ALTER TABLE `vendor_work_orders`
  ADD CONSTRAINT `vendor_work_orders_ibfk_10` FOREIGN KEY (`deliveryStoreId`) REFERENCES `asset_stores` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_work_orders_ibfk_11` FOREIGN KEY (`paymentTermId`) REFERENCES `vendor_payment_terms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_work_orders_ibfk_12` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_work_orders_ibfk_7` FOREIGN KEY (`projectId`) REFERENCES `vendor_projects` (`id`),
  ADD CONSTRAINT `vendor_work_orders_ibfk_8` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vendor_work_orders_ibfk_9` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_4` FOREIGN KEY (`leadId`) REFERENCES `leads` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `visits_ibfk_5` FOREIGN KEY (`officeId`) REFERENCES `offices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `visits_ibfk_6` FOREIGN KEY (`assignedTo`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vm_subscriptions`
--
ALTER TABLE `vm_subscriptions`
  ADD CONSTRAINT `vm_subscriptions_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vm_visitors`
--
ALTER TABLE `vm_visitors`
  ADD CONSTRAINT `vm_visitors_ibfk_1` FOREIGN KEY (`imageId`) REFERENCES `docs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vm_visits`
--
ALTER TABLE `vm_visits`
  ADD CONSTRAINT `vm_visits_ibfk_3` FOREIGN KEY (`visitorId`) REFERENCES `vm_visitors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `vm_visits_ibfk_4` FOREIGN KEY (`subscriptionId`) REFERENCES `vm_subscriptions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
