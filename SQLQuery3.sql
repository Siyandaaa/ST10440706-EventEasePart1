/*INSERT INTO Venue (VenueName, Location, Capacity, ImageUrl) 
VALUES ('Bosjes', 'Ceres',100, 'https://www.womanandhomemagazine.co.za/wp-content/uploads/2024/05/Bosjes.jpg'),
('Lichtenstein Castle', 'Hout Bay', 250, 'https://www.womanandhomemagazine.co.za/wp-content/uploads/2024/05/Lichtenstein-Castle.jpg'),
('La Roche Estate', 'Franschhoek', 120, 'https://www.womanandhomemagazine.co.za/wp-content/uploads/2024/05/La-Roche-Estate-Franschhoek.jpg');

INSERT INTO Event (EventName, EventDate, Description) 
VALUES ('Wedding', '2025-12-03T00:00:00', 'Wedding day of Mr Jones and Miss Abrahm'),
('Ballroom dance exhibition', '2025-02-19T00:00:00', 'An annual ballroom exhibitions to showcase young talents from all over the world in the art of ballroom dance'),
('Cocktail-Style', '2025-06-29T00:00:00', 'Networking event for people to mingle in an informal setting');*/

INSERT INTO Booking (BookingDate, VenueId, EventId) 
VALUES 
('2025-01-06T00:00:00', 
    (SELECT VenueId FROM Venue WHERE VenueName = 'Bosjes'), 
    (SELECT EventId FROM Event WHERE EventName = 'Wedding')),
('2025-01-01T00:00:00', 
    (SELECT VenueId FROM Venue WHERE VenueName = 'Lichtenstein Castle'), 
    (SELECT EventId FROM Event WHERE EventName = 'Ballroom dance exhibition')),
('2025-01-27T00:00:00', 
    (SELECT VenueId FROM Venue WHERE VenueName = 'La Roche Estate'), 
    (SELECT EventId FROM Event WHERE EventName = 'Cocktail-Style'));