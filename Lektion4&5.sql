USE kurs;

#S1
#CREATE TABLE Lokal;
#S3
#UPDATE kurs
#SET pris=5000
#WHERE kurskod="Log1";
#S4
-- SET SQL_SAFE_UPDATES=0;
-- UPDATE kurs
-- SET pris = (pris*1.1)
-- WHERE langd=4;
#S5
-- SELECT 
--     kursben, pris
-- FROM
--     kurs
-- WHERE
--     langd = 5;
#select * from kurs;
#S6
-- delete from deltag
-- where elev=(select eid from elev where elev.enamn = "Lars Holm");
#S7
-- SELECT 
--     k.kursben
-- FROM
--     kurs k
-- WHERE
--     k.kurskod IN (SELECT 
--             kf.kurs
--         FROM
--             ktillf kf
--         WHERE
--             kf.lokal = 'Orion');
-- SELECT 
--     k.kursben
-- FROM
--     (kurs k
--     JOIN ktillf kf ON k.kurskod = kf.kurs)
--         JOIN
--     lokal l ON kf.lokal = 'Orion'
-- GROUP BY k.kursben
#S8
-- SELECT 
--     e.enamn, e.etel
-- FROM
--     elev e
-- WHERE
--     e.eid IN (SELECT 
--             dt.elev
--         FROM
--             deltag dt
--         WHERE
--             dt.kurs in (SELECT 
--                     kf.kurs
--                 FROM
--                     ktillf kf
--                 WHERE
--                     kf.larare = (SELECT 
--                             l.lid
--                         FROM
--                             larare l
--                         WHERE
--                             l.lnamn = 'Sofia Wilsson')));
-- select e.enamn, e.etel
-- from (deltag dt join ktillf kf on dt.kurs = kf.kurs)
-- join larare l on kf.larare=
#S9
-- SELECT 
--     e.enamn, e.etel
-- FROM
--     elev e
-- WHERE
--     e.eid IN (SELECT 
--             dt.elev
--         FROM
--             deltag dt
--         WHERE
--             dt.kurs in (SELECT 
--                     kf.kurs
--                 FROM
--                     ktillf kf
--                 WHERE
--                     kf.larare in (SELECT 
--                             l.lid
--                         FROM
--                             larare l
--                         WHERE
--                             l.lnamn = 'Sofia Wilsson' or l.lnamn='Carl Nordin')));
#S10
-- SELECT 
--     e.enamn, e.etel
-- FROM
--     elev e
-- WHERE
--     e.eid IN (SELECT 
--             dt.elev
--         FROM
--             deltag dt,
--             deltag dt2
--         WHERE
--             dt.kurs IN (SELECT 
--                     kf.kurs
--                 FROM
--                     ktillf kf
--                 WHERE
--                     kf.larare IN (SELECT 
--                             l.lid
--                         FROM
--                             larare l
--                         WHERE
--                             l.lnamn = 'Sofia Wilsson'))
-- 			AND dt2.kurs IN (SELECT 
-- 				kf.kurs
-- 			FROM
-- 				ktillf kf
-- 			WHERE
-- 				kf.larare IN (SELECT 
-- 						l.lid
-- 					FROM
-- 						larare l
-- 					WHERE
-- 						l.lnamn = 'Carl Nordin'))
--                 AND dt.elev = dt2.elev);
--                 
--                 SELECT 
-- 				kf.kurs, kf.lokal, kf.larare, kf.sdat
-- 			FROM
-- 				ktillf kf
-- 			WHERE
-- 				kf.larare IN (SELECT 
-- 						l.lid
-- 					FROM
-- 						larare l
-- 					WHERE
-- 						l.lnamn = 'Carl Nordin')
#S11
-- SELECT 
--     l.lnamn
-- FROM
--     larare l
-- WHERE NOT EXISTS (SELECT 
--             *
--         FROM
--             lokal lok
--         WHERE
--             lok.maxant >= 20
--                 AND lok.namn NOT IN (SELECT 
--                     kf.lokal
--                 FROM
--                     ktillf kf
--                 WHERE
--                     kf.larare = l.lid));
#S12
-- SELECT 
--     l.lnamn
-- FROM
--     larare l
-- WHERE
--     l.lid IN (SELECT 
--             kf.larare
--         FROM
--             ktillf kf
--         WHERE
--             kf.lokal = 'Orion')
--         AND NOT l.lid IN (SELECT 
--             kf.larare
--         FROM
--             ktillf kf
--         WHERE
--             kf.lokal = 'Tellus');

#S13
-- select count(*)
-- from lokal
#S14
-- SELECT 
--     enamn, count(*) as kurstillfällen
-- FROM
--     elev,
--     deltag
-- WHERE
--     elev.eid = deltag.elev
-- GROUP BY enamn
#S15
-- SELECT 
--     enamn, COUNT(*) AS kurser
-- FROM
--     (SELECT 
--         enamn, COUNT(*) AS kurser
--     FROM
--         elev, deltag
--     WHERE
--         eid = deltag.elev
--     GROUP BY enamn , kurs) as x
-- GROUP BY enamn
#S16
-- select lnamn, count(*)
-- from ktillf, larare
-- where larare=lid
-- group by lnamn
#S17
-- SELECT 
--     namn, MAX(anv)
-- FROM
--     (SELECT 
--         namn, COUNT(*) AS anv
--     FROM
--         ktillf, lokal
--     WHERE
--         lokal = namn
--     GROUP BY namn) AS x;
-- SELECT 
--     namn, COUNT(*) AS anv
-- FROM
--     ktillf,
--     lokal
-- WHERE
--     lokal = namn
-- GROUP BY namn
-- ORDER BY anv DESC
-- LIMIT 1;
