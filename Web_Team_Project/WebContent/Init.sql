use LOGDATA;

drop table account;
drop table tinfo;

CREATE TABLE account(
num int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
id char(10) NOT NULL UNIQUE,
password char(10) NOT NULL,
tel char(15),
name char(10),
birth_d date
);

CREATE TABLE tinfo(
num int(5) NOT NULL PRIMARY KEY,
name char(20),
description char(100),
location char(10)
);

insert into account(id,password,tel,name,birth_d) values("his","his","01012345678","황인승","1994-04-05");

insert into tinfo values(0,'해운대 광안리','친구들과 같이 국내에서 저렴한 비용으로 다양한 축제와 먹거리를 맛볼수있는 곳. 부산 해운대','국내');
insert into tinfo values(1,'캄보디아 코롱섬','국내에서 느끼기 힘든 분위기와 먹거리를 즐길수있는 캄보디아 코롱섬','해외');
insert into tinfo values(2,'제주도 협재','연인과 이국적인 분위기의 인생샷을 건질수있는 명소가 즐비한 제주도 협재','국내');
insert into tinfo values(3,'하와이','신혼여행지로도 유명한 하와이, 연인과의 잊지못할 추억을 남길수있는곳.','해외');
insert into tinfo values(4,'다낭','저렴한 물가로 다양한 액티비티를 체험할수있는 다낭','해외');
insert into tinfo values(5,'이탈리아 몰타','지중해의 보석이라 불리며, 유럽감성을 제대로 느낄수있는 이탈리아 몰타.','해외');
insert into tinfo values(6,'부산 송정','연인과 함께 다양한 수상레저를 즐길수있는 부산 송정','국내');
insert into tinfo values(7,'스페인 카나리아','해외에서 연인과 함께 특별한 추억을 남길 수 있는 곳','해외');
insert into tinfo values(8,'전주','맛있는 먹거리에 고즈넉한 분위기는 덤, 전주','국내');
insert into tinfo values(9,'베이징','중국본토의 다양한 먹거리를 즐길수있는 멀고도 가까운 대륙 북경.','해외');
insert into tinfo values(10,'대구','국내 식도락 여행의 대명사, 대구.','국내');
insert into tinfo values(11,'파리','어딜가나 포토존이 있는 유럽여행에서 절대 빠질수없는 명소, 파리.','해외');
insert into tinfo values(12,'경주','워터파크, 스카이월드 등등 다양한 액티비티가 있는 천년의 역사 경주.','국내');
insert into tinfo values(13,'라스베가스','24시간이 모자란 화려함의 끝판왕, 라스베가스.','해외');
insert into tinfo values(14,'서울','없는게 없는 도시, 서울.','국내');
insert into tinfo values(15,'밀라노','패션의 성지, 눈이 즐거운 관광의 중심지 밀라노','해외');
insert into tinfo values(16,'울진','삼림욕과 해수욕, 온천욕 등 모든 피로를 싹 가시게 해줄 힐링 장소가 있는 곳, 울진','국내');
insert into tinfo values(17,'제주도 우도','해질녘 산호사해변이 붉은 빛으로 반짝이는 풍경과 밤바다를 대낮처럼 밝힌 어선들의 어화를 감상할 수 있는 제주도 우도','국내');
insert into tinfo values(18,'남해 독일마을','푸른 빛 바다와 멋진 독일 마을을 한번에 즐길 수 있는곳, 남해','국내');
insert into tinfo values(19,'통영','전 세계 6 곳에서만 즐길 수 있다는 스카이라인 루지 를 즐길 수 있는 곳, 통영','국내');
insert into tinfo values(20,'속초 아바이 마을','아바이 순대, 오징어 순대 등 실향민들이 지켜온 소중한 먹거리들을 마음껏 즐길 수 있는 속초 아바이 마을','국내');
insert into tinfo values(21,'영덕','언제나 설레는 동해, 해안선 바로 옆 길을 따라 드라이브를 즐긴 후 먹는 영덕 대게, 이보다 황홀할 수는 없다','국내');
insert into tinfo values(22,'포항 호미곶','바로 앞바다에서 잡은 회, 겨울 최고의 별미 과메기 같은 먹거리와 멋진 일출 풍경까지, 다채로운 즐거움이 있는곳, 포항 호미곶','국내');
insert into tinfo values(23,'여수','해물삼합, 생선구이, 갓삼합 등 로컬 푸드와 싱싱한 해산물 요리가 즐비한 여수','국내');
insert into tinfo values(24,'군산','복성루의 해물짬뽕, 중동호떡집의 호떡, 이성당의 앙금빵 등 적은 돈으로도 풍족한 여행을 즐길 수 있는 군산','국내');
insert into tinfo values(25,'타이페이','뉴로미엔, 샤오롱빠오, 루로판 등 다채로운 음식들이 즐비한 타이페이','해외');
insert into tinfo values(26,'보성','향에 취하고 맛에 반하는 녹차와 한 번 맛보면 헤어나올 수 없다는 꼬막 등 먹거리가 풍성한 보성','국내');
insert into tinfo values(27,'장흥','장흥삼합에 다문화 음식, 청년웃장까지, 먹거리 천국이라 불리는 장흥','국내');
insert into tinfo values(28,'경주','빛 축제, 스카이월드, 경주 월드와 같은 놀거리가 가득한 경주','국내');
insert into tinfo values(29,'영월','봉래산 패러글라이딩, 삼탄아트마인, 동강사진박물관 등, 다양한 액티비티와 볼거리가 풍성한 곳. 영월','국내');
insert into tinfo values(30,'순천','순천만국가정원, 순천 선암사, 나무박물관 등 걷기만 해도 즐길거리가 풍성한 순천','국내');
insert into tinfo values(31,'제주도 플레이스 캠프','단순한 숙박에서 벗어나 쉼과 다양한 콘텐츠를 한곳에서 즐기는 신개념 호텔','국내');