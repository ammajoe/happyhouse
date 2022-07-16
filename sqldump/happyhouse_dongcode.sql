-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: happyhouse
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dongcode`
--

DROP TABLE IF EXISTS `dongcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dongcode` (
  `dongCode` varchar(10) NOT NULL,
  `sidoName` varchar(30) DEFAULT NULL,
  `gugunName` varchar(30) DEFAULT NULL,
  `dongName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dongCode`),
  KEY `sidoName` (`sidoName`),
  CONSTRAINT `dongcode_ibfk_1` FOREIGN KEY (`sidoName`) REFERENCES `sidocode` (`sidoName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dongcode`
--

LOCK TABLES `dongcode` WRITE;
/*!40000 ALTER TABLE `dongcode` DISABLE KEYS */;
INSERT INTO `dongcode` VALUES ('1111010100','서울특별시','종로구','청운동'),('1111010200','서울특별시','종로구','신교동'),('1111010300','서울특별시','종로구','궁정동'),('1111010400','서울특별시','종로구','효자동'),('1111010500','서울특별시','종로구','창성동'),('1111010600','서울특별시','종로구','통의동'),('1111010700','서울특별시','종로구','적선동'),('1111010800','서울특별시','종로구','통인동'),('1111010900','서울특별시','종로구','누상동'),('1111011000','서울특별시','종로구','누하동'),('1111011100','서울특별시','종로구','옥인동'),('1111011200','서울특별시','종로구','체부동'),('1111011300','서울특별시','종로구','필운동'),('1111011400','서울특별시','종로구','내자동'),('1111011500','서울특별시','종로구','사직동'),('1111011600','서울특별시','종로구','도렴동'),('1111011700','서울특별시','종로구','당주동'),('1111011800','서울특별시','종로구','내수동'),('1111011900','서울특별시','종로구','세종로'),('1111012000','서울특별시','종로구','신문로1가'),('1111012100','서울특별시','종로구','신문로2가'),('1111012200','서울특별시','종로구','청진동'),('1111012300','서울특별시','종로구','서린동'),('1111012400','서울특별시','종로구','수송동'),('1111012500','서울특별시','종로구','중학동'),('1111012600','서울특별시','종로구','종로1가'),('1111012700','서울특별시','종로구','공평동'),('1111012800','서울특별시','종로구','관훈동'),('1111012900','서울특별시','종로구','견지동'),('1111013000','서울특별시','종로구','와룡동'),('1111013100','서울특별시','종로구','권농동'),('1111013200','서울특별시','종로구','운니동'),('1111013300','서울특별시','종로구','익선동'),('1111013400','서울특별시','종로구','경운동'),('1111013500','서울특별시','종로구','관철동'),('1111013600','서울특별시','종로구','인사동'),('1111013700','서울특별시','종로구','낙원동'),('1111013800','서울특별시','종로구','종로2가'),('1111013900','서울특별시','종로구','팔판동'),('1111014000','서울특별시','종로구','삼청동'),('1111014100','서울특별시','종로구','안국동'),('1111014200','서울특별시','종로구','소격동'),('1111014300','서울특별시','종로구','화동'),('1111014400','서울특별시','종로구','사간동'),('1111014500','서울특별시','종로구','송현동'),('1111014600','서울특별시','종로구','가회동'),('1111014700','서울특별시','종로구','재동'),('1111014800','서울특별시','종로구','계동'),('1111014900','서울특별시','종로구','원서동'),('1111015000','서울특별시','종로구','훈정동'),('1111015100','서울특별시','종로구','묘동'),('1111015200','서울특별시','종로구','봉익동'),('1111015300','서울특별시','종로구','돈의동'),('1111015400','서울특별시','종로구','장사동'),('1111015500','서울특별시','종로구','관수동'),('1111015600','서울특별시','종로구','종로3가'),('1111015700','서울특별시','종로구','인의동'),('1111015800','서울특별시','종로구','예지동'),('1111015900','서울특별시','종로구','원남동'),('1111016000','서울특별시','종로구','연지동'),('1111016100','서울특별시','종로구','종로4가'),('1111016200','서울특별시','종로구','효제동'),('1111016300','서울특별시','종로구','종로5가'),('1111016400','서울특별시','종로구','종로6가'),('1111016500','서울특별시','종로구','이화동'),('1111016600','서울특별시','종로구','연건동'),('1111016700','서울특별시','종로구','충신동'),('1111016800','서울특별시','종로구','동숭동'),('1111016900','서울특별시','종로구','혜화동'),('1111017000','서울특별시','종로구','명륜1가'),('1111017100','서울특별시','종로구','명륜2가'),('1111017200','서울특별시','종로구','명륜4가'),('1111017300','서울특별시','종로구','명륜3가'),('1111017400','서울특별시','종로구','창신동'),('1111017500','서울특별시','종로구','숭인동'),('1111017600','서울특별시','종로구','교남동'),('1111017700','서울특별시','종로구','평동'),('1111017800','서울특별시','종로구','송월동'),('1111017900','서울특별시','종로구','홍파동'),('1111018000','서울특별시','종로구','교북동'),('1111018100','서울특별시','종로구','행촌동'),('1111018200','서울특별시','종로구','구기동'),('1111018300','서울특별시','종로구','평창동'),('1111018400','서울특별시','종로구','부암동'),('1111018500','서울특별시','종로구','홍지동'),('1111018600','서울특별시','종로구','신영동'),('1111018700','서울특별시','종로구','무악동'),('1114010100','서울특별시','중구','무교동'),('1114010200','서울특별시','중구','다동'),('1114010300','서울특별시','중구','태평로1가'),('1114010400','서울특별시','중구','을지로1가'),('1114010500','서울특별시','중구','을지로2가'),('1114010600','서울특별시','중구','남대문로1가'),('1114010700','서울특별시','중구','삼각동'),('1114010800','서울특별시','중구','수하동'),('1114010900','서울특별시','중구','장교동'),('1114011000','서울특별시','중구','수표동'),('1114011100','서울특별시','중구','소공동'),('1114011200','서울특별시','중구','남창동'),('1114011300','서울특별시','중구','북창동'),('1114011400','서울특별시','중구','태평로2가'),('1114011500','서울특별시','중구','남대문로2가'),('1114011600','서울특별시','중구','남대문로3가'),('1114011700','서울특별시','중구','남대문로4가'),('1114011800','서울특별시','중구','남대문로5가'),('1114011900','서울특별시','중구','봉래동1가'),('1114012000','서울특별시','중구','봉래동2가'),('1114012100','서울특별시','중구','회현동1가'),('1114012200','서울특별시','중구','회현동2가'),('1114012300','서울특별시','중구','회현동3가'),('1114012400','서울특별시','중구','충무로1가'),('1114012500','서울특별시','중구','충무로2가'),('1114012600','서울특별시','중구','명동1가'),('1114012700','서울특별시','중구','명동2가'),('1114012800','서울특별시','중구','남산동1가'),('1114012900','서울특별시','중구','남산동2가'),('1114013000','서울특별시','중구','남산동3가'),('1114013100','서울특별시','중구','저동1가'),('1114013200','서울특별시','중구','충무로4가'),('1114013300','서울특별시','중구','충무로5가'),('1114013400','서울특별시','중구','인현동2가'),('1114013500','서울특별시','중구','예관동'),('1114013600','서울특별시','중구','묵정동'),('1114013700','서울특별시','중구','필동1가'),('1114013800','서울특별시','중구','필동2가'),('1114013900','서울특별시','중구','필동3가'),('1114014000','서울특별시','중구','남학동'),('1114014100','서울특별시','중구','주자동'),('1114014200','서울특별시','중구','예장동'),('1114014300','서울특별시','중구','장충동1가'),('1114014400','서울특별시','중구','장충동2가'),('1114014500','서울특별시','중구','광희동1가'),('1114014600','서울특별시','중구','광희동2가'),('1114014700','서울특별시','중구','쌍림동'),('1114014800','서울특별시','중구','을지로6가'),('1114014900','서울특별시','중구','을지로7가'),('1114015000','서울특별시','중구','을지로4가'),('1114015100','서울특별시','중구','을지로5가'),('1114015200','서울특별시','중구','주교동'),('1114015300','서울특별시','중구','방산동'),('1114015400','서울특별시','중구','오장동'),('1114015500','서울특별시','중구','을지로3가'),('1114015600','서울특별시','중구','입정동'),('1114015700','서울특별시','중구','산림동'),('1114015800','서울특별시','중구','충무로3가'),('1114015900','서울특별시','중구','초동'),('1114016000','서울특별시','중구','인현동1가'),('1114016100','서울특별시','중구','저동2가'),('1114016200','서울특별시','중구','신당동'),('1114016300','서울특별시','중구','흥인동'),('1114016400','서울특별시','중구','무학동'),('1114016500','서울특별시','중구','황학동'),('1114016600','서울특별시','중구','서소문동'),('1114016700','서울특별시','중구','정동'),('1114016800','서울특별시','중구','순화동'),('1114016900','서울특별시','중구','의주로1가'),('1114017000','서울특별시','중구','충정로1가'),('1114017100','서울특별시','중구','중림동'),('1114017200','서울특별시','중구','의주로2가'),('1114017300','서울특별시','중구','만리동1가'),('1114017400','서울특별시','중구','만리동2가'),('1117010100','서울특별시','용산구','후암동'),('1117010200','서울특별시','용산구','용산동2가'),('1117010300','서울특별시','용산구','용산동4가'),('1117010400','서울특별시','용산구','갈월동'),('1117010500','서울특별시','용산구','남영동'),('1117010600','서울특별시','용산구','용산동1가'),('1117010700','서울특별시','용산구','동자동'),('1117010800','서울특별시','용산구','서계동'),('1117010900','서울특별시','용산구','청파동1가'),('1117011000','서울특별시','용산구','청파동2가'),('1117011100','서울특별시','용산구','청파동3가'),('1117011200','서울특별시','용산구','원효로1가'),('1117011300','서울특별시','용산구','원효로2가'),('1117011400','서울특별시','용산구','신창동'),('1117011500','서울특별시','용산구','산천동'),('1117011600','서울특별시','용산구','청암동'),('1117011700','서울특별시','용산구','원효로3가'),('1117011800','서울특별시','용산구','원효로4가'),('1117011900','서울특별시','용산구','효창동'),('1117012000','서울특별시','용산구','도원동'),('1117012100','서울특별시','용산구','용문동'),('1117012200','서울특별시','용산구','문배동'),('1117012300','서울특별시','용산구','신계동'),('1117012400','서울특별시','용산구','한강로1가'),('1117012500','서울특별시','용산구','한강로2가'),('1117012600','서울특별시','용산구','용산동3가'),('1117012700','서울특별시','용산구','용산동5가'),('1117012800','서울특별시','용산구','한강로3가'),('1117012900','서울특별시','용산구','이촌동'),('1117013000','서울특별시','용산구','이태원동'),('1117013100','서울특별시','용산구','한남동'),('1117013200','서울특별시','용산구','동빙고동'),('1117013300','서울특별시','용산구','서빙고동'),('1117013400','서울특별시','용산구','주성동'),('1117013500','서울특별시','용산구','용산동6가'),('1117013600','서울특별시','용산구','보광동'),('1120010100','서울특별시','성동구','상왕십리동'),('1120010200','서울특별시','성동구','하왕십리동'),('1120010300','서울특별시','성동구','홍익동'),('1120010400','서울특별시','성동구','도선동'),('1120010500','서울특별시','성동구','마장동'),('1120010600','서울특별시','성동구','사근동'),('1120010700','서울특별시','성동구','행당동'),('1120010800','서울특별시','성동구','응봉동'),('1120010900','서울특별시','성동구','금호동1가'),('1120011000','서울특별시','성동구','금호동2가'),('1120011100','서울특별시','성동구','금호동3가'),('1120011200','서울특별시','성동구','금호동4가'),('1120011300','서울특별시','성동구','옥수동'),('1120011400','서울특별시','성동구','성수동1가'),('1120011500','서울특별시','성동구','성수동2가'),('1120011800','서울특별시','성동구','송정동'),('1120012200','서울특별시','성동구','용답동'),('1121510100','서울특별시','광진구','중곡동'),('1121510200','서울특별시','광진구','능동'),('1121510300','서울특별시','광진구','구의동'),('1121510400','서울특별시','광진구','광장동'),('1121510500','서울특별시','광진구','자양동'),('1121510700','서울특별시','광진구','화양동'),('1121510900','서울특별시','광진구','군자동'),('1123010100','서울특별시','동대문구','신설동'),('1123010200','서울특별시','동대문구','용두동'),('1123010300','서울특별시','동대문구','제기동'),('1123010400','서울특별시','동대문구','전농동'),('1123010500','서울특별시','동대문구','답십리동'),('1123010600','서울특별시','동대문구','장안동'),('1123010700','서울특별시','동대문구','청량리동'),('1123010800','서울특별시','동대문구','회기동'),('1123010900','서울특별시','동대문구','휘경동'),('1123011000','서울특별시','동대문구','이문동'),('1126010100','서울특별시','중랑구','면목동'),('1126010200','서울특별시','중랑구','상봉동'),('1126010300','서울특별시','중랑구','중화동'),('1126010400','서울특별시','중랑구','묵동'),('1126010500','서울특별시','중랑구','망우동'),('1126010600','서울특별시','중랑구','신내동'),('1129010100','서울특별시','성북구','성북동'),('1129010200','서울특별시','성북구','성북동1가'),('1129010300','서울특별시','성북구','돈암동'),('1129010400','서울특별시','성북구','동소문동1가'),('1129010500','서울특별시','성북구','동소문동2가'),('1129010600','서울특별시','성북구','동소문동3가'),('1129010700','서울특별시','성북구','동소문동4가'),('1129010800','서울특별시','성북구','동소문동5가'),('1129010900','서울특별시','성북구','동소문동6가'),('1129011000','서울특별시','성북구','동소문동7가'),('1129011100','서울특별시','성북구','삼선동1가'),('1129011200','서울특별시','성북구','삼선동2가'),('1129011300','서울특별시','성북구','삼선동3가'),('1129011400','서울특별시','성북구','삼선동4가'),('1129011500','서울특별시','성북구','삼선동5가'),('1129011600','서울특별시','성북구','동선동1가'),('1129011700','서울특별시','성북구','동선동2가'),('1129011800','서울특별시','성북구','동선동3가'),('1129011900','서울특별시','성북구','동선동4가'),('1129012000','서울특별시','성북구','동선동5가'),('1129012100','서울특별시','성북구','안암동1가'),('1129012200','서울특별시','성북구','안암동2가'),('1129012300','서울특별시','성북구','안암동3가'),('1129012400','서울특별시','성북구','안암동4가'),('1129012500','서울특별시','성북구','안암동5가'),('1129012600','서울특별시','성북구','보문동4가'),('1129012700','서울특별시','성북구','보문동5가'),('1129012800','서울특별시','성북구','보문동6가'),('1129012900','서울특별시','성북구','보문동7가'),('1129013000','서울특별시','성북구','보문동1가'),('1129013100','서울특별시','성북구','보문동2가'),('1129013200','서울특별시','성북구','보문동3가'),('1129013300','서울특별시','성북구','정릉동'),('1129013400','서울특별시','성북구','길음동'),('1129013500','서울특별시','성북구','종암동'),('1129013600','서울특별시','성북구','하월곡동'),('1129013700','서울특별시','성북구','상월곡동'),('1129013800','서울특별시','성북구','장위동'),('1129013900','서울특별시','성북구','석관동'),('1130510100','서울특별시','강북구','미아동'),('1130510200','서울특별시','강북구','번동'),('1130510300','서울특별시','강북구','수유동'),('1130510400','서울특별시','강북구','우이동'),('1132010500','서울특별시','도봉구','쌍문동'),('1132010600','서울특별시','도봉구','방학동'),('1132010700','서울특별시','도봉구','창동'),('1132010800','서울특별시','도봉구','도봉동'),('1135010200','서울특별시','노원구','월계동'),('1135010300','서울특별시','노원구','공릉동'),('1135010400','서울특별시','노원구','하계동'),('1135010500','서울특별시','노원구','상계동'),('1135010600','서울특별시','노원구','중계동'),('1138010100','서울특별시','은평구','수색동'),('1138010200','서울특별시','은평구','녹번동'),('1138010300','서울특별시','은평구','불광동'),('1138010400','서울특별시','은평구','갈현동'),('1138010500','서울특별시','은평구','구산동'),('1138010600','서울특별시','은평구','대조동'),('1138010700','서울특별시','은평구','응암동'),('1138010800','서울특별시','은평구','역촌동'),('1138010900','서울특별시','은평구','신사동'),('1138011000','서울특별시','은평구','증산동'),('1138011400','서울특별시','은평구','진관동'),('1141010100','서울특별시','서대문구','충정로2가'),('1141010200','서울특별시','서대문구','충정로3가'),('1141010300','서울특별시','서대문구','합동'),('1141010400','서울특별시','서대문구','미근동'),('1141010500','서울특별시','서대문구','냉천동'),('1141010600','서울특별시','서대문구','천연동'),('1141010700','서울특별시','서대문구','옥천동'),('1141010800','서울특별시','서대문구','영천동'),('1141010900','서울특별시','서대문구','현저동'),('1141011000','서울특별시','서대문구','북아현동'),('1141011100','서울특별시','서대문구','홍제동'),('1141011200','서울특별시','서대문구','대현동'),('1141011300','서울특별시','서대문구','대신동'),('1141011400','서울특별시','서대문구','신촌동'),('1141011500','서울특별시','서대문구','봉원동'),('1141011600','서울특별시','서대문구','창천동'),('1141011700','서울특별시','서대문구','연희동'),('1141011800','서울특별시','서대문구','홍은동'),('1141011900','서울특별시','서대문구','북가좌동'),('1141012000','서울특별시','서대문구','남가좌동'),('1144010100','서울특별시','마포구','아현동'),('1144010200','서울특별시','마포구','공덕동'),('1144010300','서울특별시','마포구','신공덕동'),('1144010400','서울특별시','마포구','도화동'),('1144010500','서울특별시','마포구','용강동'),('1144010600','서울특별시','마포구','토정동'),('1144010700','서울특별시','마포구','마포동'),('1144010800','서울특별시','마포구','대흥동'),('1144010900','서울특별시','마포구','염리동'),('1144011000','서울특별시','마포구','노고산동'),('1144011100','서울특별시','마포구','신수동'),('1144011200','서울특별시','마포구','현석동'),('1144011300','서울특별시','마포구','구수동'),('1144011400','서울특별시','마포구','창전동'),('1144011500','서울특별시','마포구','상수동'),('1144011600','서울특별시','마포구','하중동'),('1144011700','서울특별시','마포구','신정동'),('1144011800','서울특별시','마포구','당인동'),('1144012000','서울특별시','마포구','서교동'),('1144012100','서울특별시','마포구','동교동'),('1144012200','서울특별시','마포구','합정동'),('1144012300','서울특별시','마포구','망원동'),('1144012400','서울특별시','마포구','연남동'),('1144012500','서울특별시','마포구','성산동'),('1144012600','서울특별시','마포구','중동'),('1144012700','서울특별시','마포구','상암동'),('1147010100','서울특별시','양천구','신정동'),('1147010200','서울특별시','양천구','목동'),('1147010300','서울특별시','양천구','신월동'),('1150010100','서울특별시','강서구','염창동'),('1150010200','서울특별시','강서구','등촌동'),('1150010300','서울특별시','강서구','화곡동'),('1150010400','서울특별시','강서구','가양동'),('1150010500','서울특별시','강서구','마곡동'),('1150010600','서울특별시','강서구','내발산동'),('1150010700','서울특별시','강서구','외발산동'),('1150010800','서울특별시','강서구','공항동'),('1150010900','서울특별시','강서구','방화동'),('1150011000','서울특별시','강서구','개화동'),('1150011100','서울특별시','강서구','과해동'),('1150011200','서울특별시','강서구','오곡동'),('1150011300','서울특별시','강서구','오쇠동'),('1153010100','서울특별시','구로구','신도림동'),('1153010200','서울특별시','구로구','구로동'),('1153010300','서울특별시','구로구','가리봉동'),('1153010600','서울특별시','구로구','고척동'),('1153010700','서울특별시','구로구','개봉동'),('1153010800','서울특별시','구로구','오류동'),('1153010900','서울특별시','구로구','궁동'),('1153011000','서울특별시','구로구','온수동'),('1153011100','서울특별시','구로구','천왕동'),('1153011200','서울특별시','구로구','항동'),('1154510100','서울특별시','금천구','가산동'),('1154510200','서울특별시','금천구','독산동'),('1154510300','서울특별시','금천구','시흥동'),('1156010100','서울특별시','영등포구','영등포동'),('1156010200','서울특별시','영등포구','영등포동1가'),('1156010300','서울특별시','영등포구','영등포동2가'),('1156010400','서울특별시','영등포구','영등포동3가'),('1156010500','서울특별시','영등포구','영등포동4가'),('1156010600','서울특별시','영등포구','영등포동5가'),('1156010700','서울특별시','영등포구','영등포동6가'),('1156010800','서울특별시','영등포구','영등포동7가'),('1156010900','서울특별시','영등포구','영등포동8가'),('1156011000','서울특별시','영등포구','여의도동'),('1156011100','서울특별시','영등포구','당산동1가'),('1156011200','서울특별시','영등포구','당산동2가'),('1156011300','서울특별시','영등포구','당산동3가'),('1156011400','서울특별시','영등포구','당산동4가'),('1156011500','서울특별시','영등포구','당산동5가'),('1156011600','서울특별시','영등포구','당산동6가'),('1156011700','서울특별시','영등포구','당산동'),('1156011800','서울특별시','영등포구','도림동'),('1156011900','서울특별시','영등포구','문래동1가'),('1156012000','서울특별시','영등포구','문래동2가'),('1156012100','서울특별시','영등포구','문래동3가'),('1156012200','서울특별시','영등포구','문래동4가'),('1156012300','서울특별시','영등포구','문래동5가'),('1156012400','서울특별시','영등포구','문래동6가'),('1156012500','서울특별시','영등포구','양평동1가'),('1156012600','서울특별시','영등포구','양평동2가'),('1156012700','서울특별시','영등포구','양평동3가'),('1156012800','서울특별시','영등포구','양평동4가'),('1156012900','서울특별시','영등포구','양평동5가'),('1156013000','서울특별시','영등포구','양평동6가'),('1156013100','서울특별시','영등포구','양화동'),('1156013200','서울특별시','영등포구','신길동'),('1156013300','서울특별시','영등포구','대림동'),('1156013400','서울특별시','영등포구','양평동'),('1159010100','서울특별시','동작구','노량진동'),('1159010200','서울특별시','동작구','상도동'),('1159010300','서울특별시','동작구','상도1동'),('1159010400','서울특별시','동작구','본동'),('1159010500','서울특별시','동작구','흑석동'),('1159010600','서울특별시','동작구','동작동'),('1159010700','서울특별시','동작구','사당동'),('1159010800','서울특별시','동작구','대방동'),('1159010900','서울특별시','동작구','신대방동'),('1162010100','서울특별시','관악구','봉천동'),('1162010200','서울특별시','관악구','신림동'),('1162010300','서울특별시','관악구','남현동'),('1165010100','서울특별시','서초구','방배동'),('1165010200','서울특별시','서초구','양재동'),('1165010300','서울특별시','서초구','우면동'),('1165010400','서울특별시','서초구','원지동'),('1165010600','서울특별시','서초구','잠원동'),('1165010700','서울특별시','서초구','반포동'),('1165010800','서울특별시','서초구','서초동'),('1165010900','서울특별시','서초구','내곡동'),('1165011000','서울특별시','서초구','염곡동'),('1165011100','서울특별시','서초구','신원동'),('1168010100','서울특별시','강남구','역삼동'),('1168010300','서울특별시','강남구','개포동'),('1168010400','서울특별시','강남구','청담동'),('1168010500','서울특별시','강남구','삼성동'),('1168010600','서울특별시','강남구','대치동'),('1168010700','서울특별시','강남구','신사동'),('1168010800','서울특별시','강남구','논현동'),('1168011000','서울특별시','강남구','압구정동'),('1168011100','서울특별시','강남구','세곡동'),('1168011200','서울특별시','강남구','자곡동'),('1168011300','서울특별시','강남구','율현동'),('1168011400','서울특별시','강남구','일원동'),('1168011500','서울특별시','강남구','수서동'),('1168011800','서울특별시','강남구','도곡동'),('1171010100','서울특별시','송파구','잠실동'),('1171010200','서울특별시','송파구','신천동'),('1171010300','서울특별시','송파구','풍납동'),('1171010400','서울특별시','송파구','송파동'),('1171010500','서울특별시','송파구','석촌동'),('1171010600','서울특별시','송파구','삼전동'),('1171010700','서울특별시','송파구','가락동'),('1171010800','서울특별시','송파구','문정동'),('1171010900','서울특별시','송파구','장지동'),('1171011100','서울특별시','송파구','방이동'),('1171011200','서울특별시','송파구','오금동'),('1171011300','서울특별시','송파구','거여동'),('1171011400','서울특별시','송파구','마천동'),('1174010100','서울특별시','강동구','명일동'),('1174010200','서울특별시','강동구','고덕동'),('1174010300','서울특별시','강동구','상일동'),('1174010500','서울특별시','강동구','길동'),('1174010600','서울특별시','강동구','둔촌동'),('1174010700','서울특별시','강동구','암사동'),('1174010800','서울특별시','강동구','성내동'),('1174010900','서울특별시','강동구','천호동'),('1174011000','서울특별시','강동구','강일동');
/*!40000 ALTER TABLE `dongcode` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23  9:31:26
