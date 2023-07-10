/*
 Navicat Premium Data Transfer

 Source Server         : CONEXION_GENEARL
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : tienda_online

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 28/05/2023 15:23:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES (1, 'ACCION');
INSERT INTO `categorias` VALUES (2, 'COMEDIA');
INSERT INTO `categorias` VALUES (3, 'TERROR');
INSERT INTO `categorias` VALUES (4, 'AVENTURA');
INSERT INTO `categorias` VALUES (5, 'ANIMADA');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `comentario` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (40, 'Guillermo Dider', 'Reyes Reyes', 'guillermoreyesdid@gmail.com', '5562250825', '');
INSERT INTO `clientes` VALUES (41, 'Guillermo Dider', 'Reyes Reyes', 'guillermoreyesdid@gmail.com', '5562250825', '');
INSERT INTO `clientes` VALUES (42, 'Guillermo Dider', 'Reyes Reyes', 'guillermoreyesdid@gmail.com', '5562250825', '');
INSERT INTO `clientes` VALUES (43, 'Guillermo Dider', 'Reyes Reyes', 'guillermoreyesdid@gmail.com', '5562250825', '');

-- ----------------------------
-- Table structure for detalle_pedidos
-- ----------------------------
DROP TABLE IF EXISTS `detalle_pedidos`;
CREATE TABLE `detalle_pedidos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `precio` decimal(10, 2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detalle_pedidos
-- ----------------------------
INSERT INTO `detalle_pedidos` VALUES (35, 31, 12, 40.00, 2, 1);
INSERT INTO `detalle_pedidos` VALUES (36, 31, 10, 31.00, 1, 1);
INSERT INTO `detalle_pedidos` VALUES (37, 32, 13, 230.00, 2, 1);
INSERT INTO `detalle_pedidos` VALUES (38, 33, 13, 230.00, 2, 1);
INSERT INTO `detalle_pedidos` VALUES (39, 34, 13, 230.00, 10, 1);
INSERT INTO `detalle_pedidos` VALUES (40, 34, 12, 40.00, 1, 1);
INSERT INTO `detalle_pedidos` VALUES (41, 34, 2, 25.00, 2, 1);
INSERT INTO `detalle_pedidos` VALUES (42, 34, 1, 20.00, 6, 1);
INSERT INTO `detalle_pedidos` VALUES (43, 34, 4, 30.00, 1, 1);

-- ----------------------------
-- Table structure for pedidos
-- ----------------------------
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pedidos
-- ----------------------------
INSERT INTO `pedidos` VALUES (31, 40, 111.00, '2023-05-28', 1);
INSERT INTO `pedidos` VALUES (32, 41, 460.00, '2023-05-28', 1);
INSERT INTO `pedidos` VALUES (33, 42, 460.00, '2023-05-28', 1);
INSERT INTO `pedidos` VALUES (34, 43, 2540.00, '2023-05-28', 1);

-- ----------------------------
-- Table structure for peliculas
-- ----------------------------
DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(80) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10, 2) NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of peliculas
-- ----------------------------
INSERT INTO `peliculas` VALUES (1, 'GUARDIANES DE LAS GALAXIA', 'FULL ACCION', '2.jpg', 20.00, 1, '2023-05-28', 1, 10);
INSERT INTO `peliculas` VALUES (2, 'MICKEY MOUSE', 'FULL ANIMACION', '4.jpg', 25.00, 5, '2023-05-28', 1, 10);
INSERT INTO `peliculas` VALUES (3, 'BANANA', 'FULL AVENTURA', '6.jpg', 24.00, 4, '2017-09-03', 1, 10);
INSERT INTO `peliculas` VALUES (4, 'BATMAN', 'FULL ACCION', 'batman.jpg', 30.00, 1, '2023-05-28', 1, 10);
INSERT INTO `peliculas` VALUES (5, 'CAMINO HACIA EL TERROR', 'FULL TERROR', 'camino-hacia-el-terror.jpg', 35.00, 3, '2017-09-03', 1, 10);
INSERT INTO `peliculas` VALUES (6, 'DEADPOOL', 'FULL ACCION', 'deadpool.jpg', 40.00, 1, '2023-05-28', 1, 10);
INSERT INTO `peliculas` VALUES (7, 'LEGO', 'FULL ANIMADA', 'lego.jpg', 17.00, 5, '2017-09-03', 1, 10);
INSERT INTO `peliculas` VALUES (8, 'RAMBO', 'FULL ACCION', 'rambo.jpg', 35.00, 1, '2017-09-03', 1, 10);
INSERT INTO `peliculas` VALUES (9, 'RESIDENT', 'FULL ACCION', 'resident.jpg', 36.00, 1, '2017-09-03', 1, 10);
INSERT INTO `peliculas` VALUES (10, 'SIMPSON', 'FULL', 'simpsons.jpg', 31.00, 4, '2023-05-28', 1, 10);
INSERT INTO `peliculas` VALUES (11, 'TED', 'FULL COMEDIA', 'ted.jpg', 17.00, 2, '2023-05-28', 1, 10);
INSERT INTO `peliculas` VALUES (12, 'TRANSFORMERS', 'FULL ACCION', 'transformer.jpg', 40.00, 1, '2023-05-28', 1, 10);
INSERT INTO `peliculas` VALUES (13, 'TRANFORMERS 2', 'Pelicula 2 de transformers', 'transformer.jpg', 230.00, 1, '2023-05-28', 1, 10);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'admin1', '1234', 1);

SET FOREIGN_KEY_CHECKS = 1;
