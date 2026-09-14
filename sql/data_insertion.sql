-- ========================================================
-- AIRLINE RESERVATION SYSTEM - DATA INSERTION
-- ========================================================

-- Insert into Airline
INSERT INTO airline (airline_id, airline_name, headquarters, contact_no) VALUES
(101, 'Air India', 'New Delhi', '1800123456'),
(102, 'IndiGo', 'Gurugram', '1800123457'),
(103, 'Vistara', 'New Delhi', '1800123458'),
(104, 'SpiceJet', 'Gurugram', '1800123459');

-- Insert into Pilot
INSERT INTO pilot (pilot_id, pilot_name, license_no, experience, phone) VALUES
(201, 'Prabhas', 'LIC001', 12, '9000000001'),
(202, 'Raj', 'LIC002', 8, '9000000002'),
(203, 'Vikram', 'LIC003', 10, '9000000003'),
(204, 'Anil', 'LIC004', 6, '9000000004'),
(205, 'Suresh', 'LIC005', 15, '9000000005');

-- Insert into Flight
INSERT INTO flight (flight_id, airline_id, pilot_id, source, destination, departure_time, arrival_time) VALUES
(301, 101, 201, 'Hyderabad', 'Delhi', '2026-09-10 06:30:00', '2026-09-10 08:45:00'),
(302, 101, 201, 'Delhi', 'Mumbai', '2026-09-10 10:00:00', '2026-09-10 12:15:00'),
(303, 102, 202, 'Hyderabad', 'Bangalore', '2026-09-10 09:00:00', '2026-09-10 10:15:00'),
(304, 102, 201, 'Mumbai', 'Hyderabad', '2026-09-10 13:00:00', '2026-09-10 14:45:00'),
(305, 103, 203, 'Delhi', 'Kolkata', '2026-09-10 15:00:00', '2026-09-10 17:15:00'),
(306, 103, 201, 'Bangalore', 'Delhi', '2026-09-11 08:00:00', '2026-09-11 10:45:00'),
(307, 104, 204, 'Hyderabad', 'Chennai', '2026-09-11 11:00:00', '2026-09-11 12:15:00'),
(308, 104, 205, 'Chennai', 'Mumbai', '2026-09-11 14:00:00', '2026-09-11 16:00:00'),
(309, 101, 202, 'Delhi', 'Hyderabad', '2026-09-11 18:00:00', '2026-09-11 20:15:00'),
(310, 102, 201, 'Hyderabad', 'Delhi', '2026-09-12 07:00:00', '2026-09-12 09:15:00');

-- Insert into Passenger
INSERT INTO passenger (passenger_id, name, gender, phone, email) VALUES
(401, 'Rahamtulla', 'Male', '9100000001', 'rahamtulla@gmail.com'),
(402, 'Charan', 'Male', '9100000002', 'charan@gmail.com'),
(403, 'Anand', 'Male', '9100000003', 'anand@gmail.com'),
(404, 'Rohitha', 'Female', '9100000004', 'rohitha@gmail.com'),
(405, 'Arjun', 'Male', '9100000005', 'arjun@gmail.com'),
(406, 'Sneha', 'Female', '9100000006', 'sneha@gmail.com'),
(407, 'Priya', 'Female', '9100000007', 'priya@gmail.com'),
(408, 'Kiran', 'Male', '9100000008', 'kiran@gmail.com'),
(409, 'Divya', 'Female', '9100000009', 'divya@gmail.com'),
(410, 'Sai', 'Male', '9100000010', 'sai@gmail.com');

-- Insert into Seat
INSERT INTO seat (seat_id, flight_id, seat_number, class_type, availability) VALUES
(501, 301, '1A', 'Business', 'Booked'),
(502, 301, '1B', 'Business', 'Available'),
(503, 301, '2A', 'Economy', 'Booked'),
(504, 302, '1A', 'Business', 'Available'),
(505, 302, '1B', 'Business', 'Booked'),
(506, 302, '2A', 'Economy', 'Available'),
(507, 303, '1A', 'Business', 'Booked'),
(508, 303, '1B', 'Business', 'Available'),
(509, 303, '2A', 'Economy', 'Booked'),
(510, 304, '1A', 'Business', 'Available'),
(511, 304, '2A', 'Economy', 'Booked'),
(512, 305, '1A', 'Business', 'Booked'),
(513, 305, '2A', 'Economy', 'Available'),
(514, 306, '1A', 'Business', 'Available'),
(515, 306, '2A', 'Economy', 'Available');

-- Insert into Booking
INSERT INTO booking (booking_id, passenger_id, flight_id, booking_date, ticket_price, booking_status) VALUES
(601, 401, 301, '2026-09-01', 8500.00, 'Confirmed'),
(602, 401, 302, '2026-09-02', 7200.00, 'Confirmed'),
(603, 401, 304, '2026-09-03', 6800.00, 'Confirmed'),
(604, 401, 306, '2026-09-04', 9100.00, 'Confirmed'),
(605, 401, 310, '2026-09-05', 8800.00, 'Confirmed'),
(606, 402, 301, '2026-09-01', 8500.00, 'Confirmed'),
(607, 402, 303, '2026-09-02', 6200.00, 'Confirmed'),
(608, 402, 305, '2026-09-03', 7900.00, 'Cancelled'),
(609, 402, 309, '2026-09-04', 7300.00, 'Confirmed'),
(610, 403, 303, '2026-09-02', 6200.00, 'Confirmed'),
(611, 404, 307, '2026-09-03', 5500.00, 'Confirmed'),
(612, 405, 308, '2026-09-03', 6700.00, 'Confirmed'),
(613, 406, 309, '2026-09-04', 7300.00, 'Cancelled'),
(614, 407, 305, '2026-09-04', 7900.00, 'Cancelled'),
(615, 408, 307, '2026-09-05', 5500.00, 'Confirmed'),
(616, 409, 306, '2026-09-05', 9100.00, 'Confirmed');

-- Insert into Payment
INSERT INTO payment (payment_id, booking_id, payment_mode, payment_status, payment_date) VALUES
(701, 601, 'Online', 'Paid', '2026-09-01'),
(702, 602, 'Credit Card', 'Failed', '2026-09-02'),
(703, 603, 'Online', 'Paid', '2026-09-03'),
(704, 604, 'UPI', 'Paid', '2026-09-04'),
(705, 605, 'Online', 'Paid', '2026-09-05'),
(706, 606, 'Debit Card', 'Paid', '2026-09-01'),
(707, 607, 'Online', 'Paid', '2026-09-02'),
(708, 608, 'UPI', 'Refunded', '2026-09-03'),
(709, 609, 'Credit Card', 'Paid', '2026-09-04'),
(710, 610, 'Online', 'Paid', '2026-09-02'),
(711, 611, 'UPI', 'Paid', '2026-09-03'),
(712, 612, 'Online', 'Paid', '2026-09-03'),
(713, 613, 'Credit Card', 'Refunded', '2026-09-04'),
(714, 614, 'Online', 'Refunded', '2026-09-04'),
(715, 615, 'UPI', 'Paid', '2026-09-05'),
(716, 616, 'Online', 'Paid', '2026-09-05');

-- Insert into Baggage
INSERT INTO baggage (baggage_id, booking_id, weight, baggage_fee) VALUES
(801, 601, 18.00, 1000.00),
(802, 602, 25.00, 2500.00),
(803, 603, 12.00, 800.00),
(804, 604, 22.00, 2200.00),
(805, 605, 15.00, 900.00),
(806, 606, 20.00, 1200.00),
(807, 607, 28.00, 2800.00),
(808, 608, 14.00, 900.00),
(809, 609, 23.00, 2300.00),
(810, 610, 16.00, 1000.00),
(811, 611, 10.00, 700.00),
(812, 612, 24.00, 2400.00),
(813, 613, 13.00, 800.00),
(814, 614, 30.00, 3000.00),
(815, 615, 11.00, 700.00),
(816, 616, 26.00, 2600.00);