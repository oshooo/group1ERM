create database Union_bank

use Union_bank

create table customer_details (
	customer_id bigint not null primary key,
	fullName varchar(100) not null,
	DOB date not null,
	gender varchar(10) not null,
	phoneNumber varchar(20) not null,
	houseAddress varchar(200) not null,
)


create table account_details (
	accountNumber bigint not null primary key,
	accountType varchar(50) not null,
	accountOwner_id bigint foreign key references customer_details(customer_id),
	accountManager varchar(100) not null,
	accountBalance money not null,
	branch varchar(200) not null,
)


create table transaction_details (
	transaction_id bigint not null,
	transactionType varchar(50) not null,
	transactionDate datetime not null,
	accountNumber bigint foreign key references account_details(accountNumber),
	transactionAmount money not null,
)


insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (59254, 'Milzie Daice', '1996/10/21', 'Female', '863-602-5724', '95 Fisk Court');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (50237, 'Goldy Witcomb', '1964/02/04', 'Female', '771-583-5290', '5 Gale Alley');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (52110, 'Dotty Coughan', '1994/06/19', 'Female', '197-593-5065', '71 Pleasure Pass');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (35500, 'Tedi Whyborn', '1988/12/29', 'Female', '819-657-3469', '56150 Waxwing Way');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (77598, 'Brittan Tremathick', '1980/07/11', 'Female', '176-655-6727', '5 Macpherson Plaza');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (91900, 'Ola Skamell', '2004/03/22', 'Female', '456-517-5372', '7536 Clove Hill');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (45879, 'Rhianna Pretley', '1971/11/26', 'Female', '809-327-0170', '54074 Twin Pines Street');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (59994, 'Martie McCuish', '1994/12/11', 'Female', '452-325-0872', '73071 Debra Plaza');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (19604, 'Dougy Bednell', '1970/10/12', 'Male', '466-494-4435', '3549 Lakewood Crossing');
insert into customer_details (customer_id, fullName, DOB, gender, phoneNumber, houseAddress) values (23083, 'Richmound Simonazzi', '1979/11/04', 'Male', '849-599-4080', '17 Lunder Court');


insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (658040955, 'Optional', 45879, 'Darnell Urpeth', 885542, '7 Lakewood Gardens Terrace');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (497608644, 'Progressive', 35500, 'Jordon Matlock', 904945, '4326 Hudson Way');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (529570136, 'Horizontal', 23083, 'Isabelita Millea', 347683, '26423 Swallow Place');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (420890700, 'Sharable', 19604, 'Kelsey Moreby', 40553, '79148 Boyd Junction');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (758770232, 'instruction set', 91900, 'Lynnet Tomkinson', 429761, '48772 Del Sol Center');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (987344780, 'responsive', 77598, 'Elsinore Lethieulier', 460646, '267 3rd Avenue');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (858560012, 'Total', 59994, 'Annetta Newis', 509604, '53334 Blaine Way');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (644823271, 'data-warehouse', 59254, 'Appolonia Linkin', 243288, '0 Hoepker Place');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (396418136, 'internet solution', 52110, 'Angelika Zum Felde', 832733, '986 Lyons Trail');
insert into account_details (accountNumber, accountType, accountOwner_id, accountManager, accountBalance, branch) values (796156278, 'User-friendly', 50237, 'Jess Cawse', 371446, '39820 Heath Street');


insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (9977218, 'Withdrawal', '2011/05/16', 644823271, 21773.88);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (4375915, 'Recharge', '2015/01/18', 796156278, 84993.46);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (2666718, 'Withdrawal', '2019/07/04', 858560012, 60578.12);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (5543945, 'Deposit', '2014/12/26', 987344780, 65974.88);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (8233753, 'Withdrawal', '2020/04/16', 658040955, 89809.09);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (8710303, 'Recharge', '2020/10/22', 758770232, 44801.93);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (1985336, 'Transfer', '2013/05/30', 420890700, 7122.4);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (2470739, 'Recharge', '2016/09/09', 658040955, 50017.42);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (2772807, 'Deposit', '2010/12/03', 987344780, 31774.84);
insert into transaction_details (transaction_id, transactionType, transactionDate, accountNumber, transactionAmount) values (1128201, 'Transfer', '2018/12/24', 529570136, 82247.42);
