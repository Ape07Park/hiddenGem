-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.36 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- mid 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `mid`;
CREATE DATABASE IF NOT EXISTS `mid` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mid`;

-- 테이블 mid.boardf 구조 내보내기
DROP TABLE IF EXISTS `boardf`;
CREATE TABLE IF NOT EXISTS `boardf` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(12) NOT NULL,
  `title` varchar(40) NOT NULL,
  `foodCategory` varchar(12) DEFAULT NULL,
  `opening` varchar(16) DEFAULT NULL,
  `location` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `info` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `modTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `isDeleted` int DEFAULT '0',
  `viewCount` int DEFAULT '0',
  `likeCount` int DEFAULT '0',
  `replyCount` int DEFAULT '0',
  `foodImg` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `uid` (`uid`),
  CONSTRAINT `boardf_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mid.boardf:~18 rows (대략적) 내보내기
DELETE FROM `boardf`;
INSERT INTO `boardf` (`fid`, `uid`, `title`, `foodCategory`, `opening`, `location`, `tel`, `info`, `modTime`, `isDeleted`, `viewCount`, `likeCount`, `replyCount`, `foodImg`) VALUES
	(1, 'maria', '나고야초밥', '일식', '주중 11:00 ~ 22:00', '경기도 수원시 팔달구 권광로175번길 31-12', '031-239-4000', '학꽁치 초밥과 전어 초밥 등 특별한 초밥을 제공하는 초밥 전문점입니다. 장어 초밥도 인기인데요. 밥 위에 올라가는 두툼한 생선에서 맛과 싱싱함을 생각하며 요리한 요리사의 세심함이 느껴져요.', '2024-03-15 20:25:18', 0, 18, 3, 0, '<p><img alt="" src="/mid/file/download/image/초밥정식.png" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/모듬초밥.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/냉모밀.jpg" style="height:300px; width:300px" /></p>'),
	(2, 'james', '피지참치', '일식', '매일 11:30 ~ 23:00', '경기도 수원시 장안구 대평로90번길 19', '031-268-9202', '맛있고 신선한 참치회를 맛볼 수 있는 맛집 피지참치. 다양한 부위를 맛볼 수 있어 인기가 많다.', '2024-03-15 20:25:18', 0, 2, 0, 0, '<p><img alt="" src="/mid/file/download/image/참치 한 접시.png" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/보리굴비정식.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/피지스페셜.jfif" style="height:300px; width:300px" /></p>'),
	(3, 'brian', '마노디셰프', '양식', '매일 10:30 ~ 22:00', '경기도 수원시 권선구 세화로 134', '031-8066-1809', '현지에서 재배된 최고 품질의 신선한 재료만을 사용하고 다양한 조리법으로 표현하여 특별한 맛의 가치를 즐길 수 있는 레스토랑입니다. 베스트메뉴로 스테이크피자가 있습니다. 가족모임, 데이트 명소로 사랑받고 있습니다.', '2024-03-15 20:25:18', 0, 10, 1, 1, '<p><img alt="" src="/mid/file/download/image/참송이 크림 뇨끼.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/스테이크 피자.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/프리미엄 씨푸드 파스타.jfif" style="height:300px; width:300px" /></p>'),
	(4, 'sarah', '가보정', '한식', '매일 11:30 ~ 21:30', '경기도 수원시 팔달구 장다리로 282 의성빌딩', '1600-3883', '인계동의 한우 갈비 전문점입니다. 국내산, 호주산, 미국산 생갈비와 양념갈비 메뉴가 특히 인기입니다. 계절 별로 10여가지 밑반찬이 준비되어 나와 푸짐한 한상을 즐길 수 있습니다. 입안에서 살살 녹는 부드러운 육질을 자랑합니다.', '2024-03-15 20:25:18', 0, 1, 1, 0, '<p><img alt="" src="/mid/file/download/image/갈비탕.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/물냉면.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/한우생갈비.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/한우육회.jpg" style="height:300px; width:300px" /></p>'),
	(5, 'emma', '유치회관', '한식', '매일 00:00 ~ 00:00', '경기도 수원시 팔달구 효원로292번길 67', '031-234-6275', '인계동 이비스 앰배서더 호텔 뒷골목에서 30년 이상 영업해 온 선지 해장국 전문점입니다. 얼큰하고 시원한 국물과 신선한 선지가 잘 어우러져 특별한 맛을 선사합니다. 넉넉한 인심과 푸짐한 양으로 단골이 끊이지 않는 곳입니다.', '2024-03-15 20:25:18', 0, 5, 0, 0, '<p><img alt="" src="/mid/file/download/image/수육무침.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/유치회관_수육.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/해장국.jpg" style="height:300px; width:300px" /></p>'),
	(6, 'eunice', '골목집설렁탕', '한식', '매일 06:00 ~ 21:00', '경기도 수원시 장안구 팔달로291번길 21-17', '031-242-6059', '뽀얗게 끓여 낸 국물에 머릿고기를 담아 내는 설렁탕이 대표 메뉴입니다. 특히 정성껏 끓여낸 깊은 맛의 육수가 일품입니다. 겨울철 차가운 속을 달래주고 기운을 북돋아주기에는 이만한 곳이 없습니다.', '2024-03-15 20:25:18', 0, 3, 0, 0, '<p><img alt="" src="/mid/file/download/image/우설수육.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/설렁탕.png" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/수육.png" style="height:300px; width:300px" /></p>'),
	(7, 'john', '파스타팔리오', '양식', '주중 11:30 ~ 22:00', '경기 수원시 장안구 경수대로 950', '031-242-8225', '전통 이탈리안 레스토랑으로 빈티지한 실내와 천연 재료로 맛을 내며 스테이크, 파스타, 피자, 리조또, 샐러드, 등 각종 이태리요리들이 있습니다.', '2024-03-15 20:25:18', 0, 0, 0, 0, '<p><img alt="" src="/mid/file/download/image/쉬림프 로제 파스타.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/목살 필라프.png" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/봉골레 파스타.jpg" style="height:300px; width:300px" /></p>'),
	(8, 'elice', '팔선생', '중식', '주중 12:00 ~ 22:00', '경기도 수원시 영통구 반달로 26-1', '031-202-8839', '담백하고 깔끔한 광동식 요리 전문점입니다. 중국본토의 맛을 한국인의 입맛에 맞춘 퓨전 요리로 유명한 중식당인데요, 북경과 광동 요리를 주로 하며, 쫄깃하게 조리한 북경식 탕수육 꿔바로우가 대표메뉴입니다.', '2024-03-15 20:25:18', 0, 11, 0, 0, '<p><img alt="" src="/mid/file/download/image/새우볶음밥.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/짜장면.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/짬뽕.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/해물탕면.jpg" style="height:300px; width:300px" /></p>'),
	(9, 'tom', '삿뽀로', '일식', '주중 11:30 ~ 22:00', '경기도 수원시 영통구 반달로 31 호원빌딩', '031-205-7797', '일식에 한식을 더한 한정식입니다. 최고의 일식전문가들이 만들어낸 작품을 맛보실수 있습니다.', '2024-03-15 20:25:18', 0, 43, 9, 0, '<p><img alt="" src="/mid/file/download/image/참다랑어.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/참치초밥.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/회덮밥.jpg" style="height:300px; width:300px" /></p>'),
	(10, 'nick', '쿠우쿠우', '일식', '주중 11:00 ~ 22:00', '경기도 수원시 권선구 금곡로 206', '031-294-3110', '저렴한 가격으로 다양하고 맛있는 초밥과 롤, 샐러드바를 즐기실 수 있습니다. 예약은 평일 성인 8분 이상, 주말 및 공휴일 성인 10분 이상부터 예약 가능하십니다. 예약은 2주 전에 해주시고 취소 시 3일 전에 말씀해주십시오.', '2024-03-15 20:25:18', 0, 16, 0, 0, '<p><img alt="" src="/mid/file/download/image/쿠우쿠우.png" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/쿠우쿠우2.png" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/쿠우쿠우3.png" style="height:300px; width:300px" /></p>'),
	(11, 'brian', '다래식당', '한식', '일10:30 ~ 16:00 월', '경기도 수원시 권선구 세권로195번길 28-3 양지빌딩', '031-233-1627', '생태같은 느낌의 동태로 만드는 개운한 맛의 국물 동태찌개가 인기입니다. 동태찜은 얼큰한 동태찌개이고, 동태찌개는 맑은 동태지리를 의미합니다. 점심시간에 줄을 서야 먹을 수 있을 정도로 인기가 대단한 맛집입니다.', '2024-03-20 15:19:04', 0, 0, 0, 0, '<p><img alt="" src="/mid/file/download/image/동태찌개.png" style="height:300px; width:300px" /></p>'),
	(12, 'elice', '삐에스몽테 제빵소', '양식', '매일 09:00 - 22:00', '경기도 수원시 권선구 오목천로 149', '031-298-0045', '수원 고색동에 위치하고 있는 한옥카페로 유명한 빵집입니다. 다양한 종류의 커피 및 음료와 베이커리, 케이크 등을 판매하고 있습니다. 반죽이 잘 되어 시간이 지나도 촉촉하면서 쫀득한 식감을 자랑합니다. 카페 외관과 내부는 고풍스럽고 멋있는 한옥으로 분위기가 매우 좋습니다. 주차장이 구비되어 있어 편리하게 방문할 수 있습니다.', '2024-03-20 15:19:04', 0, 2, 0, 0, '<p><img alt="" src="/mid/file/download/image/단팥빵.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/소금빵.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/몽블랑.jfif" style="height:300px; width:300px" /></p>'),
	(13, 'emma', '군포해물탕', '한식', '매일12:00 ~ 22:30', '경기도 수원시 영통구 동수원로513번길 11', '031-215-3705', '바다가재, 주꾸미, 문어, 낙지, 새우, 꽃게 등의 풍성한 해산물을 재료로한 해물탕이 인기입니다. 얼큰한 해물탕과 함께 소주를 곁들이기 좋은 곳입니다. 예약은 하루 전 날 오전에 가능하니 참고 바랍니다.', '2024-03-20 15:19:04', 0, 0, 0, 0, '<p><img alt="" src="/mid/file/download/image/해물탕.jfif" style="height:300px; width:300px" /></p>'),
	(14, 'eunice', '후이후이', '중식', '매일11:00 - 21:00', '경기도 수원시 영통구 덕영대로 1566', '031-8001-9700', '신라호텔 팔선 출신의 쉐프가 직접 요리하고 있으며 전체적으로 자극적이지 않고 깔끔한 맛이 특징입니다. 가게 내부는 쾌적하고 깔끔한 분위기이며 단체석이 마련되어 있습니다. 주차장 또한 구비되어 있어 방문하기에 편리한 곳입니다.', '2024-03-20 15:19:04', 0, 1, 0, 0, '<p><img alt="" src="/mid/file/download/image/볶먹탕수육.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/유린기.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/짜장면.jfif" style="height:300px; width:300px" /></p>'),
	(15, 'james', '주르데크레프', '양식', '매일 10:00 ~ 22:00', '경기도 수원시 장안구 정자동 111-14', '1833-9001', '1층에 당신의 손에 쥐어질 작은 프랑스 달콤한 디저트가 아닌 든든한 한 끼 식사, 주르데크레프에서 경험해보세요.', '2024-03-20 15:19:04', 0, 4, 0, 0, '<p><img alt="" src="/mid/file/download/image/바비큐 크레페.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/야채 크레프.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/크페프 세트.jpg" style="height:300px; width:300px" /></p>'),
	(16, 'john', '동가네 식당', '한식', '주중 09:00 ~ 15:00', '경기 수원시 팔달구 중부대로 96-19 상가 102동 107호', '0507-1305-0624', '백반 메인 메뉴와 반찬이 매일 바뀌는 맛집', '2024-03-20 15:19:04', 0, 0, 0, 0, '<p><img alt="" src="/mid/file/download/image/반계탕.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/백반.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/부대찌개.jfif" style="height:300px; width:300px" /></p>'),
	(17, 'maria', '붉은입술', '양식', '일요일 제외 12:00 ~ 2', '경기도 수원시 영통구 영통동 1039-3', '0507-1436-8747', '영통역 근처에 위치한 분위기 좋은 심야 레스토랑', '2024-03-20 15:19:04', 0, 2, 0, 0, '<p><img alt="" src="/mid/file/download/image/바질 크림 파스타.jfif" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/베이컨 크림 파스타.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/제육 크림 파스타.jfif" style="height:300px; width:300px" /></p>'),
	(18, 'nick', '엘리펀트 캐슬', '양식', '화요일 제외 09:00 ~ 1', '경기도 수원시 영통구 영통동 1037-1', '010-3400-5308', '행궁이 보이는 수제 맥주집', '2024-03-20 15:19:04', 0, 1, 0, 0, '<p><img alt="" src="/mid/file/download/image/맥주.jpg" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/캔 맥주.png" style="height:300px; width:300px" /></p>\r\n<p><img alt="" src="/mid/file/download/image/커플 세트.jpg" style="height:300px; width:300px" /></p>');

-- 테이블 mid.likef 구조 내보내기
DROP TABLE IF EXISTS `likef`;
CREATE TABLE IF NOT EXISTS `likef` (
  `lid` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(12) NOT NULL,
  `fid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` int DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `fid` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mid.likef:~27 rows (대략적) 내보내기
DELETE FROM `likef`;
INSERT INTO `likef` (`lid`, `uid`, `fid`, `value`) VALUES
	(1, 'james', '1', 1),
	(2, 'sara', '7', 1),
	(3, 'emma', '3', 0),
	(4, 'eunice', '4', 1),
	(5, 'james', '5', 0),
	(6, 'john', '6', 0),
	(7, 'maria', '7', 0),
	(8, 'nick', '8', 0),
	(9, 'sarah', '9', 0),
	(10, 'tom', '10', 0),
	(11, 'sara', '1', 1),
	(12, 'sara', '2', 0),
	(13, 'eunice', '1', 1),
	(14, 'eunice', '2', 0),
	(15, 'eunice', '10', 1),
	(16, 'eunice', '3', 1),
	(17, 'eunice', '7', 1),
	(18, 'brian', '9', 1),
	(19, 'elice', '9', 1),
	(20, 'emma', '9', 1),
	(22, 'james', '9', 1),
	(23, 'maria', '9', 1),
	(24, 'john', '9', 1),
	(25, 'nick', '9', 1),
	(26, 'sarah', '9', 1),
	(27, 'tom', '9', 1),
	(28, 'eunice', '5', 0),
	(29, 'eunice', '9', 0);

-- 테이블 mid.menu 구조 내보내기
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `food` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `foodTitle` varchar(16) DEFAULT NULL,
  `fid` int DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `cid` (`fid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mid.menu:~10 rows (대략적) 내보내기
DELETE FROM `menu`;
INSERT INTO `menu` (`mid`, `food`, `price`, `foodTitle`, `fid`) VALUES
	(1, '초밥정식, 모듬초밥, 냉모밀', '14,000원, 12,000원, 9,000원', '나고야초밥', NULL),
	(2, '보리굴비정식, 참치 한 접시, 스페셜', '28,000원, 50,000원, 120,000원', '피지참치', NULL),
	(3, '참송이 크림 뇨끼, 스테이크 피자, 프리미엄 씨푸드 파스타', '27,900원, 33,900원, 27,900원', '마노디셰프', NULL),
	(4, '한우 생갈비, 한우 육회, 물냉면, 한우 갈비탕', '102,000원, 37,000원, 15,000원, 25,000원', '가보정', NULL),
	(5, '해장국, 수육, 수육무침', '11,000원, 35,000원, 35,000원', '유치회관', NULL),
	(6, '설렁탕, 우설수육, 수육', '12,000원, 30,000원, 50,000원', '골목집설렁탕', NULL),
	(7, '쉬림프 로제 파스타, 봉골레 파스타, 목살 필라프', '22,000원, 18,000원, 16,000원', '파스타팔리오', NULL),
	(8, '짜장면, 짬뽕, 새우볶음밥, 해물탕면', '8,000원, 9,000원, 10,000원, 9,000원', '팔선생', NULL),
	(9, '참다랑어/눈다랑어 뱃살 및 황새치, 참치초밥, 회덮밥', '40,000원, 23,000원, 15,000원', '삿뽀로', NULL),
	(10, '주말/공휴일, 평일 점심, 평일 저녁', '26,900원, 19,900원, 24,900원', '쿠우쿠우', NULL);

-- 테이블 mid.reply 구조 내보내기
DROP TABLE IF EXISTS `reply`;
CREATE TABLE IF NOT EXISTS `reply` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(256) NOT NULL,
  `regTime` datetime DEFAULT (now()),
  `uid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fid` int DEFAULT NULL,
  `isMine` int DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mid.reply:~10 rows (대략적) 내보내기
DELETE FROM `reply`;
INSERT INTO `reply` (`rid`, `comment`, `regTime`, `uid`, `fid`, `isMine`) VALUES
	(1, '열심히 먹느라 음식 사진 없음 평일 1시쯤 갔는데 손님이 없어서 전세낸 거 마냥 먹었습니다', '2024-03-18 10:15:37', 'brian', 1, 0),
	(2, '회 중 참치를 가장 좋아하는 참치 러버인데, 여기서 인생 참치회를 만났습니다..♥', '2024-03-18 10:15:37', 'elice', 2, 0),
	(3, '언제 먹어도 맛있는 파스타!! 한동안 못 간 사이 여러 메뉴가 생겼네요', '2024-03-18 10:15:37', 'emma', 3, 0),
	(4, '가격이 센 편이네요 갈비집이 성 같아요', '2024-03-18 10:15:37', 'eunice', 4, 0),
	(5, '가게서 먹으려면 일찍 가셈 지금 가면 사람 없겠지?라는 안일한 생각 노노~!! 주차 자리가 없엌ㅋㅋ', '2024-03-18 10:15:37', 'james', 5, 0),
	(6, '맛있어요!', '2024-03-18 16:24:13', 'sara', 2, 0),
	(7, '맛은 있는데 음식이 너무 늦게 나와요ㅡㅡ', '2024-03-18 10:15:37', 'maria', 7, 0),
	(8, '탕수육 고기보다 튀김옷이 두껍네요..', '2024-03-18 10:15:37', 'nick', 8, 0),
	(9, '모임 장소로 좋았어요.', '2024-03-18 10:15:37', 'sarah', 9, 0),
	(10, '매장이 많이 사라져서 아쉽습니다 앙쿠르트 스프는 여전히 존맛!', '2024-03-18 10:15:37', 'tom', 10, 0),
	(11, '지인들과 모임이 있어서 갔는데 음식맛이 너무 좋고 맛있어요 역시 35년 전통의 진한 맛이 느껴지네요 김치랑 깍두기도 맛있었어요', '2024-03-18 10:15:37', 'john', 6, 0),
	(12, '정말 맛있어서 매주 찾는 맛집!!!', '2024-03-18 16:55:33', 'sara', 5, 0),
	(13, '뇨끼를 먹으러 가고 싶어요 ㅜㅜ 진짜 맛있었어요 ㅠㅠ!!', '2024-03-21 12:13:40', 'eunice', 3, 0);

-- 테이블 mid.users 구조 내보내기
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` varchar(12) NOT NULL,
  `pwd` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `uname` varchar(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `regDate` date DEFAULT (curdate()),
  `isDeleted` int NOT NULL DEFAULT '0',
  `profile` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '""',
  `access` int DEFAULT '0',
  `sns` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `statusMessage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mid.users:~11 rows (대략적) 내보내기
DELETE FROM `users`;
INSERT INTO `users` (`uid`, `pwd`, `uname`, `email`, `regDate`, `isDeleted`, `profile`, `access`, `sns`, `link`, `statusMessage`) VALUES
	('brian', '$2a$10$3UKATBTz3eXExn1zqGwHzObBtWSY/pYMG4iYCEnQ3dFIe.Ie8Bz8m', 'brian', 'brian@gmail.com', '2024-03-15', 0, 'brian1710502839795.jpg', 0, NULL, NULL, NULL),
	('elice', '$2a$10$f45n9HjjEsCZbV2hd8vXO./Nxfwm70GQEG/.PuNkbRGF.rpDMQJyC', 'elice', 'elice@kakao.com', '2024-03-15', 0, 'elice1710503176948.jpg', 0, NULL, NULL, NULL),
	('emma', '$2a$10$MywKKf0kiVllGzsNgjc5VuA.M0CaWSVe2RDMM47kFYJFhk0wMIqMi', 'emma', 'emma@gmail.com', '2024-03-15', 0, 'emma1710502889509.jpg', 0, NULL, NULL, NULL),
	('eunice', '$2a$10$H1Kmoq8E35ViB5x6YiNupuY5q.aOjtJEFpiy.anvw1NuzdDHQ.PTi', 'eunice', 'eunice@naver.com', '2024-03-15', 0, 'eunice1710824356099.png', 0, '@lovely.insight', 'https://www.instagram.com/lovely.insight/', '즐거운 맛집기행!'),
	('james', '$2a$10$56CS959CKo4t2bq/TSMbW.fx/IfpT4Q3p7R2kb08vULRb9yeL2Bai', 'james', 'james@naver.com', '2024-03-15', 0, 'james1710502779672.jpg', 0, NULL, NULL, NULL),
	('john', '$2a$10$T7bRv4FusBpNVKY5Zo4SZ.qtrbYMZduYCoalJiYDLvnpwxTQfunLC', 'john', 'john@hanmail.net', '2024-03-15', 0, 'john1710503111955.jpg', 0, NULL, NULL, NULL),
	('maria', '$2a$10$R5HJEhhyLvEeG2uzS4Br1OsqXmEdEEKMos7PLQM3r33uT/PcWu87O', 'maria', 'maria@gmail.com', '2024-03-15', 0, 'maria1710502699058.jpg', 0, NULL, NULL, NULL),
	('nick', '$2a$10$3V6MskOI2q/WGklCz/exT.iJwl82/UevjLPx3qZZTyeoog1FnmjX.', 'nick', 'nick@kakao.com', '2024-03-15', 0, 'nick1710503230151.jpg', 0, NULL, NULL, NULL),
	('sara', '$2a$10$vPye5T5NRms8/MhUUgrSN..WfC7tzvejatUBCP2iaM.71h344hxRm', 'sara', 'sara@naver.com', '2024-03-15', 0, NULL, 0, NULL, NULL, NULL),
	('sarah', '$2a$10$ZDDBrvVx1nV6yI2BblyjbuNUmwBWIU5v19EG8IfVPm16hRTuSRt5q', 'sarah', 'sarah@naver.com', '2024-03-15', 0, 'sarah1710502865256.jpg', 0, NULL, NULL, NULL),
	('tom', '$2a$10$0laCEMAxiYmb9jRfGWXHyumrFmqdk9WDWVIhSaJdHzPz1OfR0A/Km', 'tom', 'tom@kakao.com', '2024-03-15', 0, 'tom1710503207226.jpg', 0, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
