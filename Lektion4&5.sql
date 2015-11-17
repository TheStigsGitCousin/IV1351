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
SELECT 
    e.enamn, e.etel
FROM
    elev e
WHERE
    e.eid IN (SELECT 
            dt.elev
        FROM
            deltag dt
        WHERE
            dt.kurs in (SELECT 
                    kf.kurs
                FROM
                    ktillf kf
                WHERE
                    kf.larare in (SELECT 
                            l.lid
                        FROM
                            larare l
                        WHERE
                            l.lnamn = 'Sofia Wilsson' or l.lnamn='Carl Nordin')));