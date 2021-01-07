use usal37_agence;

/**
AFFICHER le nom du client, son identifiant, son téléphone 
	+ les voyages associés (code du voyage, titre du voyage, et prix du voyage)
**/

select 
client_lastname, clients.client_id, client_phone, trips.trip_code, trip_title, trip_price
from clients
join orders on clients.client_id = orders.client_id
join trips on orders.trip_code = trips.trip_code;

/**
AFFICHER le nom du client, son identifiant, son téléphone 
	+ les voyages associés (code du voyage, titre du voyage, et prix du voyage)
    + le nom pays de destination du voyage
**/

select 
client_lastname, clients.client_id, client_phone, trips.trip_code, trip_title, trip_price, country_name
from clients
join orders on clients.client_id = orders.client_id
join trips on orders.trip_code = trips.trip_code
join cities on trips.city_code = cities.city_code
join countries on cities.country_code = countries.country_code;




