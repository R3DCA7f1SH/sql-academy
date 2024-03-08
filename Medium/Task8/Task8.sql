SELECT town_to,TIMEDIFF(time_in,time_out) as flight_time
FROM Trip
Where town_from like 'Paris'