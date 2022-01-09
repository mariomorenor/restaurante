-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurante
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Correo Electrónico',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Constraseña',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Token de Recuerdo',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Creado',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Rol',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','voyager::seeders.data_rows.roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Creado',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Nombre',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Creado',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Nombre a Mostrar',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Rol',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,4,'nombres','text','Nombres',1,1,1,1,1,1,'{}',2),(24,4,'apellidos','text','Apellidos',1,1,1,1,1,1,'{}',3),(25,4,'cedula','text','Cédula',1,1,1,1,1,1,'{}',4),(26,4,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',5),(27,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(28,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(29,5,'nombre','text','Nombre',1,1,1,1,1,1,'{}',2),(30,5,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(31,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(32,6,'id','text','Id',1,0,0,0,0,0,'{}',1),(33,6,'cargo','select_dropdown','Cargo',1,1,1,1,1,1,'{\"options\":{\"contador\":\"Contador\",\"desarrollador\":\"Desarrollador\",\"asesor\":\"Asesor\",\"gerente\":\"Gerente\"}}',7),(34,6,'departamento_id','text','Departamento Id',1,0,1,1,1,1,'{}',2),(35,6,'persona_id','text','Persona Id',1,0,1,1,1,1,'{}',3),(36,6,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',8),(37,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(38,6,'empleado_belongsto_departamento_relationship','relationship','Departamento',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Departamento\",\"table\":\"departamentos\",\"type\":\"belongsTo\",\"column\":\"departamento_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(39,6,'empleado_belongsto_persona_relationship','relationship','Nombre',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Persona\",\"table\":\"personas\",\"type\":\"belongsTo\",\"column\":\"persona_id\",\"key\":\"id\",\"label\":\"full_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(41,6,'empleado_belongsto_persona_relationship_1','relationship','Cédula',0,1,1,0,0,0,'{\"model\":\"App\\\\Models\\\\Persona\",\"table\":\"personas\",\"type\":\"belongsTo\",\"column\":\"persona_id\",\"key\":\"id\",\"label\":\"cedula\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(42,7,'persona_id','text','Persona Id',1,0,1,1,1,1,'{}',1),(44,7,'fecha','timestamp','Fecha',1,1,1,1,1,1,'{}',6),(45,7,'entrega_belongstomany_persona_relationship','relationship','Nombre',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Persona\",\"table\":\"personas\",\"type\":\"belongsTo\",\"column\":\"persona_id\",\"key\":\"id\",\"label\":\"full_name\",\"pivot_table\":\"entregas\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(46,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(47,9,'nombre','text','Nombre',1,1,1,1,1,1,'{}',2),(49,9,'costo','number','Costo',1,1,1,1,1,1,'{}',4),(50,9,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',5),(51,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(53,7,'entrega_belongstomany_restaurante_menu_relationship','relationship','Menú',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Menu\",\"table\":\"restaurante_menus\",\"type\":\"belongsTo\",\"column\":\"restaurante_menu_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"entregas\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(54,7,'restaurante_menu_id','text','Restaurante Menu Id',1,0,0,1,1,1,'{}',4),(55,7,'id','text','Id',1,0,0,0,0,0,'{}',2),(56,9,'imagen','image','Imágen',0,1,1,1,1,1,'{}',5);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (1,'users','users','Usuario','Usuarios','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(2,'menus','menus','Menú','Menús','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(3,'roles','roles','Rol','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(4,'personas','personas','Persona','Personas','voyager-person','App\\Models\\Persona',NULL,'App\\Http\\Controllers\\PersonaController','Modelo Persona',1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-12-30 01:20:09','2022-01-09 14:33:35'),(5,'departamentos','departamentos','Departamento','Departamentos','voyager-logbook','App\\Models\\Departamento',NULL,'App\\Http\\Controllers\\DepartamentoController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-09 13:17:37','2022-01-09 14:40:31'),(6,'empleados','empleados','Empleado','Empleados','voyager-people','App\\Models\\Empleado',NULL,'App\\Http\\Controllers\\EmpleadoController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-09 13:27:40','2022-01-09 14:33:12'),(7,'entregas','entregas','Entrega','Entregas','voyager-window-list','App\\Models\\Entrega',NULL,'App\\Http\\Controllers\\EntregasController',NULL,1,0,'{\"order_column\":\"fecha\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2022-01-09 15:01:23','2022-01-09 16:03:32'),(9,'restaurante_menus','restaurante-menus','Menú','Menús','voyager-pizza','App\\Models\\Menu',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-09 15:09:49','2022-01-09 16:34:28');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES (1,'Financiero','2022-01-09 13:19:49','2022-01-09 13:19:49'),(2,'Contabilidad','2022-01-09 13:19:58','2022-01-09 13:19:58'),(3,'Sistemas','2022-01-09 13:36:29','2022-01-09 13:36:29');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento_id` bigint(20) unsigned NOT NULL,
  `persona_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empleados_departamento_id_foreign` (`departamento_id`),
  KEY `empleados_persona_id_foreign` (`persona_id`),
  CONSTRAINT `empleados_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `empleados_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`id`, `cargo`, `departamento_id`, `persona_id`, `created_at`, `updated_at`) VALUES (1,'desarrollador',3,1,'2022-01-09 13:36:35','2022-01-09 13:36:35');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entregas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) unsigned NOT NULL,
  `restaurante_menu_id` bigint(20) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `entregas_persona_id_foreign` (`persona_id`),
  KEY `entregas_restaurante_menu_id_foreign` (`restaurante_menu_id`),
  CONSTRAINT `entregas_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  CONSTRAINT `entregas_restaurante_menu_id_foreign` FOREIGN KEY (`restaurante_menu_id`) REFERENCES `restaurante_menus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (1,1,'Inicio','','_self','voyager-boat','#000000',NULL,1,'2021-12-29 15:44:39','2021-12-30 01:36:01','voyager.dashboard','null'),(2,1,'Multimedia','','_self','voyager-images',NULL,5,5,'2021-12-29 15:44:39','2021-12-30 01:26:47','voyager.media.index',NULL),(3,1,'Usuarios','','_self','voyager-person',NULL,13,1,'2021-12-29 15:44:39','2022-01-09 15:01:47','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,13,2,'2021-12-29 15:44:39','2022-01-09 15:01:47','voyager.roles.index',NULL),(5,1,'Herramientas','','_self','voyager-tools',NULL,NULL,4,'2021-12-29 15:44:39','2022-01-09 15:10:07',NULL,NULL),(6,1,'Diseñador de Menús','','_self','voyager-list',NULL,5,1,'2021-12-29 15:44:39','2021-12-30 01:26:00','voyager.menus.index',NULL),(7,1,'Base de Datos','','_self','voyager-data',NULL,5,2,'2021-12-29 15:44:39','2021-12-30 01:26:00','voyager.database.index',NULL),(8,1,'Compás','','_self','voyager-compass',NULL,5,3,'2021-12-29 15:44:39','2021-12-30 01:26:00','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-12-29 15:44:39','2021-12-30 01:26:00','voyager.bread.index',NULL),(10,1,'Parámetros','','_self','voyager-settings',NULL,NULL,5,'2021-12-29 15:44:39','2022-01-09 15:10:07','voyager.settings.index',NULL),(11,1,'Personas','','_self','voyager-person',NULL,12,4,'2021-12-30 01:20:09','2022-01-09 15:10:07','voyager.personas.index',NULL),(12,1,'Restaurante','','_self','voyager-home','#000000',NULL,2,'2021-12-30 01:25:48','2021-12-30 01:36:23',NULL,''),(13,1,'Acceso','','_self','voyager-key','#000000',NULL,3,'2021-12-30 01:37:45','2022-01-09 15:10:07',NULL,''),(14,1,'Departamentos','','_self','voyager-logbook','#000000',12,3,'2022-01-09 13:17:37','2022-01-09 15:10:23','voyager.departamentos.index','null'),(15,1,'Empleados','','_self','voyager-people',NULL,12,5,'2022-01-09 13:27:40','2022-01-09 15:10:07','voyager.empleados.index',NULL),(16,1,'Entregas','','_self','voyager-window-list',NULL,12,1,'2022-01-09 15:01:23','2022-01-09 15:01:47','voyager.entregas.index',NULL),(17,1,'Menús','','_self','voyager-pizza',NULL,12,2,'2022-01-09 15:09:49','2022-01-09 15:10:23','voyager.restaurante-menus.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'admin','2021-12-29 15:44:39','2021-12-29 15:44:39');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_12_14_000001_create_personal_access_tokens_table',1),(26,'2021_12_29_201323_create_personas_table',2),(27,'2021_12_29_202313_create_departamentos_table',3),(28,'2022_01_09_082052_create_empleados_table',4),(42,'2022_01_09_094448_create_restaurante_menus_table',5),(43,'2022_01_09_095000_create_entregas_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (1,'browse_admin',NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(2,'browse_bread',NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(3,'browse_database',NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(4,'browse_media',NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(5,'browse_compass',NULL,'2021-12-29 15:44:39','2021-12-29 15:44:39'),(6,'browse_menus','menus','2021-12-29 15:44:39','2021-12-29 15:44:39'),(7,'read_menus','menus','2021-12-29 15:44:39','2021-12-29 15:44:39'),(8,'edit_menus','menus','2021-12-29 15:44:39','2021-12-29 15:44:39'),(9,'add_menus','menus','2021-12-29 15:44:39','2021-12-29 15:44:39'),(10,'delete_menus','menus','2021-12-29 15:44:40','2021-12-29 15:44:40'),(11,'browse_roles','roles','2021-12-29 15:44:40','2021-12-29 15:44:40'),(12,'read_roles','roles','2021-12-29 15:44:40','2021-12-29 15:44:40'),(13,'edit_roles','roles','2021-12-29 15:44:40','2021-12-29 15:44:40'),(14,'add_roles','roles','2021-12-29 15:44:40','2021-12-29 15:44:40'),(15,'delete_roles','roles','2021-12-29 15:44:40','2021-12-29 15:44:40'),(16,'browse_users','users','2021-12-29 15:44:40','2021-12-29 15:44:40'),(17,'read_users','users','2021-12-29 15:44:40','2021-12-29 15:44:40'),(18,'edit_users','users','2021-12-29 15:44:40','2021-12-29 15:44:40'),(19,'add_users','users','2021-12-29 15:44:40','2021-12-29 15:44:40'),(20,'delete_users','users','2021-12-29 15:44:40','2021-12-29 15:44:40'),(21,'browse_settings','settings','2021-12-29 15:44:40','2021-12-29 15:44:40'),(22,'read_settings','settings','2021-12-29 15:44:40','2021-12-29 15:44:40'),(23,'edit_settings','settings','2021-12-29 15:44:40','2021-12-29 15:44:40'),(24,'add_settings','settings','2021-12-29 15:44:40','2021-12-29 15:44:40'),(25,'delete_settings','settings','2021-12-29 15:44:40','2021-12-29 15:44:40'),(26,'browse_personas','personas','2021-12-30 01:20:09','2021-12-30 01:20:09'),(27,'read_personas','personas','2021-12-30 01:20:09','2021-12-30 01:20:09'),(28,'edit_personas','personas','2021-12-30 01:20:09','2021-12-30 01:20:09'),(29,'add_personas','personas','2021-12-30 01:20:09','2021-12-30 01:20:09'),(30,'delete_personas','personas','2021-12-30 01:20:09','2021-12-30 01:20:09'),(31,'browse_departamentos','departamentos','2022-01-09 13:17:37','2022-01-09 13:17:37'),(32,'read_departamentos','departamentos','2022-01-09 13:17:37','2022-01-09 13:17:37'),(33,'edit_departamentos','departamentos','2022-01-09 13:17:37','2022-01-09 13:17:37'),(34,'add_departamentos','departamentos','2022-01-09 13:17:37','2022-01-09 13:17:37'),(35,'delete_departamentos','departamentos','2022-01-09 13:17:37','2022-01-09 13:17:37'),(36,'browse_empleados','empleados','2022-01-09 13:27:40','2022-01-09 13:27:40'),(37,'read_empleados','empleados','2022-01-09 13:27:40','2022-01-09 13:27:40'),(38,'edit_empleados','empleados','2022-01-09 13:27:40','2022-01-09 13:27:40'),(39,'add_empleados','empleados','2022-01-09 13:27:40','2022-01-09 13:27:40'),(40,'delete_empleados','empleados','2022-01-09 13:27:40','2022-01-09 13:27:40'),(41,'browse_entregas','entregas','2022-01-09 15:01:23','2022-01-09 15:01:23'),(42,'read_entregas','entregas','2022-01-09 15:01:23','2022-01-09 15:01:23'),(43,'edit_entregas','entregas','2022-01-09 15:01:23','2022-01-09 15:01:23'),(44,'add_entregas','entregas','2022-01-09 15:01:23','2022-01-09 15:01:23'),(45,'delete_entregas','entregas','2022-01-09 15:01:23','2022-01-09 15:01:23'),(46,'browse_restaurante_menus','restaurante_menus','2022-01-09 15:09:49','2022-01-09 15:09:49'),(47,'read_restaurante_menus','restaurante_menus','2022-01-09 15:09:49','2022-01-09 15:09:49'),(48,'edit_restaurante_menus','restaurante_menus','2022-01-09 15:09:49','2022-01-09 15:09:49'),(49,'add_restaurante_menus','restaurante_menus','2022-01-09 15:09:49','2022-01-09 15:09:49'),(50,'delete_restaurante_menus','restaurante_menus','2022-01-09 15:09:49','2022-01-09 15:09:49');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` (`id`, `nombres`, `apellidos`, `cedula`, `created_at`, `updated_at`) VALUES (1,'Jonathan','Moreno','2300349640','2022-01-09 13:35:40','2022-01-09 13:35:40');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurante_menus`
--

DROP TABLE IF EXISTS `restaurante_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurante_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double(8,2) NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante_menus`
--

LOCK TABLES `restaurante_menus` WRITE;
/*!40000 ALTER TABLE `restaurante_menus` DISABLE KEYS */;
INSERT INTO `restaurante_menus` (`id`, `nombre`, `costo`, `imagen`, `created_at`, `updated_at`) VALUES (1,'Pollo al jugo',2.50,'restaurante-menus\\January2022\\w8Bq9w0Ilc007vtOLq0l.jpg','2022-01-09 16:34:53','2022-01-09 16:34:53'),(2,'Pescado Frito',3.00,NULL,'2022-01-09 16:35:07','2022-01-09 16:35:07');
/*!40000 ALTER TABLE `restaurante_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES (1,'admin','Administrador','2021-12-29 15:44:39','2021-12-29 15:44:39'),(2,'user','Usuario Normal','2021-12-29 15:44:39','2021-12-29 15:44:39');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (1,'site.title','Título del sitio','Título del sitio','','text',1,'Site'),(2,'site.description','Descripción del sitio','Descripción del sitio','','text',2,'Site'),(3,'site.logo','Logo del sitio','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','ID de rastreo de Google Analytics',NULL,'','text',4,'Site'),(5,'admin.bg_image','Imagen de fondo del administrador','','','image',5,'Admin'),(6,'admin.title','Título del administrador','Restaurante','','text',1,'Admin'),(7,'admin.description','Descripción del administrador','Sistema de Administración','','text',2,'Admin'),(8,'admin.loader','Imagen de carga del administrador','','','image',3,'Admin'),(9,'admin.icon_image','Ícono del administrador','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','ID de Cliente para Google Analytics (usado para el tablero de administrador)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (1,1,'Administrador','admin','users/default.png',NULL,'$2y$10$5MnGrNu7vceVQ.LbUi63UeO1eMvDijPPT45GRPxH/TBW3LAEHW44i',NULL,NULL,'2021-12-29 15:44:50','2021-12-29 15:44:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-09 11:36:31
