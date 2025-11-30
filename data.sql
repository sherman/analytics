create table Emitents(
    id integer not null,
    ticker  varchar(16) not null unique,
    title  varchar(256)  not null,
    primary key(id)
);

insert into Emitents (id, ticker, title) values(1, 'ALRS', 'Alrosa');
insert into Emitents (id, ticker, title) values(2, 'GAZP', 'Gazprom');
insert into Emitents (id, ticker, title) values(3, 'GMKN', 'GMK Norilskiy nikel');
insert into Emitents (id, ticker, title) values(4, 'PAM', 'Pampa Eneriga');

create table Metrics(
    id integer  not null,
    name varchar(1024) not null unique,
    primary key(id)
);

insert into Metrics(id, name) values (1, 'Revenue');
insert into Metrics(id, name) values (2, 'Net profit');
insert into Metrics(id, name) values (3, 'Dimond mining');
insert into Metrics(id, name) values (4, 'Dimond sales');
insert into Metrics(id, name) values (5, 'Nk production');
insert into Metrics(id, name) values (6, 'Cu production');
insert into Metrics(id, name) values (7, 'Pd production');
insert into Metrics(id, name) values (8, 'Pt production');
insert into Metrics(id, name) values (9, 'Energy total');

create table TimeMetrics(
    emitent_id integer not null references Emitents(id),
    metrics_id integer not null references Metrics(id),
    value float not null,
    dt date not null,
    constraint tm_unique_idx unique (emitent_id, metrics_id, dt)
);


insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 6927, '2009-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 10616, '2009-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 32298, '2009-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 28108, '2009-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 31082, '2010-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 33310, '2010-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 25941, '2010-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 23061, '2010-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 29600, '2011-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 36547, '2011-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 41168, '2011-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 30417, '2011-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 37200, '2012-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 39329, '2012-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 27791, '2012-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 46560, '2012-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 39604, '2013-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 42770, '2013-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 39149, '2013-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 46982, '2013-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 56291, '2014-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 47939, '2014-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 42118, '2014-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 60811, '2014-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 74580, '2015-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 57320, '2015-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 40628, '2015-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 52000, '2015-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 102300, '2016-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 84400, '2016-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 68900, '2016-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 61500, '2016-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 84800, '2017-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 70737, '2017-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 58927, '2017-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 60936, '2017-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 95969, '2018-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 72200, '2018-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 70100, '2018-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 61000, '2018-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 70500, '2019-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 57400, '2019-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 1, 45700, '2019-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, -14277, '2009-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 6959, '2009-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 8996, '2009-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 1785, '2009-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 8465, '2010-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, -2973, '2010-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 5974, '2010-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 322, '2010-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 11710, '2011-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 14556, '2011-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 9261, '2011-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, -8869, '2011-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 12691, '2012-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 3500, '2012-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 8623, '2012-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 8820, '2012-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 6258, '2013-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 8358, '2013-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 8320, '2013-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 8901, '2013-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 6059, '2014-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 17134, '2014-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, -10333, '2014-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, -29692, '2014-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 47000, '2015-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 25169, '2015-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, -15178, '2015-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 0, '2015-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 49900, '2016-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 40500, '2016-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 26500, '2016-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 16600, '2016-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 22700, '2017-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 25186, '2017-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 12950, '2017-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 17764, '2017-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 33181, '2018-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 25400, '2018-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 24200, '2018-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 7600, '2018-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 24100, '2019-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 13400, '2019-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 2, 13500, '2019-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.2, '2009-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.2, '2009-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 7.5, '2009-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 7.9, '2009-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.6, '2010-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.0, '2010-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.3, '2010-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.4, '2010-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 10.0, '2011-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.0, '2011-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 6.9, '2011-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.7, '2011-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.1, '2012-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.3, '2012-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.1, '2012-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.0, '2012-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 7.5, '2013-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.6, '2013-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.9, '2013-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.9, '2013-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 7.9, '2014-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.0, '2014-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.7, '2014-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 10.6, '2014-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.4, '2015-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.6, '2015-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 11.6, '2015-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.7, '2015-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.2, '2016-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.7, '2016-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 11.0, '2016-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.3, '2016-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.9, '2017-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 10.4, '2017-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 10.2, '2017-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 10.1, '2017-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 7.4, '2018-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.5, '2018-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 10.5, '2018-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 10.3, '2018-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 7.8, '2019-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 9.7, '2019-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 12.1, '2019-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 3, 8.8, '2019-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 10.3, '2013-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 8.8, '2013-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 8.0, '2013-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 10.8, '2013-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 12.7, '2014-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 8.4, '2014-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 7.6, '2014-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 10.8, '2014-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 9.0, '2015-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 9.0, '2015-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 4.9, '2015-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 7.1, '2015-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 12.1, '2016-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 9.6, '2016-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 8.3, '2016-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 10.0, '2016-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 14.1, '2017-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 10.2, '2017-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 7.5, '2017-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 9.4, '2017-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 13.4, '2018-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 9.0, '2018-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 6.7, '2018-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 9.0, '2018-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 10.6, '2019-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 8.3, '2019-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 6.4, '2019-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (1, 4, 8.2, '2019-12-01');
 

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 69357, '2009-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 71394, '2009-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 66701, '2009-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 75441, '2009-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 70849, '2010-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 74565, '2010-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 74942, '2010-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 76973, '2010-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 70978, '2011-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 64694, '2011-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 79808, '2011-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 79616, '2011-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 75824, '2012-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 69639, '2012-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 77414, '2012-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 77463, '2012-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 71571, '2013-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 67814, '2013-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 72422, '2013-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 73485, '2013-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 67818, '2014-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 60885, '2014-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 71146, '2014-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 74400, '2014-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 67437, '2015-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 63853, '2015-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 62463, '2015-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 72653, '2015-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 63631, '2016-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 57942, '2016-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 55782, '2016-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 58392, '2016-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 53487, '2017-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 49418, '2017-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 54175, '2017-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 60032, '2017-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 54063, '2018-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 49460, '2018-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 53270, '2018-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 61977, '2018-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 95714, '2009-03-01'); -- cu
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 590, '2009-03-01'); -- pd
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 141, '2009-03-01'); -- pt

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 99793, '2009-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 765, '2009-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 174, '2009-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 101612, '2009-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 704, '2009-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 173, '2009-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 105096, '2009-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 747, '2009-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 174, '2009-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 97095, '2010-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 695, '2010-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 162, '2010-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 102028, '2010-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 799, '2010-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 196, '2010-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 95925, '2010-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 719, '2010-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 173, '2010-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 93823, '2010-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 645, '2010-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 161, '2010-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 93979, '2011-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 681, '2011-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 170, '2011-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 90451, '2011-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 744, '2011-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 190, '2011-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 95075, '2011-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 681, '2011-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 172, '2011-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 98439, '2011-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 702, '2011-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 162, '2011-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 88456, '2012-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 645, '2012-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 165, '2012-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 89786, '2012-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 729, '2012-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 186, '2012-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 95520, '2012-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 702, '2012-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 175, '2012-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 90001, '2012-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 655, '2012-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 156, '2012-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 91026, '2013-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 587, '2013-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 140, '2013-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 94596, '2013-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 758, '2013-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 190, '2013-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 92438, '2013-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 703, '2013-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 174, '2013-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 93003, '2013-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 614, '2013-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 147, '2013-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 90374, '2014-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 610, '2014-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 149, '2014-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 93698, '2014-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 730, '2014-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 177, '2014-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 89213, '2014-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 769, '2014-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 184, '2014-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 94733, '2014-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 640, '2014-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 148, '2014-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 89532, '2015-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 633, '2015-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 164, '2015-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 92550, '2015-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 726, '2015-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 175, '2015-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 91908, '2015-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 712, '2015-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 173, '2015-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 95436, '2015-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 618, '2015-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 144, '2015-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 87253, '2016-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 642, '2016-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 171, '2016-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 90186, '2016-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 688, '2016-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 162, '2016-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 86568, '2016-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 650, '2016-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 157, '2016-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 96188, '2016-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 633, '2016-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 154, '2016-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 94238, '2017-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 553, '2017-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 130, '2017-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 100804, '2017-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 781, '2017-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 190, '2017-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 95955, '2017-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 693, '2017-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 173, '2017-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 110203, '2017-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 753, '2017-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 177, '2017-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 112290, '2018-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 583, '2018-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 138, '2018-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 117275, '2018-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 813, '2018-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 197, '2018-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 120339, '2018-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 702, '2018-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 178, '2018-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 123746, '2018-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 632, '2018-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 140, '2018-12-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 55915, '2019-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 126765, '2019-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 770, '2019-03-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 204, '2019-03-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 53767, '2019-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 124539, '2019-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 764, '2019-06-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 185, '2019-06-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 57266, '2019-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 120667, '2019-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 720, '2019-09-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 164, '2019-09-01');

insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 5, 61739, '2019-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 6, 127148, '2019-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 7, 669, '2019-12-01');
insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (3, 8, 149, '2019-12-01');

--insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (4, 9, 3853, '2016');
--insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (4, 9, 4354, '2017');
--insert into TimeMetrics (emitent_id, metrics_id, value, dt) values (4, 9, 4375, '2018');

