create table payment_provider(
	id varchar(36),
	code varchar (100) not null,
	name varchar (100) not null,
	primary key(id)

);


ALTER TABLE payment_provider
ADD CONSTRAINT payment_provider_unique_code UNIQUE (code);

create table invoice_type(
	id varchar(36),
	primary key(id)

);


create table invoice(
	id varchar(36),
	primary key(id)

);


create table virtual_account(
	id varchar(36),
	primary key(id)

);

create table payment(
	id varchar(36),
	primary key(id)

);